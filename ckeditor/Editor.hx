package ckeditor;
import ckeditor.dom.Element;
import ckeditor.dom.ElementPath;
import ckeditor.dom.Node;
import ckeditor.dom.Range;
import ckeditor.dom.Selection;

/**
 * ...
 * @author Tom Rhodes
 */
@:native("CKEDITOR.editor")
extern class Editor
{
	// EVENTS
	
	/**
	 * Fired after the command execution when execCommand is called.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param name:String - The command name.
	 * 			@param commandData:Dynamic - The data sent to the command.
	 * 			@param command:Command - The command itself.
	 * 			@param returnValue:Dynamic - The value returned by the command execution.
	 */
	static public inline var AFTERCOMMANDEXEC:String = "afterCommandExec";
	/**
	 * Event fired at the end of the setData call execution. Usually it is better to use the dataReady event.
	 * @param evt:EventInfo
	 * 		@param editor : Editor - This editor instance.
	 * 		@param data : Dynamic
	 * 			@param dataValue : String - The data that has been set.
	 */
	static public inline var AFTERSETDATA:String = "afterSetData";
	/**
	 * Fired after an undo image is taken. An undo image represents the editor state at some point. It's saved into an undo store,
	 * so the editor is able to recover the editor state on undo and redo operations.
	 * @since 3.5.2
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var AFTERUNDOIMAGE:String = "afterUndoImage";
	/**
	 * Fired when some elements are added to the document.
	 * @param evt:EventInfo
	 * 		@param editor : Editor - This editor instance.
	 * 		@param data : Element - The element being added.
	 */
	static public inline var ARIAWIDGET:String = "ariaWidget";
	/**
	 * Fired when the AutoGrow plugin is about to change the size of the editor.
	 * @param evt:EventInfo
	 * 		@param editor : Editor - This editor instance.
	 * 		@param data : Dynamic
	 * 			@param currentHeight : Int - The current height of the editor (before resizing).
	 * 			@param newHeight  : Int - The new height of the editor (after resizing).
	 * 			It can be changed to determine a different height value to be used instead.
	 */
	static public inline var AUTOGROW:String = "autogrow";
	/**
	 * Fired before the command execution when execCommand is called.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param name:String - The command name.
	 * 			@param commandData:Dynamic - The data sent to the command.
	 * 			@param command:Command - The command itself.
	 */
	static public inline var BEFORECOMMANDEXEC:String = "beforeCommandExec";
	/**
	 * Internal event to get the current data.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var BEFOREGETDATA:String = "beforeGetData";
	/**
	 * Event fired before changing the editing mode. See also beforeSetMode and mode.
	 * @param evt:EventInfo 
	 */
	static public inline var BEFOREMODEUNLOAD:String = "beforeModeUnload";
	/**
	 * Event fired before the editor mode is set. See also mode and beforeModeUnload.
	 * @since 3.5.3
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:String - The name of the mode which is abotu to be set
	 */
	static public inline var BEFORESETMODE:String = "beforeSetMode";
	/**
	 * Fired before an undo image is to be taken. An undo image represents the editor state at some point.
	 * It's saved into an undo store, so the editor is able to recover the editor state on undo and redo operations.
	 * @since 3.5.3
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var BEFOREUNDOIMAGE:String = "beforeUndoImage";
	/**
	 * Fired when the editor instance loses the input focus
	 * Note: This event will NOT be triggered when focus is moved internally,
	 * e.g. from the editable to other part of the editor UI like dialog.
	 * If you're interested on only the editable focus state listen to the CKEDITOR.editable.focus
	 * and CKEDITOR.editable.blur events instead.
	 * @example editor.on( 'blur', function( e ) {
	 * 				alert( 'The editor named ' + e.editor.name + ' lost the focus' );
	 * 			} );
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var BLUR:String = "blur";
	/**
	 * Fired once the editor configuration is ready (loaded and processed).
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance
	 */
	static public inline var CONFIGLOADED:String = "configLoaded";
	/**
	 * Fired when the language direction in the specific cursor position is changed
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:String - The direction in the current position.
	 */
	static public inline var CONTENTDIRCHANGED:String = "contentDirChanged";
	/**
	 * Fired when content of the editor (its DOM structure) is ready.
	 * It is similar to native DOMContentLoaded event, but it concerns editor's content.
	 * It is also a first event fired after CKEDITOR.editable is initialized.
	 * This event is particularly important for framed editor,
	 * because on editor initialization and every time data are set (by setData) contents DOM structure is rebuilt.
	 * Thus, e.g. you need to attach DOM events listeners on editable one more time.
	 * On inline editor this event is fired only once - when editor is initialized for the first time.
	 * That's because setting editor's content doesn't cause editable destruction and creation.
	 * contentDom goes along with contentDomUnload which is fired before contents DOM structure is destroyed.
	 * This is the right moment to detach content DOM events listener.
	 * Otherwise browsers like IE or Opera may throw exceptions when accessing elements from detached document.
	 * Note: CKEDITOR.editable.attachListener is a convenient way to attach listeners that will be detached on contentDomUnload.
	 * @example editor.on( 'contentDom', function() {
	 * 				var editable = editor.editable();
	 * 				editable.attachListener( editable, 'click', function() {
	 * 					console.log( 'Editable has been clicked' );
	 * 				});
	 * 			});
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var CONTENTDOM:String = "contentDom";
	/**
	 * Fired before contents DOM structure is destroyed. See contentDom documentation for more details.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var CONTENTDOMUNLOAD:String = "contentDomUnload";
	/**
	 * Fired when the custom configuration file is loaded, before the final configurations initialization.
	 * Custom configuration files can be loaded thorugh the CKEDITOR.config.customConfig setting.
	 * Several files can be loaded by changing this setting.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var CUSTOMCONFIGLOADED:String = "customConfigLoaded";
	/**
	 * This event is fired when CKEDITOR.filter has stripped some content from the data that was loaded
	 * (e.g. by setData method or in the source mode) or inserted (e.g. when pasting or using the insertHtml method).
	 * This event is useful when testing whether the CKEDITOR.config.allowedContent setting is sufficient and correct
	 * for a system that is migrating to CKEditor 4.1 (where the Advanced Content Filter was introduced).
	 * @since 4.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var DATAFILTERED:String = "dataFiltered";
	/**
	 * Fired as an indicator of the editor data loading. It may be the result of calling setData explicitly
	 * or an internal editor function, like the editor editing mode switching (move to Source and back).
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var DATAREADY:String = "dataReady";
	/**
	 * Fired when this editor instance is destroyed. The editor at this point is not usable and this event
	 * should be used to perform the clean-up in any plugin.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var DESTROY:String = "destroy";
	/**
	 * Fired when a dialog is hidden.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var DIALOGHIDE:String = "dialogHide";
	/**
	 * Fired when a dialog is shown.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var DIALOGSHOW:String = "dialogShow";
	/**
	 * Fired when the language direction of an element is changed.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param node : Node - The element that is being changed.
	 * 			@param dir : String - The new direction.
	 */
	static public inline var DIRCHANGED:String = "dirChanged";
	/**
	 * Fired when the contents of the elementsPath are changed.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param space : Element - The elementsPath container.
	 */
	static public inline var ELEMENTSPATHUPDATE:String = "elementsPathUpdate";
	/**
	 * Fired when the editor instance receives the input focus.
	 * @example	editor.on( 'focus', function( e ) {
	 * 				alert( 'The editor named ' + e.editor.name + ' is now focused' );
	 * 			} );
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var FOCUS:String = "focus";
	/**
	 * Event fired before the getData call returns allowing additional manipulation.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param dataValue : String - The data that will be returned.
	 */
	static public inline var GETDATA:String = "getData";
	/**
	 * Internal event to perform the getSnapshot call.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var GETSNAPSHOT:String = "getSnapshot";
	/**
	 * Internal event to perform the insertElement call.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Element - The element to insert.
	 */		
	static public inline var INSERTELEMENT:String = "insertElement";
	/**
	 * Internal event to perform the insertHtml call.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param mode : String - Mode in which data is inserted (see insertHtml).
	 * 			@param dataValue : String - The HTML to insert.
	 */
	static public inline var INSERTHTML:String = "insertHtml";
	/**
	 * Internal event to perform the insertText call.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:String - The text to insert.
	 */
	static public inline var INSERTTEXT:String = "insertText";
	/**
	 * Fired when the CKEDITOR instance is completely created, fully initialized and ready for interaction.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var INSTANCEREADY:String = "instanceReady";
	/**
	 * Fired when any keyboard key (or combination) is pressed into the editing area.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param keyCode : Int - A number representing the key code (or combination).
	 * 							It is the sum of the current key code and the CKEDITOR.CTRL, CKEDITOR.SHIFT
	 * 							and CKEDITOR.ALT constants, if those are pressed.
	 */
	static public inline var KEY:String = "key";
	/**
	 * Fired when the language is loaded into the editor instance.
	 * @since 3.6.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var LANGLOADED:String = "langLoaded";
	/**
	 * Internal event to perform the loadSnapshot call.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:String - The data that will be used.
	 */
	static public inline var LOADSNAPSHOT:String = "loadSnapshot";
	/**
	 * Fired when editor's components (config, languages and plugins) are fully loaded
	 * and initialized. However, the editor will be fully ready to for interaction on instanceReady.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var LOADED:String = "loaded";
	/**
	 * Lock manager to prevent any save/update operations.
	 * It's convenient to lock manager before doing DOM operations that shouldn't be recored (e.g. auto paragraphing).
	 * See CKEDITOR.plugins.undo.UndoManager.lock for more details.
	 * @since 4.0
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var LOCKSNAPSHOT:String = "lockSnapshot";
	/**
	 * Event fired when the maximize command is called. It also indicates whether an editor is maximized or not.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Int - Current state of the command. See CKEDITOR.TRISTATE_ON and CKEDITOR.TRISTATE_OFF.
	 * @see CKEDITOR.TRISTATE_ON
	 * @see CKEDITOR.TRISTATE_OFF
	 */
	static public inline var MAXIMIZE:String = "maximize";
	/**
	 * Fired when a menu is shown.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Panel
	 */
	static public inline var MENUSHOW:String = "menuShow";
	/**
	 * Fired after setting the editing mode. See also beforeSetMode and beforeModeUnload
	 * @param evt:EventInfo
	 */
	static public inline var MODE:String = "mode";
	/**
	 * Fired when a clipboard operation is about to be taken into the editor.
	 * Listeners can manipulate the data to be pasted before having it effectively inserted into the document.
	 * @since 3.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param type : String - Type of data in data.dataValue. Usually html or text, but for listeners with priority less than 6 it may be also auto,
	 * 						what means that content type hasn't been recognised yet (this will be done by content type sniffer that listens with priority 6).
	 * 			@param dataValue : String - HTML to be pasted.
	 */
	static public inline var PASTE:String = "paste";
	/**
	 * Fired when all plugins are loaded and initialized into the editor instance.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var PLUGINSLOADED:String = "pluginsLoaded";
	/**
	 * Event fired after the readOnly property changes.
	 * @since 3.6
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var READONLY:String = "readOnly";
	/**
	 * Fired after an element was cleaned by the removeFormat plugin.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param element : Element - The element that was cleaned up.
	 */
	static public inline var REMOVEFORMATCLEANUP:String = "removeFormatCleanup";
	/**
	 * Fired after the editor instance is resized through the resize method.
	 * @param evt:EventInfo
	 */
	static public inline var RESIZE:String = "resize";
	/**
	 * Fired when the editor is about to save an undo snapshot.
	 * This event can be fired by plugins and customizations to make the editor saving undo snapshots.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var SAVESNAPSHOT:String = "saveSnapshot";
	/**
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param selection : Selection
	 * 			@param path : ElementPath
	 */
	static public inline var SELECTIONCHANGE:String = "selectionChange";
	/**
	 * Event fired before the setData call is executed allowing additional manipulation.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param dataValue : String - The data that will be used.
	 */
	static public inline var SETDATA:String = "setData";
	/**
	 * Fired when styles set is loaded. During editor initialization phase the getStylesSet method
	 * returns only styles that are already loaded, which may not include e.g. styles parsed by
	 * stylesheetparser plugin. Thus, to be notified when all styles are ready you can listen on this event.
	 * @since 4.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param styles:Array<Dynamic> - Array of styles definitions.
	 */
	static public inline var STYLESSET:String = "stylesSet";
	/**
	 * Event fired when an UI template is added to the editor instance.
	 * It makes it possible to bring customizations to the template source.
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param name : String - The template name.
	 * 			@param source : String - The source data for this template.
	 */
	static public inline var TEMPLATE:String = "template";
	/**
	 * This event is fired when CKEDITOR.htmlDataProcessor is converting internal HTML to output data HTML.
	 * See toHtml event documentation for more details.
	 * @since 4.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param dataValue : Dynamic - Output data to be prepared.
	 */
	static public inline var TODATAFORMAT:String = "toDataFormat";
	/**
	 * This event is fired by the CKEDITOR.htmlDataProcessor when input HTML is to be purified by the CKEDITOR.htmlDataProcessor.toHtml method.
	 * By adding listeners with different priorities it is possible to process input HTML on different stages:
	 * 1-4: Data is available in the original string format.
	 * 5: Data is initially filtered with regexp patterns and parsed to CKEDITOR.htmlParser.fragment CKEDITOR.htmlParser.element.
	 * 5-9: Data is available in the parsed format, but CKEDITOR.htmlDataProcessor.dataFilter is not applied yet.
	 * 10: Data is filtered with CKEDITOR.htmlDataProcessor.dataFilter.
	 * 10-14: Data is available in the parsed format and CKEDITOR.htmlDataProcessor.dataFilter has already been applied.
	 * 15: Data is written back to an HTML string.
	 * 15-*: Data is available in an HTML string.
	 * @since 4.1
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 * 		@param data:Dynamic
	 * 			@param dataValue : Dynamic - Input data to be purified.
	 * 			@param context : String - @see CKEDITOR.htmlDataProcessor.toHtml The context argument
	 * 			@param fixForBody : Bool - @see CKEDITOR.htmlDataProcessor.toHtml The fixForBody argument.
	 * 			@param dontFilter : Bool - @see CKEDITOR.htmlDataProcessor.toHtml The dontFilter argument.
	 */
	static public inline var TOHTML:String = "toHtml";
	/**
	 * Unlock manager and update latest snapshot.
	 * @since 4.0
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var UNLOCKSNAPSHOT:String = "unlockSnapshot";
	/**
	 * Amend the top of undo stack (last undo image) with the current DOM changes.
	 * @example function() {
	 * 				editor.fire( 'saveSnapshot' );
	 * 				editor.document.body.append(...);
	 * 				// Make new changes following the last undo snapshot part of it.
	 * 				editor.fire( 'updateSnapshot' );
	 * 				..
	 * 			}
	 * @param evt:EventInfo
	 * 		@param editor:Editor - This editor instance.
	 */
	static public inline var UPDATESNAPSHOT:String = "updateSnapshot";
	
	
	
	// PROPERTIES
	
	/**
	 * Indicates that the editor is running into an environment where no block elements are accepted inside the content.
	 */
	public var blockless(default, null):Bool;
	
	/**
	 * The configurations for this editor instance. It inherits all settings defined in CKEDITOR.config,
	 * combined with settings loaded from custom configuration files and those defined inline in the page when creating the editor.
	 * @example var editor = CKEDITOR.instances.editor1;
	 * 			alert( editor.config.skin ); // e.g. 'moono'
	 */
	public var config:Config;
	
	/**
	 * The outer most element in the DOM tree in which the editable element resides,
	 * it's provided by the concrete editor creator after editor UI is created and is not subjected to be modified.
	 * @example var editor = CKEDITOR.instances.editor1;
	 * 			alert( editor.container.getName() ); // 'span'
	 */
	public var container(default, null):Element;
	
	/**
	 * If defined, points to the data processor which is responsible to translate and transform the editor data on input and output.
	 * Generaly it will point to an instance of CKEDITOR.htmlDataProcessor, which handles HTML data. The editor may also handle other
	 * data formats by using different data processors provided by specific plugins.
	 */
	public var dataProcessor(default, null):DataProcessor;
	
	/**
	 * The original host page element upon which the editor is created,
	 * it's only supposed to be provided by the concrete editor creator and is not subjected to be modified.
	 */
	public var element(default, null):Element;
	
	/**
	 * This property indicate the way how this instance is associated with the element.
	 */
	public var elementMode(default, null):Int;
	
	/**
	 * Filter instance used for input data filtering, data transformations, and activation of features.
	 * It points to a {CKEDITOR.filter} instance set up based on editor configuration.
	 * @since 4.1
	 */
	public var filter(default, null):Filter;
	
	/**
	 * Controls the focus state of this editor instance. This property is rarely used for normal API operations.
	 * It is mainly destinated to developer adding UI elements to the editor interface.
	 */
	public var focusManage:FocusManager;
	
	/**
	 * A unique random string assigned to each editor instance in the page.
	 */
	public var id(default, null):String;
	
	/**
	 * Controls keystrokes typing in this editor instance.
	 */
	public var keyStrokeHandler:KeyStrokeHandler;
	
	/**
	 * An object that contains all language strings used by the editor interface.
	 * @example alert( editor.lang.basicstyles.bold ); // e.g. 'Negrito' (if the language is set to Portuguese)
	 */
	public var lang(default, null):Dynamic;
	
	/**
	 * The code for the language resources that have been loaded for the user interface elements of this editor instance.
	 * @example alert( editor.langCode ); // e.g. 'en'
	 */
	public var langCode(default, null):String;
	
	/**
	 * The current editing mode. An editing mode basically provides different ways of editing or viewing the contents.
	 * @example alert( CKEDITOR.instances.editor1.mode ); // (e.g.) 'wysiwyg'
	 */
	public var mode(default, null):String;
	
	/**
	 * A unique identifier of this editor instance.
	 * Note: It will be originated from the ID or name attribute of the element,
	 * otherwise a name pattern of 'editor{n}' will be used.
	 */ 
	public var name(default, null):String;
	
	/**
	 * An object that contains references to all plugins used by this editor instance.
	 * @example alert( editor.plugins.dialog.path ); // e.g. 'http://example.com/ckeditor/plugins/dialog/'
	 * @example // Check if a plugin is available.
	 * 			if ( editor.plugins.image ) {
	 * 				...
	 * 			}
	 */
	public var plugins:Dynamic;
	
	/**
	 * Indicates the read-only state of this editor. This is a read-only property.
	 * @since 3.6
	 */
	public var readOnly(default, null):Bool;
	
	/**
	 * Indicates editor initialization status. The following statuses are available:
	 * unloaded: the initial state - editor's instance has been initialized,
	 * but its components (config, plugins, language files) are not loaded yet.
	 * loaded: editor's components have been loaded - @see loaded event
	 * ready: editor is fully initialized and ready - @see instanceReady event.
	 * destroyed: the editor has been destroyed - @see destroy method.
	 * @since 4.1
	 */
	public var status(default, null):String;
	
	/**
	 * The tabbing navigation order determined for this editor instance. This can be set by the CKEDITOR.config.tabIndex
	 * setting or taken from the tabindex attribute of the element associated with the editor.
	 * @see CKEDITOR.config.tabIndex
	 * @example alert( editor.tabIndex ); // e.g. 0
	 * @default 0
	 */
	public var tabIndex:Int;
	
	/**
	 * Contains all UI templates created for this editor instance.
	 * @default {}
	 */
	public var templates(default, null):Dynamic;
	
	/**
	 * Toolbar definition used by the editor. It is crated from the CKEDITOR.config.toolbar
	 * if it is set or automatically based on CKEDITOR.config.toolbarGroups.
	 * @see CKEDITOR.config.toolbar
	 * @see CKEDITOR.config.toolbarGroups
	 */
	public var toolbar(default, null):Dynamic;
	
	/**
	 * Namespace containing UI features related to this editor instance.
	 */
	public var ui(default, null):UI;
	
	// CONSTRUCTOR
	/**
	 * Creates an editor class instance.
	 * @param	?instanceConfig : Config
	 * @param	?element : Element
	 * @param	?mode : Int
	 */
	public function new(?instanceConfig:Config, ?element:Element, ?mode:Int):Void;
	
	/**
	 * Adds a command definition to the editor instance.
	 * Commands added with this function can be executed later with the execCommand method.
	 * @see 	execCommand
	 * @example editorInstance.addCommand( 'sample', {
	 * 				exec: function( editor ) {
	 * 					alert( 'Executing a command for the editor name "' + editor.name + '"!' );
	 * 				}
	 * 			} );
	 * @param	commandName : String - The indentifier name of the command.
	 * @param	commandDefinition : CommandDefinition - The command definition.
	 */
	public function addCommand(commandName:String, commandDefinition:CommandDefinition):Void;
	
	/**
	 * Shorthand for CKEDITOR.filter.addFeature.
	 * @see CKEDITOR.filter.addFeature
	 * @param	feature : Feature
	 * @return	Bool
	 */
	public function addFeature(feature:Feature):Bool;
	
	/**
	 * Registers an item group to the editor context menu in order to make it possible to associate it with menu items later.
	 * @param	name 	: String - Specify a group name.
	 * @param	?order 	: Int - Define the display sequence of this group inside the menu.
	 * 					A smaller value gets displayed first. Defaults to 100.
	 */
	public function addMenuGroup(name:String, ?order:Int):Void;
	
	/**
	 * Adds an item from the specified definition to the editor context menu.
	 * @param	name : String - The menu item name.
	 * @param	definition : Dynamic - The menu item definition.
	 */
	public function addMenuItem(name:String, definition:Dynamic):Void;
	
	/**
	 * Adds one or more items from the specified definition array to the editor context menu.
	 * @param	definitions : Array<Dynamic> - List of definitions for each menu item as if addMenuItem is called.
	 */
	public function addMenuItems(definitions:Array<Dynamic>):Void;
	
	/**
	 * Registers an editing mode. This function is to be used mainly by plugins.
	 * @param	mode : String - The mode name.
	 * @param	exec : Dynamic - Function that perform the actual mode change.
	 */
	public function addMode(mode:String, exec:Dynamic):Void;
	
	/**
	 * Add to a collection of functions to decide whether a specific element should be considered as formatting element
	 * and thus could be removed during removeFormat command.
	 * Note: Only available with the existence of removeformat plugin.
	 * @param	func : Element -> Bool
	 */
	public function addRemoveFormatFilter(func:Element->Bool):Void;
	
	/**
	 * Apply the style upon the editor's current selection.
	 * @param	style : Style
	 */
	public function applyStyle(style:Style):Void;
	
	/**
	 * Registers a function to be called whenever the selection position changes in the editing area.
	 * The current state is passed to the function. The possible states are CKEDITOR.TRISTATE_ON and CKEDITOR.TRISTATE_OFF.
	 * @example // Create a style object for the <b> element.
	 * 			var style = new CKEDITOR.style( { element: 'b' } );
	 * 			var editor = CKEDITOR.instances.editor1;
	 * 			editor.attachStyleStateChange( style, function( state ) {
	 * 				if ( state == CKEDITOR.TRISTATE_ON )
	 * 					alert( 'The current state for the B element is ON' );
	 * 				else
	 * 					alert( 'The current state for the B element is OFF' );
	 * 				} );
	 * @see CKEDITOR.TRISTATE_ON 
	 * @see CKEDITOR.TRISTATE_OFF
	 * @param	style : Style
	 * @param	callbackFn : Int-> Void
	 */
	public function attachStyleStateChange(style:Style, callbackFn:Int->Void):Void;
	
	/**
	 * Register event handler under the capturing stage on supported target.
	 */
	public function capture():Void;
	
	/**
	 * Checks whether the current editor contents present changes when compared to the contents loaded into the editor
	 * at startup, or to the contents available in the editor when resetDirty was called.
	 * @return Bool
	 */
	public function checkDirty():Bool;
	
	/**
	 * 
	 * @param	realElement
	 * @param	className
	 * @param	realElementType
	 * @param	isResizable
	 * @return
	 */
	public function createFakeElement( realElement:Dynamic, className:Dynamic, realElementType:Dynamic, isResizable:Dynamic ):Dynamic;
	
	/**
	 * 
	 * @param	realElement
	 * @param	className
	 * @param	realElementType
	 * @param	isResizable
	 * @return
	 */
	public function createFakeParserElement( realElement:Dynamic, className:Dynamic, realElementType:Dynamic, isResizable:Dynamic ):Dynamic;
	
	/**
	 * Shortcut to create a CKEDITOR.dom.range instance from the editable element.
	 * @return Range
	 * @see CKEDITOR.dom.Range 
	 */
	public function createRange():Range;
	
	/**
	 * Predefine some intrinsic properties on a specific event name.
	 * 
	 * @param	name : String
	 * 			The event name
	 * @param	meta : Dynamic
	 * 			errorProof : (optional)
	 * 			Whether the event firing should catch error thrown from a per listener call.
	 * 			Defaults to: false
	 */
	public function define( name:String , meta:Dynamic ):Void;
	
	/**
	 * Destroys the editor instance, releasing all resources used by it. If the editor replaced an element, the element will be recovered.
	 * @param	?noUpdate : Boolean
	 * @example alert( CKEDITOR.instances.editor1 ); // e.g. object
	 * 			CKEDITOR.instances.editor1.destroy();
	 * 			alert( CKEDITOR.instances.editor1 ); // undefined
	 */
	public function destroy( ?noUpdate:Bool ):Void;
	
	/**
	 * Create, retrieve or detach an editable element of the editor, this method should always be used instead of calling directly CKEDITOR.editable.
	 * @param editable :Editable - the editable instance
	 * OR
	 * @param element : Element - the DOM element to become the editable
	 */
	@:overload(function(editable:Editable):Void{})
	public function editable( element:Element ):Void;
	
	/**
	 * 
	 * @param	startNode : Node (optional) - From which the path should start,
	 * 			if not specified default to editor selection's start element yield by CKEDITOR.dom.selection.getStartElement.
	 * @return  ElementPath
	 */
	public function elementPath( ?startNode:Node ) : ElementPath;
	
	/**
	 * Executes a command associated with the editor.
	 * @example editorInstance.execCommand( 'bold' );
	 * @param	commandName : String - The indentifier name of the command.
	 * @param	data : Dynamic (optional) - Data to be passed to the command.
	 * @return	Bool
	 */
	public function execCommand( commandName:String, ?data:Dynamic ) : Bool;
	
	/**
	 * Fires an specific event in the object. All registered listeners are called at this point.
	 * @example	someObject.on( 'someEvent', function() { ... } );
	 * 			someObject.on( 'someEvent', function() { ... } );
	 * 			someObject.fire( 'someEvent' );             // Both listeners are called.
	 * 			someObject.on( 'someEvent', function( event ) {
	 * 				alert( event.data );                    // 'Example'
	 * 			} );
	 * 			someObject.fire( 'someEvent', 'Example' );
	 * @param eventName : String - The event name to fire.
	 * @param data : Dynamic (optional) - Data to be sent as the CKEDITOR.eventInfo.data when calling the listeners.
	 * @param editor : Editor (optional) - The editor instance to send as the CKEDITOR.eventInfo.editor when calling the listener.
	 * @return Bool - A boolean indicating that the event is to be canceled
	 * OR
	 * @return Dynamic - data returned by one of the listeners.
	 */
	@:overload(function(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic{})
	public function fire( eventName:String, ?data:Dynamic, ?editor:Editor ) : Bool;
	
	/**
	 * Fires an specific event in the object, releasing all listeners registered to that event.
	 * The same listeners are not called again on successive calls of it or of fire.
	 * @example	someObject.on( 'someEvent', function() { ... } );
	 * 			someObject.fire( 'someEvent' );         // Above listener called.
	 * 			someObject.fireOnce( 'someEvent' );     // Above listener called.
	 * 			someObject.fire( 'someEvent' );         // No listeners called.
	 * @param eventName : String - The event name to fire.
	 * @param data : Dynamic (optional) - Data to be sent as the CKEDITOR.eventInfo.data when calling the listeners.
	 * @param editor : Editor (optional) - The editor instance to send as the CKEDITOR.eventInfo.editor when calling the listener.
	 * @return Bool - A boolean indicating that the event is to be canceled
	 * OR
	 * @return Dynamic - data returned by one of the listeners.
	 */
	@:overload(function(eventName:String, ?data:Dynamic, ?editor:Editor):Dynamic{})
	public function fireOnce( eventName:String, ?data:Dynamic, ?editor:Editor ) : Bool;
	
	/**
	 * Moves the selection focus to the editing area space in the editor.
	 */
	public function focus():Void;
	
	/**
	 * ...
	 */
	public function forceNextSelectionCheck( ):Void;
	
	/**
	 * Gets clipboard data by directly accessing the clipboard (IE only) or opening paste dialog.
	 * @example editor.getClipboardData( { title: 'Get my data' }, function( data ) {
	 * 				if ( data ) alert( data.type + ' ' + data.dataValue );
	 * 			} );
	 * @param options : Dynamic - 
	 * 			title : String (optional) - Title of paste dialog.
	 * @param callbackFunc : Void -> Void
	 * OR
	 * @param callbackFunc : Dynamic -> Void
	 * Function that will be executed with data.type and data.dataValue or null if none of the capturing method succeeded.
	 */			
	@:overload(function(options:Dynamic, callbackFunc:Void->Void):Dynamic{})
	public function getClipboardData( options:Dynamic, callbackFunc:Dynamic->Void ):Void;
	
	/**
	 * Open up color dialog and to receive the selected color.
	 * @param	callBack - The callback when color dialog is closed
	 * 			@param color : String - the color received on closing from the dialog
	 * @param	scope : Dynamic - The scope in which the callback will be bound.
	 */
	public function getColorFromDialog( callBack : String -> Void, ?scope:Dynamic ):Void;
	
	/**
	 * Gets one of the registered commands. Note that after registering a command definition with addCommand,
	 * it is transformed internally into an instance of CKEDITOR.command, which will then be returned by this function.
	 * @param	commandName : String - The name of the command to be returned. This is the same name that is used to register the command with addCommand.
	 * @return  Command - The command object identified by the provided name.
	 */
	public function getCommand( commandName:String ) : Command;
	
	/**
	 * Gets the editor data. The data will be in raw format. It is the same data that is posted by the editor.
	 * @example if ( CKEDITOR.instances.editor1.getData() == '' ) alert( 'There is no data available' );
	 * @param	noEvents : Dynamic (optional) 
	 * @return	String - The editor data.
	 */
	public function getData( ?noEvents:Dynamic ) : String;
	
	/**
	 * Retrieves a particular menu item definition from the editor context menu.
	 * @param	name : String - The name of the desired menu item.
	 * @return  Dynamic
	 */
	public function getMenuItem( name:String ) : Dynamic;
	
	/**
	 * Gets the element that can be freely used to check the editor size.
	 * This method is mainly used by the resize plugin, which adds a UI handle that can be used to resize the editor.
	 * @param	forContents : Bool - Whether to return the "contents" part of the theme instead of the container.
	 * @return	Element - The resizable element.
	 */
	public function getResizable( forContents:Bool ) : Element;
	
	/**
	 * Retrieve the editor selection in scope of editable element.
	 * Note: Since the native browser selection provides only one single selection at a time per document,
	 * so if editor's editable element has lost focus, this method will return a null value unless the
	 * lockSelection has been called beforehand so the saved selection is retrieved.
	 * @example var selection = CKEDITOR.instances.editor1.getSelection();
	 * 			alert( selection.getType() );
	 * @param	forceRealSelection : Bool - 
	 * @return	Null<Selection> - A selection object or null if not available for the moment.
	 */
	public function getSelection( forceRealSelection:Bool ) : Null<Selection>;
	
	/**
	 * Gets the "raw data" currently available in the editor. This is a fast method which returns the data as is,
	 * without processing, so it is not recommended to use it on resulting pages.
	 * Instead it can be used combined with the loadSnapshot method in order to be able to automatically
	 * save the editor data from time to time while the user is using the editor, to avoid data loss,
	 * without risking performance issues.
	 * @return Dynamic
	 */
	public function getSnapshot():Dynamic;
	
	/**
	 * Gets the current styleSet for this instance.
	 * @example editor.getStylesSet( function( stylesDefinitions ) {} );
	 * @param	callBack : EventInfo->Void - The function to be called with the styles data.
	 */
	public function getStylesSet(callBack:EventInfo->Void):Void;
	
	/**
	 * ...
	 * @return String
	 */
	public function getUIColor():String;
	
	/**
	 * Checks if there is any listener registered to a given event.
	 * @example var myListener = function() { ... };
	 * 			someObject.on( 'someEvent', myListener );
	 * 			alert( someObject.hasListeners( 'someEvent' ) );    // true
	 * 			alert( someObject.hasListeners( 'noEvent' ) );      // false
	 * @param	eventName : String
	 * @return	Bool
	 */
	public function hasListeners( eventName:String ) : Bool;
	
	/**
	 * Inserts an element into the currently selected position in the editor in WYSIWYG mode.
	 * @example	var element = CKEDITOR.dom.element.createFromHtml( '<img src="hello.png" border="0" title="Hello" />' );
	 * 			CKEDITOR.instances.editor1.insertElement( element );
	 * @param	element : Element - The element to be inserted into the editor.
	 */
	public function insertElement( element:Element ):Void;
	
	/**
	 * Inserts HTML code into the currently selected position in the editor in WYSIWYG mode.
	 * "html" - content being inserted will completely override styles of selected position.
	 * "unfiltered_html" - like "html" but content isn't filtered with CKEDITOR.filter.
	 * "text" - content being inserted will inherit styles applied in selected position.
	 * This mode should be used when inserting "htmlified" plain text (HTML without inline styles
	 * and styling elements like <b/>, <strong/>, <span style="..."/>).
	 * @example CKEDITOR.instances.editor1.insertHtml( '<p>This is a new paragraph.</p>' );
	 * @param	html : String - HTML code to be inserted into the editor.
	 * @param	mode : String - Mode in which HTML will be inserted. Defaults to "html".
	 */
	public function insertHtml( html:String, ?mode:String ):Void;
	
	/**
	 * Insert text content into the currently selected position in the editor in WYSIWYG mode.
	 * The styles of the selected element will be applied to the inserted text.
	 * Spaces around the text will be leaving untouched.
	 * @example CKEDITOR.instances.editor1.insertText( ' line1 \n\n line2' 
	 * @since 3.5
	 * @param	text : String - Text to be inserted into the editor.
	 */
	public function insertText( text:String ):Void;
	
	/**
	 * Loads "raw data" into the editor. The data is loaded with processing straight to the editing area.
	 * It should not be used as a way to load any kind of data, but instead in combination with getSnapshot produced data.
	 * @example var data = editor.getSnapshot();
	 * 			editor.loadSnapshot( data );
	 * @param	snapshot : Dynamic
	 */
	public function loadSnapshot( snapshot:Dynamic ):Void;
	
	/**
	 * Locks the selection made in the editor in order to make it possible to manipulate it without browser interference.
	 * A locked selection is cached and remains unchanged until it is released with the unlockSelection method.
	 * @param	sel : Selection (optional) - Specify the selection to be locked.
	 * @return	Bool - true if selection was locked.
	 */
	public function lockSelection( ?sel:Selection ) : Bool;
	
	/**
	 * Registers a listener to a specific event in the current object.
	 * @example someObject.on( 'someEvent', function() {
	 * 											alert( this == someObject );        // true
	 * 										} );
	 * 			someObject.on( 'someEvent', function() {
	 * 											alert( this == anotherObject );     // true
	 * 										}, anotherObject );
	 * 			someObject.on( 'someEvent', function( event ) {
	 * 											alert( event.listenerData );        // 'Example'
	 * 										}, null, 'Example' );
	 * 			someObject.on( 'someEvent', function() { ... } );                       // 2nd called
	 * 			someObject.on( 'someEvent', function() { ... }, null, null, 100 );      // 3rd called
	 * 			someObject.on( 'someEvent', function() { ... }, null, null, 1 );        // 1st called
	 * @param	eventName:String - The event name to which listen.
	 * @param	listenerFunction:EventInfo->Void - The function listening to the event. A single CKEDITOR.eventInfo object instanced is passed to this function containing all the event data.
	 * @param	scopeObj:Dynamic (optional)
	 * @param	listenerData:Dynamic (optional)
	 * @param	priority:Int (optional)
	 * @return
	 */
	public function on( eventName:String, listenerFunction:EventInfo->Void , ?scopeObj:Dynamic, ?listenerData:Dynamic, ?priority:Int ) : Dynamic;
	
	/**
	 * Similiar with on but the listener will be called only once upon the next event firing.
	 * @see on
	 */
	public function once(eventName:String, listenerFunction:EventInfo->Void):Dynamic;
	
	/**
	 * Loads and opens a registered dialog.
	 * @example CKEDITOR.instances.editor1.openDialog( 'smiley' );
	 * @param	dialogName : String - The registered name of the dialog.
	 * @param	callBack : ?Dynamic->Void - The function to be invoked after dialog instance created.
	 * @return	Dialog - The dialog object corresponding to the dialog displayed. null if the dialog name is not registered.
	 */
	public function openDialog( dialogName:String, callBack:?Dynamic->Void ) : Dialog;
	
	/**
	 * Opens Browser in a popup. The width and height parameters accept numbers (pixels) or percent (of screen size) values.
	 * @param	url : String - The url of the external file browser.
	 * @param 	width : Int OR String - Popup window width. Defaults to: '80%'
	 * @param 	height : Int OR String - Popup window height. Defaults to: '70%'
	 * @param 	options : String - Popup window features.
	 * 			Defaults to: 'location=no,menubar=no,toolbar=no,dependent=yes,minimizable=no,modal=yes,alwaysRaised=yes,resizable=yes,scrollbars=yes'
	 */
	@:overload(function( url:String, ?width:String, ?height:String, ?options:String ):Void{})
	@:overload(function( url:String, ?width:Int, ?height:String, ?options:String ):Void{})
	@:overload(function( url:String, ?width:String, ?height:Int, ?options:String ):Void{})
	public function popup( url:String, ?width:Int, ?height:Int, ?options:String ):Void;
	
	/**
	 * Remove all existing listeners on this object, for cleanup purpose.
	 */
	public function removeAllListeners():Void;
	
	/**
	 * Unregisters a listener function from being called at the specified event.
	 * No errors are thrown if the listener has not been registered previously.
	 * @example var myListener = function() { ... };
	 * 			someObject.on( 'someEvent', myListener );
	 * 			someObject.fire( 'someEvent' );                 // myListener called.
	 * 			someObject.removeListener( 'someEvent', myListener );
	 * 			someObject.fire( 'someEvent' );                 // myListener not called.
	 * @param	eventName : String - The name of the event 
	 * @param	listenerFunction : EventInfo->Void - The listener function to unregister.
	 */
	public function removeListener( eventName:String, listenerFunction:EventInfo->Void ):Void;
	
	/**
	 * Removes a particular menu item added before from the editor context menu.
	 * @since 3.6.1
	 * @param	name : String - The name of the desired menu item.
	 */
	public function removeMenuItem( name:String ):Void;
	
	/**
	 * Remove the style from the editor's current selection.
	 * @param	style : Style
	 * @see CKEDITOR.style
	 */
	public function removeStyle( style:Style ):Void;
	
	/**
	 * Resets the "dirty state" of the editor so subsequent calls to checkDirty will return false
	 * if the user will not have made further changes to the contents.
	 * @example	alert( editor.checkDirty() ); // e.g. true
	 * 			editor.resetDirty();
	 * 			alert( editor.checkDirty() ); // false
	 */
	public function resetDirty():Void;
	
	/**
	 * Reset undo stack.
	 */
	public function resetUndo():Void;
	
	/**
	 * Resizes the editor interface.
	 * @param	width : Int OR String - The new width. It can be an pixels integer or a CSS size value.
	 * @param	height : Int OR String - The new height. It can be an pixels integer or a CSS size value.
	 * @param	isContentHeight : Bool (optional)	- Indicates that the provided height is to be applied to the editor contents space,
	 * 												not to the entire editor interface. Defaults to false.
	 * @param	resizeInner : Bool (optional)	- Indicates that the first inner interface element must receive the size, not the outer element.
	 * 											The default theme defines the interface inside a pair of span elements (<span><span>...</span></span>).
	 * 											By default the first span element receives the sizes.
	 * 											If this parameter is set to true, the second span is sized instead.
	 */
	@:overload(function( width:String, height:String, ?isContentHeight:Bool, ?resizeInner:Bool ):Void{})
	@:overload(function( width:String, height:Int, ?isContentHeight:Bool, ?resizeInner:Bool ):Void{})
	@:overload(function( width:Int, height:String, ?isContentHeight:Bool, ?resizeInner:Bool ):Void{})
	public function resize( width:Int, height:Int, ?isContentHeight:Bool, ?resizeInner:Bool ):Void;
	
	/**
	 * 
	 * @param	fakeElement : Dynamic
	 */
	public function restoreRealElement( fakeElement:Dynamic ):Void;
	
	/**
	 * Check the selection change in editor and potentially fires the selectionChange event.
	 * @param	checkNow : Bool - Force the check to happen immediately instead of coming with a timeout delay (default). Defaults to false.
	 */
	public function selectionChange( ?checkNow:Bool ):Void;
	
	/**
	 * Sets the editor data. The data must be provided in the raw format (HTML).
	 * Note that this method is asynchronous. The callback parameter must be used if interaction with the editor is needed after setting the data.
	 * @example CKEDITOR.instances.editor1.setData( '<p>This is the editor data.</p>' );
	 * 			CKEDITOR.instances.editor1.setData( '<p>Some other editor data.</p>', function() {
	 * 				this.checkDirty(); // true
	 * 			});
	 * @param	data : String - HTML code to replace the curent content in the editor.
	 * @param	callBack : Void->Void - Function to be called after the setData is completed.
	 * @param	internal : Bool - Whether to suppress any event firing when copying data internally inside the editor.
	 */
	public function setData( data:String, ?callBack:Void->Void, ?internal:Bool ):Void;
	
	/**
	 * Assigns keystrokes associated to editor commands.
	 * @example editor.setKeystroke( CKEDITOR.CTRL + 115, 'save' ); // Assigned CTRL+S to "save" command.
	 * 			editor.setKeystroke( CKEDITOR.CTRL + 115, false );  // Disabled CTRL+S keystroke assignment.
	 * 			editor.setKeystroke( [
	 * 									[ CKEDITOR.ALT + 122, false ],
	 * 									[ CKEDITOR.CTRL + 121, 'link' ],
	 * 									[ CKEDITOR.SHIFT + 120, 'bold' ]
	 * 								] );
	 * This method may be used in the following cases:
	 * By plugins (like link or basicstyles) to set their keystrokes when plugins are being loaded.
	 * During the runtime to modify existing keystrokes.
	 * The editor handles keystroke configuration in the following order:
	 * 1. Plugins use this method to define default keystrokes.
	 * 2. Editor extends default keystrokes with CKEDITOR.config.keystrokes.
	 * 3. Editor blocks keystrokes defined in CKEDITOR.config.blockedKeystrokes.
	 * After all, you can still set new keystrokes using this method during the runtime.
	 * @since 4.0
	 * @param keystroke : Int OR Array<Array<Dynamic>> - Keystroke or an array of keystroke definitions.
	 * @param behaviour : String - A command to be executed on the keystroke.
	 */
	@:overload(function( keystroke:Int, ?behavior:Bool ):Void{})
	@:overload(function( keystroke:Array<Array<Dynamic>>):Void{})
	public function setKeystroke( keystroke:Int, ?behavior:String ):Void;
	
	/**
	 * Change the editing mode of this editor instance.
	 * Note: The mode switch could be asynchronous depending on the mode provider, use the callback to hook subsequent code.
	 * @example // Switch to "source" view.
	 * 			CKEDITOR.instances.editor1.setMode( 'source' );
	 * 			// Switch to "wysiwyg" and be noticed on completed.
	 * 			CKEDITOR.instances.editor1.setMode( 'wysiwyg', function() { alert( 'wysiwyg mode loaded!' ); } );
	 * @param	newMode : String (optional) - If not specified the CKEDITOR.config.startupMode will be used.
	 * @param	callBack : Void->Void - Optional callback function which invoked once the mode switch has succeeded.
	 */
	public function setMode( ?newMode:String, ?callBack:Void->Void ):Void;
	
	/**
	 * Puts or restores the editor into read-only state. When in read-only, the user is not able to change the editor contents,
	 * but can still use some editor features. This function sets the readOnly property of the editor, firing the readOnly event.
	 * Note: the current editing area will be reloaded.
	 * @since 	3.6
	 * @param	isReadOnly : Bool (optional) - Indicates that the editor must go read-only (true, default) or be restored and made editable (false).
	 */
	public function setReadOnly( ?isReadOnly:Bool ):Void;
	
	/**
	 * @param	color : Dynamic
	 */
	public function setUiColor( color:Dynamic ):Void;
	
	/**
	 * Unlocks the selection made in the editor and locked with the unlockSelection method. An unlocked selection is no longer cached and can be changed.
	 * @param	restore : Bool (optional) - If set to true, the selection is restored back to the selection saved earlier by using the CKEDITOR.dom.selection.lock method.
	 */
	public function unlockSelection( ?restore:Bool ):Void;
	
	/**
	 * Updates the <textarea> element that was replaced by the editor with the current data available in the editor.
	 * Note: This method will only affect those editor instances created with CKEDITOR.ELEMENT_MODE_REPLACE element mode.
	 * @example	CKEDITOR.instances.editor1.updateElement();
	 * 			alert( document.getElementById( 'editor1' ).value ); // The current editor data.
	 */
	public function updateElement():Void;
}