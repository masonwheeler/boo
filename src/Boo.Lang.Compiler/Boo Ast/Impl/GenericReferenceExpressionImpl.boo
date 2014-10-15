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
public partial class GenericReferenceExpression (Expression):
	protected _target as Expression

	protected _genericArguments as TypeReferenceCollection


	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CloneNode() as GenericReferenceExpression:
		return Clone() cast GenericReferenceExpression
	
	/// <summary>
	/// <see cref="Node.CleanClone"/>
	/// </summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CleanClone() as GenericReferenceExpression:
		return super.CleanClone() as GenericReferenceExpression

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public NodeType as NodeType:
		get: return NodeType.GenericReferenceExpression

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Accept(visitor as IAstVisitor) as void:
		visitor.OnGenericReferenceExpression(self)

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Matches(node as Node) as bool:
		return false if (node is null) or (NodeType != node.NodeType)
		other = node as GenericReferenceExpression
		return NoMatch("GenericReferenceExpression._target") unless Node.Matches(_target, other._target)
		return NoMatch("GenericReferenceExpression._genericArguments") unless Node.AllMatch(_genericArguments, other._genericArguments)
		return true

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Replace(existing as Node, newNode as Node) as bool:
		return true if super.Replace(existing, newNode)
		if _target == existing:
			self.Target = newNode as Expression
			return true;
		if _genericArguments is not null:
			item2 = existing as TypeReference
			if item2 is not null:
				newItem2 = newNode as TypeReference
				return true if _genericArguments.Replace(item2, newItem2)
		return false;

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Clone() as object:
		
		clone = GenericReferenceExpression()
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
		if _genericArguments is not null:
			clone._genericArguments = _genericArguments.Clone() as TypeReferenceCollection
			clone._genericArguments.InitializeParent(clone)
		return clone;


	

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override internal def ClearTypeSystemBindings() as void:
		_annotations = null;
		_entity = null;
		_expressionType = null;
		if _target is not null:
			_target.ClearTypeSystemBindings()
		if _genericArguments is not null:
			_genericArguments.ClearTypeSystemBindings()



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Target as Expression:
		
		get: return _target
		set:
			if _target != value:
				_target = value;
				if _target is not null:
					_target.InitializeParent(self);



	[System.Xml.Serialization.XmlArray]
	[System.Xml.Serialization.XmlArrayItem(typeof(TypeReference))]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public GenericArguments as TypeReferenceCollection:
		

		get:
			_genericArguments = TypeReferenceCollection(self) if _genericArguments is null
			return _genericArguments 
		set:
			if _genericArguments != value:
				_genericArguments = value;
				if _genericArguments is not null:
					_genericArguments.InitializeParent(self);


