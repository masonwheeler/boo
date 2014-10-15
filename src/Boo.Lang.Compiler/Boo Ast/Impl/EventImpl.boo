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
public partial class Event (TypeMember):
	protected _add as Method

	protected _remove as Method

	protected _raise as Method

	protected _type as TypeReference


	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CloneNode() as Event:
		return Clone() cast Event
	
	/// <summary>
	/// <see cref="Node.CleanClone"/>
	/// </summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public def CleanClone() as Event:
		return super.CleanClone() as Event

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public NodeType as NodeType:
		get: return NodeType.Event

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Accept(visitor as IAstVisitor) as void:
		visitor.OnEvent(self)

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Matches(node as Node) as bool:
		return false if (node is null) or (NodeType != node.NodeType)
		other = node as Event
		return NoMatch("Event._modifiers") unless _modifiers == other._modifiers
		return NoMatch("Event._name") unless _name == other._name
		return NoMatch("Event._attributes") unless Node.AllMatch(_attributes, other._attributes)
		return NoMatch("Event._add") unless Node.Matches(_add, other._add)
		return NoMatch("Event._remove") unless Node.Matches(_remove, other._remove)
		return NoMatch("Event._raise") unless Node.Matches(_raise, other._raise)
		return NoMatch("Event._type") unless Node.Matches(_type, other._type)
		return true

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Replace(existing as Node, newNode as Node) as bool:
		return true if super.Replace(existing, newNode)
		if _attributes is not null:
			item3 = existing as Attribute
			if item3 is not null:
				newItem3 = newNode as Attribute
				return true if _attributes.Replace(item3, newItem3)
		if _add == existing:
			self.Add = newNode as Method
			return true;
		if _remove == existing:
			self.Remove = newNode as Method
			return true;
		if _raise == existing:
			self.Raise = newNode as Method
			return true;
		if _type == existing:
			self.Type = newNode as TypeReference
			return true;
		return false;

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override public def Clone() as object:
		
		clone = Event()
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
		if _add is not null:
			clone._add = _add.Clone() as Method
			clone._add.InitializeParent(clone)
		if _remove is not null:
			clone._remove = _remove.Clone() as Method
			clone._remove.InitializeParent(clone)
		if _raise is not null:
			clone._raise = _raise.Clone() as Method
			clone._raise.InitializeParent(clone)
		if _type is not null:
			clone._type = _type.Clone() as TypeReference
			clone._type.InitializeParent(clone)
		return clone;


	

	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	override internal def ClearTypeSystemBindings() as void:
		_annotations = null;
		_entity = null;
		if _attributes is not null:
			_attributes.ClearTypeSystemBindings()
		if _add is not null:
			_add.ClearTypeSystemBindings()
		if _remove is not null:
			_remove.ClearTypeSystemBindings()
		if _raise is not null:
			_raise.ClearTypeSystemBindings()
		if _type is not null:
			_type.ClearTypeSystemBindings()



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Add as Method:
		
		get: return _add
		set:
			if _add != value:
				_add = value;
				if _add is not null:
					_add.InitializeParent(self);



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Remove as Method:
		
		get: return _remove
		set:
			if _remove != value:
				_remove = value;
				if _remove is not null:
					_remove.InitializeParent(self);



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Raise as Method:
		
		get: return _raise
		set:
			if _raise != value:
				_raise = value;
				if _raise is not null:
					_raise.InitializeParent(self);



	[System.Xml.Serialization.XmlElement]
	[System.CodeDom.Compiler.GeneratedCodeAttribute("Boo astgen.boo", "1")]
	public Type as TypeReference:
		
		get: return _type
		set:
			if _type != value:
				_type = value;
				if _type is not null:
					_type.InitializeParent(self);


