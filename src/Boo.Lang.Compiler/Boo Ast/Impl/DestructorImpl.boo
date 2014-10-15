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
public partial class Destructor (Method):

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CloneNode() as Destructor:
		return Clone() cast Destructor
	
	/// <summary>
	/// <see cref="Node.CleanClone"/>
	/// </summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CleanClone() as Destructor:
		return super.CleanClone() as Destructor

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public NodeType as NodeType:
		get: return NodeType.Destructor

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Accept(visitor as IAstVisitor) as void:
		visitor.OnDestructor(self)

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Matches(node as Node) as bool:
		return false if (node is null) or (NodeType != node.NodeType)
		other = node as Destructor
		return NoMatch("Destructor._modifiers") unless _modifiers == other._modifiers
		return NoMatch("Destructor._name") unless _name == other._name
		return NoMatch("Destructor._attributes") unless Node.AllMatch(_attributes, other._attributes)
		return NoMatch("Destructor._parameters") unless Node.AllMatch(_parameters, other._parameters)
		return NoMatch("Destructor._genericParameters") unless Node.AllMatch(_genericParameters, other._genericParameters)
		return NoMatch("Destructor._returnType") unless Node.Matches(_returnType, other._returnType)
		return NoMatch("Destructor._returnTypeAttributes") unless Node.AllMatch(_returnTypeAttributes, other._returnTypeAttributes)
		return NoMatch("Destructor._body") unless Node.Matches(_body, other._body)
		return NoMatch("Destructor._locals") unless Node.AllMatch(_locals, other._locals)
		return NoMatch("Destructor._implementationFlags") unless _implementationFlags == other._implementationFlags
		return NoMatch("Destructor._explicitInfo") unless Node.Matches(_explicitInfo, other._explicitInfo)
		return true

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Replace(existing as Node, newNode as Node) as bool:
		return true if super.Replace(existing, newNode)
		if _attributes is not null:
			item3 = existing as Attribute
			if item3 is not null:
				newItem3 = newNode as Attribute
				return true if _attributes.Replace(item3, newItem3)
		if _parameters is not null:
			item4 = existing as ParameterDeclaration
			if item4 is not null:
				newItem4 = newNode as ParameterDeclaration
				return true if _parameters.Replace(item4, newItem4)
		if _genericParameters is not null:
			item5 = existing as GenericParameterDeclaration
			if item5 is not null:
				newItem5 = newNode as GenericParameterDeclaration
				return true if _genericParameters.Replace(item5, newItem5)
		if _returnType == existing:
			self.ReturnType = newNode as TypeReference
			return true;
		if _returnTypeAttributes is not null:
			item7 = existing as Attribute
			if item7 is not null:
				newItem7 = newNode as Attribute
				return true if _returnTypeAttributes.Replace(item7, newItem7)
		if _body == existing:
			self.Body = newNode as Block
			return true;
		if _locals is not null:
			item9 = existing as Local
			if item9 is not null:
				newItem9 = newNode as Local
				return true if _locals.Replace(item9, newItem9)
		if _explicitInfo == existing:
			self.ExplicitInfo = newNode as ExplicitMemberInfo
			return true;
		return false;

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Clone() as object:
		
		clone = Destructor()
		clone._lexicalInfo = _lexicalInfo
		clone._endSourceLocation = _endSourceLocation
		clone._documentation = _documentation
		clone._isSynthetic = _isSynthetic
		clone._entity = _entity
		if _annotations is not null: clone._annotations = _annotations.Clone() as Hashtable
		clone._modifiers = _modifiers
		clone._name = _name
		if _attributes is not null:
			clone._attributes = _attributes.Clone() as AttributeCollection
			clone._attributes.InitializeParent(clone)
		if _parameters is not null:
			clone._parameters = _parameters.Clone() as ParameterDeclarationCollection
			clone._parameters.InitializeParent(clone)
		if _genericParameters is not null:
			clone._genericParameters = _genericParameters.Clone() as GenericParameterDeclarationCollection
			clone._genericParameters.InitializeParent(clone)
		if _returnType is not null:
			clone._returnType = _returnType.Clone() as TypeReference
			clone._returnType.InitializeParent(clone)
		if _returnTypeAttributes is not null:
			clone._returnTypeAttributes = _returnTypeAttributes.Clone() as AttributeCollection
			clone._returnTypeAttributes.InitializeParent(clone)
		if _body is not null:
			clone._body = _body.Clone() as Block
			clone._body.InitializeParent(clone)
		if _locals is not null:
			clone._locals = _locals.Clone() as LocalCollection
			clone._locals.InitializeParent(clone)
		clone._implementationFlags = _implementationFlags
		if _explicitInfo is not null:
			clone._explicitInfo = _explicitInfo.Clone() as ExplicitMemberInfo
			clone._explicitInfo.InitializeParent(clone)
		return clone;


	

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override internal def ClearTypeSystemBindings() as void:
		_annotations = null;
		_entity = null;
		if _attributes is not null:
			_attributes.ClearTypeSystemBindings()
		if _parameters is not null:
			_parameters.ClearTypeSystemBindings()
		if _genericParameters is not null:
			_genericParameters.ClearTypeSystemBindings()
		if _returnType is not null:
			_returnType.ClearTypeSystemBindings()
		if _returnTypeAttributes is not null:
			_returnTypeAttributes.ClearTypeSystemBindings()
		if _body is not null:
			_body.ClearTypeSystemBindings()
		if _locals is not null:
			_locals.ClearTypeSystemBindings()
		if _explicitInfo is not null:
			_explicitInfo.ClearTypeSystemBindings()


