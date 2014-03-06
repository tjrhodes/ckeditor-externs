package ckeditor;
import ckeditor.dom.Document;
import ckeditor.dom.Element;
import js.html.*;

/**
 * This is the API entry point. The entire CKEditor code runs under this object.
 */
@:native("CKEDITOR")
extern class CKEDITOR
{
	// CONFIG OPTIONS
	
	/**
	 * Avoid creating editor automatically on element which has attribute contenteditable set to the value true
	 * @example CKEDITOR.disableAutoInline = true;
	 * @default false
	 */
	static public var disableAutoInline:Bool;
	
	/**
	 * The class name used to identify <textarea> elements to be replace by CKEditor instances.
	 * Set it to empty/null to disable this feature.
	 * @example CKEDITOR.replaceClass = 'rich_editor';
	 * @default 'ckeditor'
	 */
	static public var replaceClass:String;
	
	/**
	 * The skin to load for all created instances, it may be the name of the skin folder
	 * inside the editor installation path, or the name and the path separated by a comma.
	 * Note: This is a global configuration that applies to all instances.
	 * @example CKEDITOR.skinName = 'moono';
				CKEDITOR.skinName = 'myskin,/customstuff/myskin/';
	 * @default 'moono'
	 */
	static public var skinName:String;
	
	// READ ONLY STATIC PROPERTIES
	
	/**
	 * ALT key (0x440000).
	 * @default 0x440000
	 */
	static public inline var ALT:Int = 0x440000;
	
	/**
	 * CTRL key (0x110000).
	 * @default 0x110000
	 */
	static public inline var CTRL:Int = 0x110000;
	
	/**
	 * Allow the dialog to be resized in both directions.
	 * @default 3
	 */
	static public inline var DIALOG_RESIZE_BOTH:Int = 3;
	
	/**
	 * Only allow vertical resizing for this dialog, disable horizontal resizing.
	 * @default 2
	 */
	static public inline var DIALOG_RESIZE_HEIGHT:Int = 2;
	
	/**
	 * No resize for this dialog.
	 * @default 0
	 */
	static public inline var DIALOG_RESIZE_NONE:Int = 0;
	
	/**
	 * Only allow horizontal resizing for this dialog, disable horizontal resizing.
	 * @default 1
	 */
	static public inline var DIALOG_RESIZE_WIDTH:Int = 1;
	
	/**
	 * The editor is to be created inside the element.
	 * @default 2
	 */
	static public inline var ELEMENT_MODE_APPENDTO:Int = 2;
	
	/**
	 * The editor is to be attached to the element, using it as the editing block.
	 * @default 3
	 */
	static public inline var ELEMENT_MODE_INLINE:Int = 3;
	
	/**
	 * The editor has no associated element.
	 * @default 0
	 */
	static public inline var ELEMENT_MODE_NONE:Int = 0;
	
	/**
	 * The element is to be replaced by the editor instance.
	 * @default 1
	 */
	static public inline var ELEMENT_MODE_REPLACE:Int = 1;
	
	/**
	 * @see CKEDITOR.dom.range.checkBoundaryOfElement.
	 * @default 2
	 */
	static public inline var END:Int = 2;
	
	/**
	 * Used in conjunction with CKEDITOR.config.enterMode and CKEDITOR.config.shiftEnterMode 
	 * onfiguration settings to make the editor produce <br> tags when using the Enter key.
	 * @see CKEDITOR.config.enterMode
	 * @see CKEDITOR.config.shiftEnterMode 
	 * @default 2
	 */
	static public inline var ENTER_BR:Int = 2;
	
	/**
	 * Used in conjunction with CKEDITOR.config.enterMode and CKEDITOR.config.shiftEnterMode
	 * configuration settings to make the editor produce <div> tags when using the Enter key.
	 * @see CKEDITOR.config.enterMode
	 * @see CKEDITOR.config.shiftEnterMode 
	 * @default 3
	 */
	static public inline var ENTER_DIV:Int = 3;
	
	/**
	 * Used in conjunction with CKEDITOR.config.enterMode and CKEDITOR.config.shiftEnterMode
	 * configuration settings to make the editor produce <p> tags when using the Enter key.
	 * @see CKEDITOR.config.enterMode
	 * @see CKEDITOR.config.shiftEnterMode 
	 * @default 1
	 */
	static public inline var ENTER_P:Int = 1;
	
	/**
	 * Event at target.
	 * @default 2
	 */
	static public inline var EVENT_PHASE_AT_TARGET:Int = 2;
	
	/**
	 * Bubbling phase.
	 * @default 3
	 */
	static public inline var EVENT_PHASE_BUBBLING:Int = 3;
	
	/**
	 * Capturing phase.
	 * @default 1
	 */
	static public inline var EVENT_PHASE_CAPTURING:Int = 1;
	
	/**
	 * Comment node type.
	 * @default 8
	 */
	static public inline var NODE_COMMENT:Int = 8;
	
	/**
	 * Document node type.
	 * @default 8
	 */
	static public inline var NODE_DOCUMENT:Int = 9;
	
	/**
	 * Document fragment node type.
	 * @default 11
	 */
	static public inline var NODE_DOCUMENT_FRAGMENT:Int = 11;
	
	/**
	 * Element node type.
	 * @default 1
	 */
	static public inline var NODE_ELEMENT:Int = 1;
	
	/**
	 * Text node type.
	 * @default 3
	 */
	static public inline var NODE_TEXT:Int = 3;
	
	/**
	 * Element selection.
	 * @example if ( editor.getSelection().getType() == CKEDITOR.SELECTION_ELEMENT ) alert( 'An element is selected' );
	 * @default 3
	 */
	static public inline var SELECTION_ELEMENT:Int = 3;
	
	/**
	 * No selection.
	 * @example if ( editor.getSelection().getType() == CKEDITOR.SELECTION_NONE ) alert( 'Nothing is selected' );
	 * @default 1
	 */
	static public inline var SELECTION_NONE:Int = 1;
	
	/**
	 * A text or a collapsed selection.
	 * @example if ( editor.getSelection().getType() == CKEDITOR.SELECTION_TEXT ) alert( 'A text is selected' );
	 * @default 2
	 */
	static public inline var SELECTION_TEXT:Int = 2;
	
	/**
	 * SHIFT key (0x220000).
	 * @default 0x220000
	 */
	static public inline var SHIFT:Int = 0x220000;
	
	/**
	 * @see CKEDITOR.dom.range.shrink
	 * @default 1
	 */
	static public inline var SHRINK_ELEMENT:Int = 1;
	
	/**
	 * @see CKEDITOR.dom.range.shrink
	 * @default 2
	 */
	static public inline var SHRINK_TEXT:Int = 2;
	
	/**
	 * @see CKEDITOR.dom.range.checkBoundaryOfElement.
	 * @default 2
	 */
	static public inline var START:Int = 2;
	
	/**
	 * Used to indicate DISABLED state.
	 * @default 0
	 */
	static public inline var TRISTATE_DISABLED:Int = 0;
	
	/**
	 * Used to indicate the OFF or NON ACTIVE state.
	 * @default 2
	 */
	static public inline var TRISTATE_OFF:Int = 2;
	
	/**
	 * Used to indicate the ON or ACTIVE state.
	 * @default 1
	 */
	static public inline var TRISTATE_ON:Int = 1;
	
	/**
	 * Button UI element.
	 * @default "button"
	 */
	static public inline var UI_BUTTON:String = "button";
	
	/**
	 * Button UI element.
	 * @default "menubutton"
	 */
	static public inline var UI_MENUBUTTON:String = "menubutton";
	
	/**
	 * Panel UI element.
	 * @default "panel"
	 */
	static public inline var UI_PANEL:String = "panel";
	
	/**
	 * Button UI element.
	 * @default "panelbutton"
	 */
	static public inline var UI_PANELBUTTON:String = "panelbutton";
	
	/**
	 * Button UI element.
	 * @default "richcombo"
	 */
	static public inline var UI_RICHCOMBO:String = "richcombo";
	
	/**
	 * Separator UI element.
	 * @default "separator"
	 */
	static public inline var UI_SEPARATOR:String = "separator";
	
	// PROPERTIES
	
	/**
	 * The full URL for the CKEditor installation directory.
	 * It is possible to manually provide the base path by setting a global variable named CKEDITOR_BASEPATH.
	 * This global variable must be set before the editor script loading.
	 * @example alert( CKEDITOR.basePath ); // e.g. 'http://www.example.com/ckeditor/'
	 */	
	static public var basePath:String;
	
	/**
	 * The editor which is currently active (have user focus).
	 * @example function showCurrentEditorName() {
	 * 				if ( CKEDITOR.currentInstance )
	 * 					alert( CKEDITOR.currentInstance.name );
	 * 				else
	 * 					alert( 'Please focus an editor first.' );
	 * 				}
	 */
	static public var currentInstance(default, null):Editor;
	
	/**
	 * The document of the window holding the CKEDITOR object.
	 * @example alert( CKEDITOR.document.getBody().getName() ); // 'body'
	 */
	static public var document(default, null):Document;
	
	/**
	 * Holds references to all editor instances created. The name of the properties in this object correspond to instance names,
	 * and their values contains the CKEDITOR.editor object representing them.
	 * @example alert( CKEDITOR.instances.editor1.name ); // 'editor1'
	 * @default {}
	 */
	static public var instances:Dynamic<Editor>;
	
	/**
	 * The time to wait (in seconds) to load the full editor code after the page load, if the "ckeditor_basic" file is used.
	 * If set to zero, the editor is loaded on demand, as soon as an instance is created.
	 * This value must be set on the page before the page load completion.
	 * @example // Loads the full source after five seconds. 
	 * 			CKEDITOR.loadFullCoreTimeout = 5;
	 * @default 0
	 */
	static public var loadFullCoreTimeout:Int;
	
	/**
	 * Contains the CKEditor revision number. The revision number is incremented automatically,
	 * following each modification to the CKEditor source code.
	 * @example alert( CKEDITOR.revision ); // e.g. '3975'
	 */
	static public var revision(default, null):String;
	
	/**
	 * A 3-digit random integer, valid for the entire life of the CKEDITOR object.
	 * @example alert( CKEDITOR.rnd ); // e.g. 319
	 */
	static public var rnd:Int;
	
	/**
	 * Indicates the API loading status. The following statuses are available:
	 * unloaded: the API is not yet loaded.
	 * basic_loaded: the basic API features are available.
	 * basic_ready: the basic API is ready to load the full core code.
	 * loaded: the API can be fully used.
	 * @example if ( CKEDITOR.status == 'loaded' ) {
	 * 				// The API can now be fully used.
	 * 				doSomething();
	 * 			} else {
	 * 				// Wait for the full core to be loaded and fire its loading.
	 * 				CKEDITOR.on( 'load', doSomething );
	 * 				CKEDITOR.loadFullCore && CKEDITOR.loadFullCore();
	 * 			}
	 * @default "unloaded"
	 */
	static public var status(default, null):String;
	
	/**
	 * A constant string unique for each release of CKEditor. Its value is used, by default,
	 * to build the URL for all resources loaded by the editor code, guaranteeing clean cache results when upgrading.
	 * @example alert( CKEDITOR.timestamp ); // e.g. '87dm'
	 * @default ''
	 */
	static public var timestamp(default, null):String;
	
	/**
	 * Contains the CKEditor version number.
	 * @example alert( CKEDITOR.version ); // e.g. 'CKEditor 3.4.1'
	 * 	 */
	static public var version(default, null):String;
	
	// METHODS
	
	/**
	 * Adds an editor instance to the global CKEDITOR object. This function is available for internal use mainly.
	 * @param	editor:Editor
	 */
	static public function add(editor:Editor):Void;
	
	/**
	 * Append a trunk of css to be appended to the editor document.
	 * This method is mostly used by plugins to add custom styles to the editor document.
	 * For basic contents styling the contents.css file should be used instead.
	 * Note: This function should be called before the creation of editor instances.
	 * @example // Add styles for all headings inside of editable contents.
	 * 			CKEDITOR.addCss( '.cke_editable h1,.cke_editable h2,.cke_editable h3 { border-bottom: 1px dotted red }' );
	 * @param	css:String
	 * 			The style rules to be appended.
	 */
	static public function addCss(css:String):Void;
	
	/**
	 * Add a named CKEDITOR.template instance to be reused among all editors,
	 * it will returns the existed one if template with same name is already defined,
	 * additionally fires the "template" event to allow template source customization.
	 * @param	name : String
	 * @param	source : String
	 * @return  Template (the created Template instance)
	 */
	static public function addTemplate(name:String, source:String):Template;
	
	/**
	 * Creates a new editor at the end of a specific DOM element.
	 * @example <div id="editorSpace"></div>
	 * 			...
	 * 			CKEDITOR.appendTo( 'editorSpace' );
	 * @param	element:Element
	 * @param	?config:Config
	 * @param	?data:String
	 * @return	Editor
	 */
	static public function appendTo(element:Element, ?config:Config, ?data:String):Editor;
	
	/**
	 * Specify a function to execute when the DOM is fully loaded.
	 * If called after the DOM has been initialized, the function passed in will be executed immediately.
	 */
	static public dynamic function domReady():Void;
	
	/**
	 * Function called upon loading a custom configuration file that can modify the editor instance configuration (CKEDITOR.editor.config).
	 * It is usually defined inside the custom configuration files that can include developer defined settings.
	 * @param	config:Config
	 * @example // This is supposed to be placed in the config.js file.
	 * 			CKEDITOR.editorConfig = function( config ) {
	 * 			// Define changes to default configuration here. For example:
	 * 			config.language = 'fr';
	 * 			config.uiColor = '#AADC6E';
	 * };
	 */
	static public dynamic function editorConfig(config:Config):Void;
	
	/**
	 * Returns a string will all CSS rules passed to the addCss method.
	 * @return String - containing css rules
	 * @see addCss
	 */
	static public function getCss():String;
	
	/**
	 * Retrieve a defined template created with addTemplate.
	 * @param	name
	 * @return	Template - the template with the name specified
	 * @see addTemplate
	 */
	static public function getTemplate(name:String):Template;
	
	/**
	 * Gets the full URL for CKEditor resources.
	 * By default, URLs returned by this function contain a querystring parameter ("t") set to the timestamp value.
	 * It is possible to provide a custom implementation of this function by setting a global variable named CKEDITOR_GETURL.
	 * This global variable must be set before the editor script loading.
	 * If the custom implementation returns nothing (==null), the default implementation is used.
	 * @param	resource : String
	 * @return	String - The full URL. 
	 * @example // e.g. 'http://www.example.com/ckeditor/skins/default/editor.css?t=87dm'
	 * 			alert( CKEDITOR.getUrl( 'skins/default/editor.css' ) );
	 * 			// e.g. 'http://www.example.com/skins/default/editor.css?t=87dm'
	 * 			alert( CKEDITOR.getUrl( '/skins/default/editor.css' ) );
	 * 			// e.g. 'http://www.somesite.com/skins/default/editor.css?t=87dm'
	 * 			alert( CKEDITOR.getUrl( 'http://www.somesite.com/skins/default/editor.css' ) );
	 */
	static public function getUrl(resource:String):String;
	
	/**
	 * Note: so that the externs compile this function has been renamed to "inlineEditor" from the original "inline".
	 * Turn a DOM element with contenteditable attribute set to true into a CKEditor instance,
	 * check CKEDITOR.dtd.$editable for the list of allowed element names.
	 * @param	element
	 * @param	?configOptions
	 * @return	Editor
	 * @example <div contenteditable="true" id="content"></textarea>
	 * 			...
	 * 			CKEDITOR.inline( 'content' );
	 */
	static public inline function inlineEditor(element:Element, ?configOptions:Config):Editor
	{
		// get the original inline method
		var method = untyped __js__("CKEDITOR.inline");
		// call the original method with the supplied arguments and return it's result.
		return Reflect.callMethod(CKEDITOR, method, [element, configOptions]);
	}
	
	/**
	 * Call inline with all page elements with contenteditable attribute set to true.
	 */
	static public function inlineAll():Void;
	
	/**
	 * Forces the full CKEditor core code, in the case only the basic code has been loaded (ckeditor_basic.js).
	 * This method self-destroys (becomes undefined) in the first call or as soon as the full code is available.
	 * @example	// Check if the full core code has been loaded and load it.
	 * 			if ( CKEDITOR.loadFullCore )
	 * 			CKEDITOR.loadFullCore();
	 */
	static public function loadFullCore():Void;
	
	/**
	 * Replaces a <textarea> or a DOM element (<div>) with a CKEditor instance.
	 * For textareas, the initial value in the editor will be the textarea value.
	 * For DOM elements, their innerHTML will be used instead.
	 * We recommend using <textarea> and <div> elements only.
	 * @param	element : String / Dynamic - The name or id of the eleemnt to replace (string) or the element itself
	 * @param	?config : Config
	 * @example	<textarea id="myfield" name="myfield"></textarea>
	 * 			...
	 * 			CKEDITOR.replace( 'myfield' );
	 * 			var textarea = document.body.appendChild( document.createElement( 'textarea' ) );
	 * 			CKEDITOR.replace( textarea );
	 */
	@:overload(function(element:Dynamic, ?config:Config):Editor{})
	static public function replace(element:String, ?config:Config):Editor;
	
	/**
	 * Replace all <textarea> elements available in the document with editor instances.
	 * @example // Replace all <textarea> elements in the page.
	 * 			CKEDITOR.replaceAll();
	 * @example // Replace all <textarea class="myClassName"> elements in the page.
	 * 			CKEDITOR.replaceAll( 'myClassName' );
	 * @example // Selectively replace <textarea> elements, based on custom assertions.
	 * 			CKEDITOR.replaceAll( function( textarea, config ) {
	 * 				// Custom code to evaluate the replace, returning false
	 * 				// if it must not be done.
	 * 				// It also passes the "config" parameter, so the
	 * 				// developer can customize the instance.
	 * 			} );
	 */
	@:overload(function(className:String):Void{})
	@:overload(function(customAssertions:TextAreaElement->Config->Bool):Void{})
	static public function replaceAll():Void;
	
	// EVENTS
	
	
}