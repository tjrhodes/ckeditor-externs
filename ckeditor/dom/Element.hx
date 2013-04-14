package ckeditor.dom;

/**
 * ...
 * @author Tom Rhodes
 */
@:native("CKEDITOR.dom.element")
extern class Element
{
	// PROPERTIES
	
	/**
	 * The native DOM object represented by this class instance.
	 * Maps to the original $ property in the JS API
	 * @example	var element = new CKEDITOR.dom.element( 'span' );
	 * 			alert( element.$.nodeType ); // '1'
	 */
	public var nativeDOMObject(getDOMObject, null):Dynamic;
	
	/**
	 * The node type. This is a constant value set to CKEDITOR.NODE_ELEMENT.
	 * @see CKEDITOR.NODE_ELEMENT
	 * @default CKEDITOR.NODE_ELEMENT
	 */
	public var type(default, null):Int;
	
	private inline function getDOMObject():Dynamic
	{
		return Reflect.getProperty(this, "$");
	}
	
	/**
	 * newCKEDITOR.dom.element( element, [ownerDocument] ) : CKEDITOR.dom.element
	 * Creates an element class instance.
	 * @param	element - Either a DOM Element or a string for the new element to create
	 * @return Element
	 */
	public function new(element:Dynamic):Void;
}