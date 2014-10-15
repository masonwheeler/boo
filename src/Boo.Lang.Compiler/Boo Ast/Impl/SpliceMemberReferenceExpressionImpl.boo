#region license
// Copyright (c) 2009 Rodrigo B. de Oliveira (rbo@acm.org)
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

//
// DO NOT EDIT THIS FILE!
//
// This file was generated automatically by Boo astgen.boo.
//
namespace Boo.Lang.Compiler.Ast

import System.Collections
import System.Runtime.Serialization

[System.Serializable]
public partial class SpliceMemberReferenceExpression (Expression):
	protected _target as Expression

	protected _nameExpression as Expression


	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CloneNode() as SpliceMemberReferenceExpression:
		return Clone() cast SpliceMemberReferenceExpression
	
	/// <summary>
	/// <see cref="Node.CleanClone"/>
	/// </summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CleanClone() as SpliceMemberReferenceExpression:
		return super.CleanClone() as SpliceMemberReferenceExpression

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public NodeType as NodeType:
		get: return NodeType.SpliceMemberReferenceExpression

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Accept(visitor as IAstVisitor) as void:
		visitor.OnSpliceMemberReferenceExpression(self)

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Matches(node as Node) as bool:
		return false if (node is null) or (NodeType != node.NodeType)
		other = node as SpliceMemberReferenceExpression
		return NoMatch("SpliceMemberReferenceExpression._target") unless Node.Matches(_target, other._target)
		return NoMatch("SpliceMemberReferenceExpression._nameExpression") unless Node.Matches(_nameExpression, other._nameExpression)
		return true

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Replace(existing as Node, newNode as Node) as bool:
		return true if super.Replace(existing, newNode)
		if _target == existing:
			self.Target = newNode as Expression
			return true;
		if _nameExpression == existing:
			self.NameExpression = newNode as Expression
			return true;
		return false;

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Clone() as object:
		
		clone = SpliceMemberReferenceExpression()
		clone._lexicalInfo = _lexicalInfo
		clone._endSourceLocation = _endSourceLocation
		clone._documentation = _documentation
		clone._isSynthetic = _isSynthetic
		clone._entity = _entity
		if _annotations is not null: clone._annotations = _annotations.Clone() as Hashtable
		clone._expressionType = _expressionType
		if _target is not null:
			clone._target = _target.Clone() as Expression
			clone._target.InitializeParent(clone)
		if _nameExpression is not null:
			clone._nameExpression = _nameExpression.Clone() as Expression
			clone._nameExpression.InitializeParent(clone)
		return clone;


	

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override internal def ClearTypeSystemBindings() as void:
		_annotations = null;
		_entity = null;
		_expressionType = null;
		if _target is not null:
			_target.ClearTypeSystemBindings()
		if _nameExpression is not null:
			_nameExpression.ClearTypeSystemBindings()



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Target as Expression:
		
		get: return _target
		set:
			if _target != value:
				_target = value;
				if _target is not null:
					_target.InitializeParent(self);



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public NameExpression as Expression:
		
		get: return _nameExpression
		set:
			if _nameExpression != value:
				_nameExpression = value;
				if _nameExpression is not null:
					_nameExpression.InitializeParent(self);


