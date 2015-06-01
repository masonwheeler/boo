#region license
// Copyright (c) 2004, Rodrigo B. de Oliveira (rbo@acm.org)
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//     * Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//     * Neither the name of Rodrigo B. de Oliveira nor the names of its
//     contributors may be used to endorse or promote products derived from this
//     software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
// THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#endregion

using Boo.Lang.Compiler.TypeSystem.Builders;
using Boo.Lang.Compiler.TypeSystem.Internal;

namespace Boo.Lang.Compiler.Steps
{
	using System.Collections.Generic;
	using System.Linq;
	using Boo.Lang.Compiler.Ast;
	using Boo.Lang.Compiler.TypeSystem;
	
	public class ProcessClosures : AbstractTransformerCompilerStep
	{
		
		private Method _currentMethod;
		
		private Stack<Method> _closures = new Stack<Method>();
		
		override public void Run()
		{
			Visit(CompileUnit);
		}

		override public bool EnterMethod(Method node)
		{
			_currentMethod = node;
			return true;
		}
	
		override public bool EnterConstructor(Constructor node)
		{
			return EnterMethod(node);
		}
	
		override public bool EnterDestructor(Destructor node)
		{
			return EnterMethod(node);
		}
	
		override public bool EnterBlockExpression(BlockExpression node)
		{
			_closures.Push(((InternalMethod)node.Entity).Method);
			return true;
		}
	
		override public void LeaveBlockExpression(BlockExpression node)
		{
			_closures.Pop(); //can't use yourself for nested scope
			var closureEntity = GetEntity(node) as InternalMethod;
			if (closureEntity == null)
				return;

			var collector = new ForeignReferenceCollector();
			{
				collector.CurrentMethod = closureEntity.Method;
				collector.CurrentType = (IType)closureEntity.DeclaringType;
				closureEntity.Method.Body.Accept(collector);
				
				Local localNode = _closures.SelectMany(m => m.Locals).Where(l => l.Name == "$locals").FirstOrDefault();
				if (localNode == null)
					localNode = _currentMethod.Locals.FirstOrDefault(l => l.Name == "$locals");
				InternalLocal localClass;
				if (localNode == null)
					throw new CompilerError(node, "No local declared");
				else localClass = (InternalLocal) localNode.Entity;
				if (collector.ContainsForeignLocalReferences)
				{
					ClassDefinition closureClass = node.GetAncestor<ClassDefinition>();
					collector.AdjustReferences();
					
					ReplaceCurrentNode(
						CodeBuilder.CreateMemberReference(
							CodeBuilder.CreateReference(localClass),
							closureEntity));
				}
				else
				{
					Expression expression = CodeBuilder.CreateMemberReference(
						CodeBuilder.CreateReference(localClass),
						closureEntity);
					expression.LexicalInfo = node.LexicalInfo;
					TypeSystemServices.GetConcreteExpressionType(expression);
					ReplaceCurrentNode(expression);
				}
			}
			CheckStatic(closureEntity);
		}
		
		void CheckStatic(InternalMethod closure)
		{
			Method method = closure.Method;
			
			if (method.IsStatic)
			{
				// need to adjust paremeter indexes (parameter 0 is now self)
				foreach (ParameterDeclaration parameter in method.Parameters)
				{
					((InternalParameter)parameter.Entity).Index += 1;
				}
			}
			
			method.Modifiers = TypeMemberModifiers.Public;
		}
	}
}
