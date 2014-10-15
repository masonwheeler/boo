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
public partial class ClassDefinition (TypeDefinition):

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CloneNode() as ClassDefinition:
		return Clone() cast ClassDefinition
	
	/// <summary>
	/// <see cref="Node.CleanClone"/>
	/// </summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CleanClone() as ClassDefinition:
		return super.CleanClone() as ClassDefinition

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public NodeType as NodeType:
		get: return NodeType.ClassDefinition

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Accept(visitor as IAstVisitor) as void:
		visitor.OnClassDefinition(self)

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Matches(node as Node) as bool:
		return false if (node is null) or (NodeType != node.NodeType)
		other = node as ClassDefinition
		return NoMatch("ClassDefinition._modifiers") unless _modifiers == other._modifiers
		return NoMatch("ClassDefinition._name") unless _name == other._name
		return NoMatch("ClassDefinition._attributes") unless Node.AllMatch(_attributes, other._attributes)
		return NoMatch("ClassDefinition._members") unless Node.AllMatch(_members, other._members)
		return NoMatch("ClassDefinition._baseTypes") unless Node.AllMatch(_baseTypes, other._baseTypes)
		return NoMatch("ClassDefinition._genericParameters") unless Node.AllMatch(_genericParameters, other._genericParameters)
		return true

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Replace(existing as Node, newNode as Node) as bool:
		return true if super.Replace(existing, newNode)
		if _attributes is not null:
			item3 = existing as Attribute
			if item3 is not null:
				newItem3 = newNode as Attribute
				return true if _attributes.Replace(item3, newItem3)
		if _members is not null:
			item4 = existing as TypeMember
			if item4 is not null:
				newItem4 = newNode as TypeMember
				return true if _members.Replace(item4, newItem4)
		if _baseTypes is not null:
			item5 = existing as TypeReference
			if item5 is not null:
				newItem5 = newNode as TypeReference
				return true if _baseTypes.Replace(item5, newItem5)
		if _genericParameters is not null:
			item6 = existing as GenericParameterDeclaration
			if item6 is not null:
				newItem6 = newNode as GenericParameterDeclaration
				return true if _genericParameters.Replace(item6, newItem6)
		return false;

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Clone() as object:
		
		clone = ClassDefinition()
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
		if _members is not null:
			clone._members = _members.Clone() as TypeMemberCollection
			clone._members.InitializeParent(clone)
		if _baseTypes is not null:
			clone._baseTypes = _baseTypes.Clone() as TypeReferenceCollection
			clone._baseTypes.InitializeParent(clone)
		if _genericParameters is not null:
			clone._genericParameters = _genericParameters.Clone() as GenericParameterDeclarationCollection
			clone._genericParameters.InitializeParent(clone)
		return clone;


	

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override internal def ClearTypeSystemBindings() as void:
		_annotations = null;
		_entity = null;
		if _attributes is not null:
			_attributes.ClearTypeSystemBindings()
		if _members is not null:
			_members.ClearTypeSystemBindings()
		if _baseTypes is not null:
			_baseTypes.ClearTypeSystemBindings()
		if _genericParameters is not null:
			_genericParameters.ClearTypeSystemBindings()


