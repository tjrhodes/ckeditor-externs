package ckeditor;
import ckeditor.dom.Element;

/**
 * Stores default configuration settings. Changes to this object are reflected in all editor instances,
 * if not specified otherwise for a particular instance.
 */
extern class Config
{
	/**
	 * allowedContent : CKEDITOR.filter.allowedContentRules/Boolean
	 * Allowed content rules. This setting is used when instantiating CKEDITOR.editor.filter.
	 * The following values are accepted:
	 * CKEDITOR.filter.allowedContentRules – defined rules will be added to the CKEDITOR.editor.filter.
	 * true – will disable the filter (data will not be filtered, all features will be activated).
	 * default – the filter will be configured by loaded features (toolbar items, commands, etc.).
	 * Defaults to: null
	 * Available since: 4.1
	 */
	public var allowedContent:Bool;
	
	/**
	 * Extra height in pixel to leave between the bottom boundary of content with document size when auto resizing.
	 * Defaults to: 0
	 * Available since: 3.6.2
	 */
	public var autoGrow_bottomSpace:Int;
	
	/**
	 * The maximum height that the editor can reach using the AutoGrow feature. Zero means unlimited.
	 * config.autoGrow_maxHeight = 400;
	 * Defaults to: 0
	 * Available since: 3.4
	 */
	public var autoGrow_maxHeight:Int;
	
	/**
	 * The minimum height that the editor can reach using the AutoGrow feature.
	 * config.autoGrow_minHeight = 300;
	 * Defaults to: 200
	 * Available since: 3.4
	 */
	public var autoGrow_minHeight:Int;
	
	/**
	 * Whether to have the auto grow happen on editor creation.
	 * config.autoGrow_onStartup = true;
	 * Defaults to: false
	 * Available since: 3.6.2
	 */
	public var autoGrow_onStartup:Bool;
	
	/**
	 * Whether automatically create wrapping blocks around inline contents inside document body,
	 * this helps to ensure the integrality of the block enter mode.
	 * Note: Changing the default value might introduce unpredictable usability issues.
	 * config.autoParagraph = false;
	 * Defaults to: true
	 * Available since: 3.6
	 */
	public var autoParagraph:Bool;
	
	/**
	 * Whether the replaced element (usually a <textarea>) is to be updated automatically when posting the form containing the editor.
	 * Defaults to: true
	 */
	public var autoUpdateElement:Bool;
	
	/**
	 * The base Z-index for floating dialog windows and popups.
	 * config.baseFloatZIndex = 2000;
	 * Defaults to: 10000
	 */
	public var baseFloatZIndex:Int;
	
	/**
	 * The base href URL used to resolve relative and absolute URLs in the editor content.
	 * config.baseHref = 'http://www.example.com/path/';
	 * Defaults to: ''
	 */
	public var baseHref:String;
	
	/**
	 * Whether to escape basic HTML entities in the document, including:
	 * nbsp
	 * gt
	 * lt
	 * amp
	 * Note: It should not be subject to change unless when outputting a non-HTML data format like BBCode.
	 * config.basicEntities = false;
	 * Defaults to: true
	 */
	public var basicEntities:Bool;
	
	/**
	 * The keystrokes that are blocked by default as the browser implementation is buggy.
	 * These default keystrokes are handled by the editor.
	 * Defaults to: [ CKEDITOR.CTRL + 66, CKEDITOR.CTRL + 73, CKEDITOR.CTRL + 85 ] // CTRL+B,I,U
	 */
	public var blockedKeystrokes:Array<Int>;
	
	/**
	 * Sets the class attribute to be used on the body element of the editing area.
	 * This can be useful when you intend to reuse the original CSS file you are using on your live website and want to assign the editor
	 * the same class as the section that will include the contents.
	 * In this way class-specific CSS rules will be enabled.
	 * config.bodyClass = 'contents';
	 * Defaults to: ''
	 * Available since: 3.1
	 */
	public var bodyClass:String;
	
	
	/**
	 * Sets the id attribute to be used on the body element of the editing area.
	 * This can be useful when you intend to reuse the original CSS file you are using on your live website and want to assign the editor
	 * the same ID as the section that will include the contents.
	 * In this way ID-specific CSS rules will be enabled.
	 * config.bodyId = 'contents_id';
	 * Defaults to: ''
	 * Available since: 3.1
	 */
	public var bodyId:String;
	
	/**
	 * Whether to show the browser native context menu when the Ctrl or Meta (Mac) key is pressed
	 * on opening the context menu with the right mouse button click or the Menu key.
	 * config.browserContextMenuOnCtrl = false;
	 * Defaults to: true
	 * Available since: 3.0.2
	 */
	public var browserContextMenuOnCtrl:Bool;
	
	/**
	 * The default content type is used when pasted data cannot be clearly recognized as HTML or text.
	 * For example: 'foo' may come from a plain text editor or a website.
	 * It isn't possible to recognize content type in this case, so default will be used.
	 * However, it's clear that '<b>example</b> text' is an HTML and its origin is webpage,
	 * email or other rich text editor.
	 */
	public var clipboard_defaultContentType:String;
	
	/**
	 * Stores the style definition that applies the text background color.
	 * // This is actually the default value.
	 * config.colorButton_backStyle = {
	 * 		element: 'span',
	 * 		styles: { 'background-color': '#(color)' }
	 * };
	 * Defaults to: see source
	 */
	public var colorButton_backStyle:Dynamic;
	
	/**
	 * Defines the colors to be displayed in the color selectors.
	 * This is a string containing hexadecimal notation for HTML colors, without the '#' prefix.
	 * Since 3.3: A color name may optionally be defined by prefixing the entries with a name and the slash character.
	 * For example, 'FontColor1/FF9900' will be displayed as the color #FF9900 in the selector, but will be output as 'FontColor1'.
	 * // Brazil colors only.
	 * config.colorButton_colors = '00923E,F8C100,28166F';
	 * config.colorButton_colors = 'FontColor1/FF9900,FontColor2/0066CC,FontColor3/F00';
	 * Defaults to: see source
	 */
	public var colorButton_colors:String;
	
	/**
	 * Whether to enable the More Colors* button in the color selectors.
	 * config.colorButton_enableMore = false;
	 * Defaults to: true
	 */
	public var colorButton_enableMore:Bool;
	
	/**
	 * Stores the style definition that applies the text foreground color.
	 * // This is actually the default value.
	 * config.colorButton_foreStyle = {
	 * 		element: 'span',
	 * 		styles: { color: '#(color)' }
	 * };
	 * Defaults to: see source
	 */
	public var colorButton_foreStyle:Dynamic;
	
	/**
	 * The CSS file(s) to be used to apply style to the contents.
	 * It should reflect the CSS used in the final pages where the contents are to be used.
	 * config.contentsCss = '/css/mysitestyles.css';
	 * config.contentsCss = ['/css/mysitestyles.css', '/css/anotherfile.css'];
	 * Defaults to: CKEDITOR.basePath + 'contents.css'
	 */
	public var contentsCss:Array<String>;
	
	/**
	 * The writting direction of the language used to write the editor contents. Allowed values are:
	 * '' (empty string) - indicate content direction will be the same with either the editor UI direction or page element direction depending on the creators:
		 * Themed UI: The same with user interface language direction;
		 * Inline: The same with the editable element text direction;
	 * 'ltr' - for Left-To-Right language (like English);
	 * 'rtl' - for Right-To-Left languages (like Arabic).
	 * Example:
		 * config.contentsLangDirection = 'rtl';
	 * Defaults to: ''
	 */
	public var contentsLangDirection:String;
	
	/**
	 * Language code of the writting language which is used to author the editor contents.
	 * config.contentsLanguage = 'fr';
	 * Defaults to: same value with editor's UI language
	 */
	public var contentsLanguage:String;
	
	/**
	 * The style definition that applies the bold style to the text.
	 * config.coreStyles_bold = { element: 'b', overrides: 'strong' };
	 * config.coreStyles_bold = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'Bold' }
	 * };
	 * Defaults to: {element: 'strong', overrides: 'b'}
	 */
	public var coreStyles_bold:Dynamic;
	
	/**
	 * The style definition that applies the italics style to the text.
	 * config.coreStyles_italic = { element: 'i', overrides: 'em' };
	 * CKEDITOR.config.coreStyles_italic = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'Italic' }
	 * };
	 * Defaults to: {element: 'em', overrides: 'i'}
	 */
	public var coreStyles_italic:Dynamic;
	
	/**
	 * The style definition that applies the strike-through style to the text.
	 * CKEDITOR.config.coreStyles_strike = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'StrikeThrough' },
	 * 		overrides: 'strike'
	 * };
	 * Defaults to: {element: 's', overrides: 'strike'}
	 */
	public var coreStyles_strike:Dynamic;
	
	/**
	 * The style definition that applies the subscript style to the text.
	 * CKEDITOR.config.coreStyles_subscript = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'Subscript' },
	 * 		overrides: 'sub'
	 * };
	 * Defaults to: {element: 'sub'}
	 */
	public var coreStyles_subscript:Dynamic;
	
	/**
	 * The style definition that applies the superscript style to the text.
	 * CKEDITOR.config.coreStyles_superscript = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'Superscript' },
	 * 		overrides: 'sup'
	 * };
	 * Defaults to: {element: 'sup'}
	 */
	public var coreStyles_superscript:Dynamic;
	
	/**
	 * The style definition that applies the underline style to the text.
	 * CKEDITOR.config.coreStyles_underline = {
	 * 		element: 'span',
	 * 		attributes: { 'class': 'Underline' }
	 * };
	 * Defaults to: {element: 'u'}
	 */
	public var coreStyles_underline:Dynamic;
	
	/**
	 * The URL path for the custom configuration file to be loaded.
	 * If not overloaded with inline configuration,
	 * it defaults to the config.js file present in the root of the CKEditor installation directory.
	 * CKEditor will recursively load custom configuration files defined inside other custom configuration files.
	 * // Load a specific configuration file.
	 * CKEDITOR.replace( 'myfield', { customConfig: '/myconfig.js' } );
	 * // Do not load any custom configuration file.
	 * CKEDITOR.replace( 'myfield', { customConfig: '' } );
	 * Defaults to: "<CKEditor folder>/config.js"
	 */
	public var customConfig:String;
	
	/**
	 * The characters to be used for indenting the HTML produced by the editor.
	 * Using characters different than ' ' (space) and '\t' (tab) is definitely a bad idea as it'll mess the code.
	 * // No indentation.
	 * CKEDITOR.config.dataIndentationChars = '';
	 * // Use two spaces for indentation.
	 * CKEDITOR.config.dataIndentationChars = '  ';
	 * Defaults to: '\t'
	 */
	public var dataIndentationChars:String;
	
	/**
	 * The language to be used if the language setting is left empty and it is not possible to localize the editor to the user language.
	 * config.defaultLanguage = 'it';
	 * Defaults to: 'en'
	 */
	public var defaultLanguage:String;
	
	/**
	 * A setting that stores CSS rules to be injected into the page with styles to be applied to the tooltip element.
	 * // This is actually the default value.
	 * '#cke_tooltip { padding: 5px; border: 2px solid #333; background: #ffffff }' +
	 * '#cke_tooltip h2 { font-size: 1.1em; border-bottom: 1px solid; margin: 0; padding: 1px; }' +
	 * '#cke_tooltip ul { padding: 0pt; list-style-type: none; }';
	 * Defaults to: see example
	 * Available since: 3.6
	 */
	public var devtools_styles:String;
	
	/**
	 * A function that returns the text to be displayed inside the Developer Tools tooltip when hovering over a dialog UI element.
	 * // This is actually the default value.
	 * // Show dialog window name, tab ID, and element ID.
	 * config.devtools_textCallback = function( editor, dialog, element, tabName ) {
	 * 		var lang = editor.lang.devtools,
	 * 			link = '<a href="http://docs.ckeditor.com/#!/api/CKEDITOR.dialog.definition.' +
	 * 				( element ? ( element.type == 'text' ? 'textInput' : element.type ) : 'content' ) +
	 * 				'.html" target="_blank">' + ( element ? element.type : 'content' ) + '</a>',
	 * 			str =
	 * 				'<h2>' + lang.title + '</h2>' +
	 * 				'<ul>' +
	 * 					'<li><strong>' + lang.dialogName + '</strong> : ' + dialog.getName() + '</li>' +
	 * 					'<li><strong>' + lang.tabName + '</strong> : ' + tabName + '</li>';
	 * 		if ( element )
	 * 			str += '<li><strong>' + lang.elementId + '</strong> : ' + element.id + '</li>';
	 * 		str += '<li><strong>' + lang.elementType + '</strong> : ' + link + '</li>';
	 * 		return str + '</ul>';
	 * };
	 * Defaults to: see example
	 */
	public var devtools_textCallback:Editor->Dialog->Element->String->String;
	
	/**
	 * The color of the dialog background cover. It should be a valid CSS color string.
	 * config.dialog_backgroundCoverColor = 'rgb(255, 254, 253)';
	 * Defaults to: 'white'
	 */
	public var dialog_backgroundCoverColor:String;
	
	/**
	 * The opacity of the dialog background cover. It should be a number within the range [0.0, 1.0]
	 * config.dialog_backgroundCoverOpacity = 0.7;
	 * Defaults to: 0.5
	 */
	public var dialog_backgroundCoverOpacity:Float;
	
	/**
	 * The guideline to follow when generating the dialog buttons. There are 3 possible options:
	 * 'OS' - the buttons will be displayed in the default order of the user's OS;
	 * 'ltr' - for Left-To-Right order;
	 * 'rtl' - for Right-To-Left order.
	 * Example:config.dialog_buttonsOrder = 'rtl';
	 * Defaults to: 'OS' 
	 * Available since: 3.5
	 */
	public var dialog_buttonsOrder:String;
	
	/**
	 * The distance of magnetic borders used in moving and resizing dialogs, measured in pixels.
	 * config.dialog_magnetDistance = 30;
	 * Defaults to: 20
	 */
	public var dialog_magnetDistance:Int;
	
	/**
	 * If the dialog has more than one tab, put focus into the first tab as soon as dialog is opened.
	 * config.dialog_startupFocusTab = true;
	 * Defaults to: false
	 */
	public var dialog_startupFocusTab:Bool;
	
	/**
	 * Disables the built-in words spell checker if browser provides one.
	 * Note: Although word suggestions provided by browsers (natively) will not appear in CKEditor's default context menu,
	 * users can always reach the native context menu by holding the Ctrl key when right-clicking if browserContextMenuOnCtrl
	 * is enabled or you're simply not using the context menu plugin.
	 * config.disableNativeSpellChecker = false;
	 * Defaults to: true
	 */
	public var disableNativeSpellChecker:Bool;
	
	/**
	 * Disables the "table tools" offered natively by the browser (currently Firefox only) to make quick table editing operations,
	 * like adding or deleting rows and columns.
	 * config.disableNativeTableHandles = false;
	 * Defaults to: true
	 */
	public var disableNativeTableHandles:Bool;
	
	/**
	 * Disables the ability of resize objects (image and tables) in the editing area.
	 * config.disableObjectResizing = true;
	 * Defaults to: false
	 */
	public var disableObjectResizing:Bool;
	
	/**
	 * Disables inline styling on read-only elements.
	 * Defaults to: false 
	 * Available since: 3.5
	 */
	public var disableReadonlyStyling:Bool;
	
	/**
	 * Whether to wrap the whole table instead of indivisual cells when created <div> in table cell.
	 * config.div_wrapTable = true;
	 * Defaults to: false
	 */
	public var div_wrapTable:Bool;
	
	/**
	 * Sets the DOCTYPE to be used when loading the editor content as HTML.
	 * // Set the DOCTYPE to the HTML 4 (Quirks) mode.
	 * config.docType = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">';
	 * Defaults to: '<!DOCTYPE html>'
	 */
	public var docType:String;
	
	/**
	 * The e-mail address anti-spam protection option. The protection will be applied when creating or modifying
	 * e-mail links through the editor interface.
	 * Two methods of protection can be choosed:
	 * 1. The e-mail parts (name, domain and any other query string) are assembled into a function call pattern.
	 * Such function must be provided by the developer in the pages that will use the contents
	 * 2. Only the e-mail address is obfuscated into a special string that has no meaning for humans or spam bots,
	 * but which is properly rendered and accepted by the browser.
	 * Both approaches require JavaScript to be enabled.
	 * // href="mailto:tester@ckeditor.com?subject=subject&body=body"
	 * config.emailProtection = '';
	 * // href="<a href=\"javascript:void(location.href=\'mailto:\'+String.fromCharCode(116,101,115,116,101,114,64,99,107,101,100,105,116,111,114,46,99,111,109)+\'?subject=subject&body=body\')\">e-mail</a>"
	 * config.emailProtection = 'encode';
	 * // href="javascript:mt('tester','ckeditor.com','subject','body')"
	 * config.emailProtection = 'mt(NAME,DOMAIN,SUBJECT,BODY)';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.1
	 */
	public var emailProtection:String;
	
	/**
	 * Allow context-sensitive tab key behaviors, including the following scenarios:
	 * When selection is anchored inside table cells:
	 * If TAB is pressed, select the contents of the "next" cell. If in the last cell in the table, add a new row to it and focus its first cell.
	 * If SHIFT+TAB is pressed, select the contents of the "previous" cell. Do nothing when it's in the first cell.
	 * Example:
	 * config.enableTabKeyTools = false;
	 * Defaults to: true
	 */
	public var enableTabKeyTools:Bool;
	
	/**
	 * Sets the behavior of the Enter key. It also determines other behavior rules of the editor,
	 * like whether the <br> element is to be used as a paragraph separator when indenting text.
	 * The allowed values are the following constants that cause the behavior outlined below:
	 * CKEDITOR.ENTER_P (1) – new <p> paragraphs are created;
	 * CKEDITOR.ENTER_BR (2) – lines are broken with <br> elements;
	 * CKEDITOR.ENTER_DIV (3) – new <div> blocks are created.
	 * Note: It is recommended to use the CKEDITOR.ENTER_P setting because of its semantic value and correctness. The editor is optimized for this setting.
	 * // Not recommended.
	 * config.enterMode = CKEDITOR.ENTER_BR;
	 * Defaults to: CKEDITOR.ENTER_P
	 */
	public var enterMode:Int;
	
	/**
	 * Whether to use HTML entities in the output.
	 * config.entities = false;
	 * Defaults to: true
	 */
	public var entities:Bool;
	
	/**
	 * A comma separated list of additional entities to be used.
	 * Entity names or numbers must be used in a form that excludes the '&amp;' prefix and the ';' ending.
	 * config.entities_additional = '#1049'; // Adds Cyrillic capital letter Short I (Й).
	 * Defaults to: '#39' (The single quote (') character)
	 */
	public var entities_additional:String;
	
	/**
	 * Whether to convert some symbols, mathematical symbols, and Greek letters to HTML entities.
	 * This may be more relevant for users typing text written in Greek.
	 * The list of entities can be found in the [W3C HTML 4.01 Specification,
	 * section 24.3.1(http://www.w3.org/TR/html4/sgml/entities.html#h-24.3.1).
	 * config.entities_greek = false;
	 * Defaults to: true
	 */
	public var entities_greek:Bool;
	
	/**
	 * Whether to convert some Latin characters (Latin alphabet No. 1, ISO 8859-1) to HTML entities.
	 * The list of entities can be found in the W3C HTML 4.01 Specification, section 24.2.1.
	 * config.entities_latin = false;
	 * Defaults to: true
	 */
	public var entities_latin:Bool;
	
	/**
	 * Whether to convert all remaining characters not included in the ASCII character table to their relative decimal numeric representation of HTML entity.
	 * When set to force, it will convert all entities into this format.
	 * For example the phrase 'This is Chinese: 汉语.' is output as 'This is Chinese: &#27721;&#35821;.'
	 * config.entities_processNumerical = true;
	 * config.entities_processNumerical = 'force'; // Converts from '&nbsp;' into '&#160;';
	 * Defaults to: false
	 */
	public var entities_processNumerical:Dynamic;
	
	/**
	 * This option makes it possible to set additional allowed content rules for CKEDITOR.editor.filter.
	 * It is especially useful in combination with the default allowedContent value:
	 * CKEDITOR.replace( 'textarea_id', {
	 * 		plugins: 'wysiwygarea,toolbar,format',
	 * 		extraAllowedContent: 'b i',
	 * 		on: {
	 * 			instanceReady: function( evt ) {
	 * 				var editor = evt.editor;
	 * 				editor.filter.check( 'h1' ); // -> true (thanks to Format combo)
	 * 				editor.filter.check( 'b' ); // -> true (thanks to extraAllowedContent)
	 * 				editor.setData( '<h1><i>Foo</i></h1><p class="left"><b>Bar</b> <a href="http://foo.bar">foo</a></p>' );
	 * 				// Editor contents will be:
	 * 				'<h1>Foo</h1><p><b>Bar</b> foo</p>'
	 * 			}
	 * 		}
	 * };
	 * See allowedContent for more details.
	 * Available since: 4.1
	 */
	public var extraAllowedContent:Dynamic;
	
	/**
	 * A list of additional plugins to be loaded. This setting makes it easier to add new plugins without having to touch plugins setting.
	 * config.extraPlugins = 'myplugin,anotherplugin';
	 * Defaults to: ''
	 */
	public var extraPlugins:String;
	
	/**
	 * The location of an external file browser that should be launched when the Browse Server button is pressed.
	 * If configured, the Browse Server button will appear in the Link, Image, and Flash dialog windows.
	 * See the File Browser/Uploader documentation.
	 * config.filebrowserBrowseUrl = '/browser/browse.php';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.0
	 */
	public var filebrowserBrowseUrl:String;
	
	/**
	 * The location of an external file browser that should be launched when the Browse Server button is pressed in the Flash dialog window.
	 * If not set, CKEditor will use filebrowserBrowseUrl.
	 * config.filebrowserFlashBrowseUrl = '/browser/browse.php?type=Flash';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.0
	 */
	public var filebrowserFlashBrowseUrl:String;
	
	/**
	 * The location of the script that handles file uploads in the Flash dialog window.
	 * If not set, CKEditor will use filebrowserUploadUrl.
	 * config.filebrowserFlashUploadUrl = '/uploader/upload.php?type=Flash'; ='' (empty string = disabled)]
	 * Available since: 3.0
	 */
	public var filebrowserFlashUploadUrl:String;
	
	/**
	 * The location of an external file browser that should be launched when the Browse Server button is pressed in the Link tab of the Image dialog window.
	 * If not set, CKEditor will use filebrowserBrowseUrl.
	 * config.filebrowserImageBrowseLinkUrl = '/browser/browse.php';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.2
	 */
	public var filebrowserImageBrowseLinkUrl:String;
	
	/**
	 * The location of an external file browser that should be launched when the Browse Server button is pressed in the Image dialog window.
	 * If not set, CKEditor will use filebrowserBrowseUrl.
	 * config.filebrowserImageBrowseUrl = '/browser/browse.php?type=Images';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.0
	 */
	public var filebrowserImageBrowseUrl:String;
	
	/**
	 * The location of the script that handles file uploads in the Image dialog window.
	 * If not set, CKEditor will use filebrowserUploadUrl.
	 * config.filebrowserImageUploadUrl = '/uploader/upload.php?type=Images';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.0
	 */
	public var filebrowserImageUploadUrl:String;
	
	/**
	 * The location of the script that handles file uploads. If set, the Upload tab will appear in the Link, Image, and Flash dialog windows.
	 * See the File Browser/Uploader documentation.
	 * config.filebrowserUploadUrl = '/uploader/upload.php';
	 * Defaults to: '' (empty string = disabled)
	 * Available since: 3.0
	 */
	public var filebrowserUploadUrl:String;
	
	/**
	 * The features to use in the file browser popup window.
	 * config.filebrowserWindowFeatures = 'resizable=yes,scrollbars=no';
	 * Defaults to: 'location=no,menubar=no,toolbar=no,dependent=yes,minimizable=no,modal=yes,alwaysRaised=yes,resizable=yes,scrollbars=yes'
	 * Available since: 3.4.1
	 */
	public var filebrowserWindowFeatures:String;
	
	/**
	 * The height of the file browser popup window. It can be a number denoting a value in pixels or a percent string.
	 * config.filebrowserWindowHeight = 580;
	 * config.filebrowserWindowHeight = '50%';
	 * Defaults to: '70%'
	 */
	public var filebrowserWindowHeight:Dynamic;
	
	/**
	 * The width of the file browser popup window. It can be a number denoting a value in pixels or a percent string.
	 * config.filebrowserWindowWidth = 750;
	 * config.filebrowserWindowWidth = '50%';
	 * Defaults to: '80%'
	 */
	public var filebrowserWindowWidth:Dynamic;
	
	/**
	 * Whether a filler text (non-breaking space entity — &nbsp;) will be inserted into empty block elements in HTML output.
	 * This is used to render block elements properly with line-height.
	 * When a function is specified instead, it will be passed a CKEDITOR.htmlParser.element to decide whether
	 * adding the filler text by expecting a Boolean return value.
	 * config.fillEmptyBlocks = false; // Prevent filler nodes in all empty blocks.
	 * // Prevent filler node only in float cleaners.
	 * config.fillEmptyBlocks = function( element ) {
	 * 		if ( element.attributes[ 'class' ].indexOf( 'clear-both' ) != -1 )
	 * 			return false;
	 * };
	 * Defaults to: true
	 * Available since: 3.5
	 */
	public var fillEmptyBlocks:Bool;
	
	/**
	 * Defines the style to be used to highlight results with the find dialog.
	 * // Highlight search results with blue on yellow.
	 * config.find_highlight = {
	 * 		element: 'span',
	 * 		styles: { 'background-color': '#ff0', color: '#00f' }
	 * };
	 */
	public var find_highlight:Dynamic;
	
	/**
	 * Add <embed> tag as alternative: <object><embed></embed></object>.
	 * Defaults to: false
	 */
	public var flashAddEmbedTag:Bool;
	
	/**
	 * Use flashEmbedTagOnly and flashAddEmbedTag values on edit.
	 * Defaults to: false
	 */
	public var flashConvertOnEdit:Bool;
	
	/**
	 * Save as <embed> tag only. This tag is unrecommended.
	 * Defaults to: false
	 */
	public var flashEmbedTagOnly:Bool;
	
	/**
	 * Along with floatSpaceDockedOffsetY it defines the amount of offset (in pixels) between float space
	 * and the editable left/right boundaries when space element is docked at either side of the editable.
	 * config.floatSpaceDockedOffsetX = 10;
	 * Defaults to: 0
	 */
	public var floatSpaceDockedOffsetX:Int;
	
	/**
	 * Along with floatSpaceDockedOffsetX it defines the amount of offset (in pixels) between float space
	 * and the editable top/bottom boundaries when space element is docked at either side of the editable.
	 * config.floatSpaceDockedOffsetY = 10;
	 * Defaults to: 0
	 */
	public var floatSpaceDockedOffsetY:Int;
	
	/**
	 * Along with floatSpacePinnedOffsetY it defines the amount of offset (in pixels) between float space
	 * and the view port boundaries when space element is pinned.
	 * config.floatSpacePinnedOffsetX = 20;
	 * Defaults to: 0
	 */
	public var floatSpacePinnedOffsetX:Int;
	
	/**
	 * Along with floatSpacePinnedOffsetX it defines the amount of offset (in pixels) between float space
	 * and the view port boundaries when space element is pinned.
	 * config.floatSpacePinnedOffsetY = 20;
	 * Defaults to: 0
	 */
	public var floatSpacePinnedOffsetY:Int;
	
	/**
	 * The text to be displayed in the Font Size combo is none of the available values matches the current
	 * cursor position or text selection.
	 * // If the default site font size is 12px, we may making it more explicit to the end user.
	 * config.fontSize_defaultLabel = '12px';
	 * Defaults to: ''
	 */
	public var fontSize_defaultLabel:String;
	
	/**
	 * The list of fonts size to be displayed in the Font Size combo in the toolbar. Entries are separated by semi-colons (';').
	 * Any kind of "CSS like" size can be used, like '12px', '2.3em', '130%', 'larger' or 'x-small'
	 * A display name may be optionally defined by prefixing the entries with the name and the slash character. For example,
	 * 'Bigger Font/14px' will be displayed as 'Bigger Font' in the list, but will be outputted as '14px'
	 * config.fontSize_sizes = '16/16px;24/24px;48/48px;';
	 * config.fontSize_sizes = '12px;2.3em;130%;larger;x-small';
	 * config.fontSize_sizes = '12 Pixels/12px;Big/2.3em;30 Percent More/130%;Bigger/larger;Very Small/x-small';
	 * Defaults to: see source
	 */
	public var fontSize_sizes:String;
	
	/**
	 * The style definition to be used to apply the font size in the text.
	 * // This is actually the default value for it.
	 * config.fontSize_style = {
	 * 		element:        'span',
	 * 		styles:         { 'font-size': '#(size)' },
	 * 		overrides:      [ { element :'font', attributes: { 'size': null } } ]
	 * };
	 * Defaults to: see example
	 */
	public var fontSize_style:Dynamic;
	
	/**
	 * The text to be displayed in the Font combo is none of the available values matches the current cursor position or text selection.
	 * // If the default site font is Arial, we may making it more explicit to the end user.
	 * config.font_defaultLabel = 'Arial';
	 * Defaults to: ''
	 */
	public var font_defaultLabel:String;
	
	/**
	 * The list of fonts names to be displayed in the Font combo in the toolbar. Entries are separated by semi-colons (';'),
	 * while it's possible to have more than one font for each entry, in the HTML way (separated by comma).
	 * A display name may be optionally defined by prefixing the entries with the name and the slash character.
	 * For example, 'Arial/Arial, Helvetica, sans-serif' will be displayed as 'Arial' in the list, but will be outputted as 'Arial, Helvetica, sans-serif'.
	 * config.font_names =
	 * 		'Arial/Arial, Helvetica, sans-serif;' +
	 * 		'Times New Roman/Times New Roman, Times, serif;' +
	 * 		'Verdana';
	 * config.font_names = 'Arial;Times New Roman;Verdana';
	 * Defaults to: see source
	 */
	public var font_names:String;
	
	/**
	 * The style definition to be used to apply the font in the text.
	 * // This is actually the default value for it.
	 * config.font_style = {
	 * 		element:        'span',
	 * 		styles:         { 'font-family': '#(family)' },
	 * 		overrides:      [ { element: 'font', attributes: { 'face': null } } ]
	 * };
	 * Defaults to: see example
	 */
	public var font_style:Dynamic;
	
	/**
	 * Force the use of enterMode as line break regardless of the context. If, for example, enterMode is set to CKEDITOR.ENTER_P,
	 * pressing the Enter key inside a <div> element will create a new paragraph with <p> instead of a <div>.
	 * // Not recommended.
	 * config.forceEnterMode = true;
	 * Defaults to: false
	 * Available since: 3.2.1
	 */
	public var forceEnterMode:Bool;
	
	/**
	 * Whether to force all pasting operations to insert on plain text into the editor, loosing any formatting information possibly available in the source text.
	 * Note: paste from word (dialog) is not affected by this configuration.
	 * config.forcePasteAsPlainText = true;
	 * Defaults to: false
	 */
	public var forcePasteAsPlainText:Bool;
	
	/**
	 * Whether to force using '&' instead of '&amp;' in elements attributes values,
	 * it's not recommended to change this setting for compliance with the W3C XHTML 1.0 standards (C.12, XHTML 1.0).
	 * // Use `'&'` instead of `'&amp;'`
	 * CKEDITOR.config.forceSimpleAmpersand = true;
	 * Defaults to: false
	 */
	public var forceSimpleAmpersand:Bool;
	
	/**
	 * The style definition to be used to apply the 'Address' format.
	 * config.format_address = { element: 'address', attributes: { 'class': 'styledAddress' } };
	 * Defaults to: { element: 'address' }
	 */
	public var format_address:Dynamic;
	
	/**
	 * The style definition to be used to apply the 'Normal (DIV)' format.
	 * config.format_div = { element : 'div', attributes : { 'class' : 'normalDiv' } };
	 * Defaults to: { element: 'div' }
	 */
	public var format_div:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 1' format.
	 * config.format_h1 = { element: 'h1', attributes: { 'class': 'contentTitle1' } };
	 * Defaults to: { element: 'h1' }
	 */
	public var format_h1:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 2' format.
	 * config.format_h2 = { element: 'h2', attributes: { 'class': 'contentTitle2' } };
	 * Defaults to: { element: 'h2' }
	 */
	public var format_h2:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 3' format.
	 * config.format_h3 = { element: 'h3', attributes: { 'class': 'contentTitle3' } };
	 * Defaults to: { element: 'h3' }
	 */
	public var format_h3:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 4' format.
	 * config.format_h4 = { element: 'h4', attributes: { 'class': 'contentTitle4' } };
	 * Defaults to: { element: 'h4' }
	 */
	public var format_h4:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 5' format.
	 * config.format_h5 = { element: 'h5', attributes: { 'class': 'contentTitle5' } };
	 * Defaults to: { element: 'h5' }
	 */
	public var format_h5:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Heading 6' format.
	 * config.format_h6 = { element: 'h6', attributes: { 'class': 'contentTitle6' } };
	 * Defaults to: { element: 'h6' }
	 */
	public var format_h6:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Normal' format.
	 * config.format_p = { element : 'p', attributes : { 'class' : 'normalPara' } };
	 * Defaults to: { element: 'p' }
	 */
	public var format_p:Dynamic;
	
	/**
	 * The style definition to be used to apply the `'Formatted' format.
	 * config.format_pre = { element: 'pre', attributes: { 'class': 'code' } };
	 * Defaults to: { element: 'pre' }
	 */
	public var format_pre:Dynamic;
	
	/**
	 * A list of semi colon separated style names (by default tags) representing the style definition
	 * for each entry to be displayed in the Format combo in the toolbar.
	 * Each entry must have its relative definition configuration in a setting named 'format_(tagName)'.
	 * For example, the 'p' entry has its definition taken from config.format_p.
	 * config.format_tags = 'p;h2;h3;pre';
	 * Defaults to: 'p;h1;h2;h3;h4;h5;h6;pre;address;div'
	 */
	public var format_tags:String;
	
	/**
	 * Indicates whether the contents to be edited are being input as a full HTML page.
	 * A full page includes the <html>, <head>, and <body> elements.
	 * The final output will also reflect this setting, including the <body> contents only if this setting is disabled.
	 * config.fullPage = true;
	 * Defaults to: false
	 * Available since: 3.1
	 */
	public var fullPage:Bool;
	
	/**
	 * The height of the editing area (that includes the editor content).
	 * This can be an integer, for pixel sizes, or any CSS-defined length unit.
	 * Note: Percent units (%) are not supported.
	 * config.height = 500;        // 500 pixels.
	 * config.height = '25em';     // CSS length.
	 * config.height = '300px';    // CSS length.
	 * Defaults to: 200
	 */
	public var height:Dynamic;
	
	/**
	 * Whether to escape HTML when the editor updates the original input element.
	 * config.htmlEncodeOutput = true;
	 * Defaults to: false
	 * Available since: 3.1
	 */
	public var htmlEncodeOutput:Bool;
	
	/**
	 * Whether the editor must output an empty value ('') if it's contents is made by an empty paragraph only.
	 * config.ignoreEmptyParagraph = false;
	 * Defaults to: true
	 */
	public var ignoreEmptyParagraph:Bool;
	
	/**
	 * Padding text to set off the image in preview area.
	 * config.image_previewText = CKEDITOR.tools.repeat( '___ ', 100 );
	 * Defaults to: 'Lorem ipsum dolor...' (placeholder text)
	 */
	public var image_previewText:String;
	
	/**
	 * Whether to remove links when emptying the link URL field in the image dialog.
	 * config.image_removeLinkByEmptyURL = false;
	 * Defaults to: true
	 */
	public var image_removeLinkByEmptyURL:Bool;
	
	/**
	 * List of classes to use for indenting the contents. If it's null, no classes will be used and instead
	 * the indentUnit and indentOffset properties will be used.
	 * // Use the classes 'Indent1', 'Indent2', 'Indent3'
	 * config.indentClasses = ['Indent1', 'Indent2', 'Indent3'];
	 * Defaults to: null
	 */
	public var indentClasses:Array<String>;
	
	/**
	 * Size of each indentation step.
	 * config.indentOffset = 4;
	 * Defaults to: 40
	 */
	public var indentOffset:Int;
	
	/**
	 * Unit for the indentation style.
	 * config.indentUnit = 'em';
	 * Defaults to: 'px'
	 */
	public var indentUnit:String;
	
	/**
	 * List of classes to use for aligning the contents. If it's null, no classes will be used and instead the
	 * corresponding CSS values will be used.
	 * The array should contain 4 members, in the following order: left, center, right, justify.
	 * // Use the classes 'AlignLeft', 'AlignCenter', 'AlignRight', 'AlignJustify'
	 * config.justifyClasses = [ 'AlignLeft', 'AlignCenter', 'AlignRight', 'AlignJustify' ];
	 * Defaults to: null
	 */
	public var justifyClasses:Array<String>;
	
	/**
	 * A list associating keystrokes to editor commands.
	 * Each element in the list is an array where the first item is the keystroke,
	 * and the second is the name of the command to be executed.
	 * This setting should be used to define (as well as to overwrite or remove) keystrokes set by plugins (like link and basicstyles).
	 * If you want to set a keystroke for your plugin or during the runtime, use CKEDITOR.editor.setKeystroke instead.
	 * Since default keystrokes are set by CKEDITOR.editor.setKeystroke method, by default config.keystrokes is an empty array.
	 * See CKEDITOR.editor.setKeystroke documentation for more details regarding the start up order.
	 * // Change default CTRL + L keystroke for 'link' command to CTRL + SHIFT + L.
	 * config.keystrokes = [
	 * 		...
	 * 		[ CKEDITOR.CTRL + CKEDITOR.SHIFT + 76, 'link' ],    // CTRL + SHIFT + L
	 * 		...
	 * ];
	 * To reset a particular keystroke, the following approach can be used:
	 * // Disable default CTRL + L keystroke which executes link command by default.
	 * config.keystrokes = [
	 * 		...
	 * 		[ CKEDITOR.CTRL + 76, null ],                       // CTRL + L
	 * 		...
	 * ];
	 * To reset all default keystrokes an CKEDITOR.instanceReady callback should be used.
	 * This is since editor defaults are merged rather than overwritten by user keystrokes.
	 * Note: This can be potentially harmful for an editor. Avoid this unless you're aware of the consequences.
	 * // Reset all default keystrokes.
	 * config.on.instanceReady = function() {
	 * 		this.keystrokeHandler.keystrokes = [];
	 * };
	 * Defaults to: []
	 */
	public var keystrokes:Array<Array<Dynamic>>;
	
	/**
	 * The user interface language localization to use. If left empty, the editor will automatically be localized to the user language.
	 * If the user language is not supported, the language specified in the defaultLanguage configuration setting is used.
	 * // Load the German interface.
	 * config.language = 'de';
	 * Defaults to: ''
	 */
	public var language:String;
	
	/**
	 * Defaults to: true
	 */
	public var linkShowAdvancedTab:Bool;
	
	/**
	 * Defaults to: true
	 */
	public var linkShowTargetTab:Bool;
	
	/**
	 * Defines box color. The color may be adjusted to enhance readability.
	 * // Changes color to blue.
	 * CKEDITOR.config.magicline_color = '#0000FF';
	 * Defaults to: '#FF0000'
	 */
	public var magicline_color:String;
	
	/**
	 * Defines the distance between mouse pointer and the box, within which the box stays revealed and no other focus space is offered to be accessed.
	 * The value is relative to magicline_triggerOffset.
	 * // Increases the distance to 80% of CKEDITOR.config.magicline_triggerOffset.
	 * CKEDITOR.config.magicline_holdDistance = .8;
	 * Defaults to: 0.5
	 */
	public var magicline_holdDistance:Float;
	
	/**
	 * Defines default keystroke that access the closest unreachable focus space after the caret (start of the selection).
	 * If there's not any focus space, selection remains.
	 * // Changes keystroke to CTRL + .
	 * CKEDITOR.config.magicline_keystrokeNext = CKEDITOR.CTRL + 190; )]
	 * Defaults to: CKEDITOR.CTRL + CKEDITOR.SHIFT + 221 (CTRL + SHIFT +
	 */
	public var magicline_keystrokeNext:Int;
	
	/**
	 * Defines default keystroke that access the closest unreachable focus space before the caret (start of the selection).
	 * If there's no any focus space, selection remains.
	 * // Changes keystroke to CTRL + ,
	 * CKEDITOR.config.magicline_keystrokePrevious = CKEDITOR.CTRL + 188;
	 * Defaults to: CKEDITOR.CTRL + CKEDITOR.SHIFT + 219 (CTRL + SHIFT + [)
	 */
	public var magicline_keystrokePrevious:Int;
	
	/**
	 * Activates plugin mode that considers all focus spaces between CKEDITOR.dtd.$block elements as accessible by the box.
	 * // Enables "put everywhere" mode.
	 * CKEDITOR.config.magicline_putEverywhere = true;
	 * Defaults to: false
	 */
	public var magicline_putEverywhere:Bool;
	
	/**
	 * Sets the default vertical distance between element edge and mouse pointer that causes the box to appear.
	 * The distance is expressed in pixels (px).
	 * // Changes the offset to 15px.
	 * CKEDITOR.config.magicline_triggerOffset = 15;
	 * Defaults to: 30
	 */
	public var magicline_triggerOffset:Int;
	
	/**
	 * A comma separated list of items group names to be displayed in the context menu.
	 * The order of items will reflect the order specified in this list if no priority was defined in the groups.
	 * config.menu_groups = 'clipboard,table,anchor,link,image';
	 * Defaults to: see source
	 */
	public var menu_groups:String;
	
	/**
	 * The amount of time, in milliseconds, the editor waits before displaying submenu options when moving the mouse over
	 * options that contain submenus, like the "Cell Properties" entry for tables.
	 * // Remove the submenu delay.
	 * config.menu_subMenuDelay = 0;
	 * Defaults to: 400
	 */
	public var menu_subMenuDelay:Int;
	
	/**
	 * The HTML to load in the editor when the "new page" command is executed
	 * config.newpage_html = '<p>Type your text here.</p>';
	 * Defaults to: ''
	 */
	public var newpage_html:String;
	
	/**
	 * Sets listeners on editor's events.
	 * Note: This property can be set only in config object passed directly to the CKEDITOR.replace, CKEDITOR.inline and other creators.
	 * CKEDITOR.replace( 'editor1', {
	 * 		on: {
	 * 			instanceReady: function() {
	 * 				alert( this.name ); // 'editor1'
	 * 			},
	 * 			key: function() {
	 * 				// ...
	 * 			}
	 * 		}
	 * });
	 */
	public var on:Dynamic;
	
	/**
	 * The file that provides the MS Word cleanup function for pasting operations.
	 * Note: This is a global configuration shared by all editor instances present in the page.
	 * // Load from 'pastefromword' plugin 'filter' sub folder (custom.js file) using path relative to CKEditor installation folder.
	 * CKEDITOR.config.pasteFromWordCleanupFile = 'plugins/pastefromword/filter/custom.js';
	 * // Load from 'pastefromword' plugin 'filter' sub folder (custom.js file) using full path (including CKEditor installation folder).
	 * CKEDITOR.config.pasteFromWordCleanupFile = '/ckeditor/plugins/pastefromword/filter/custom.js';
	 * // Load custom.js file from 'customFilerts' folder (located in server's root) using full URL.
	 * CKEDITOR.config.pasteFromWordCleanupFile = 'http://my.example.com/customFilerts/custom.js';
	 * Defaults to: <plugin path> + 'filter/default.js'
	 * Available since: 3.1
	 */
	public var pasteFromWordCleanupFile:String;
	
	/**
	 * Whether to transform MS Word outline numbered headings into lists.
	 * config.pasteFromWordNumberedHeadingToList = true;
	 * Defaults to: false
	 * Available since: 3.1
	 */
	public var pasteFromWordNumberedHeadingToList:Bool;
	
	/**
	 * Whether to prompt the user about the clean up of content being pasted from MS Word.
	 * config.pasteFromWordPromptCleanup = true;
	 * Defaults to: false
	 * Available since: 3.1
	 */
	public var pasteFromWordPromptCleanup:Bool;
	
	/**
	 * Whether to ignore all font related formatting styles, including:
	 * font size;
	 * font family;
	 * font foreground/background color.
	 * config.pasteFromWordRemoveFontStyles = false;
	 * Defaults to: true
	 * Available since: 3.1
	 */
	public var pasteFromWordRemoveFontStyles:Bool;
	
	/**
	 * Whether to remove element styles that can't be managed with the editor.
	 * Note that this doesn't handle the font specific styles,
	 * which depends on the pasteFromWordRemoveFontStyles setting instead.
	 * config.pasteFromWordRemoveStyles = false;
	 * Defaults to: true
	 * Available since: 3.1
	 */
	public var pasteFromWordRemoveStyles:Bool;
	
	/**
	 * Comma separated list of plugins to be used for an editor instance, besides,
	 * the actual plugins to be loaded could still be affected by two other settings:
	 * extraPlugins and removePlugins.
	 * Defaults to: "<default list of plugins>"
	 */
	public var plugins:String;
	
	/**
	 * List of regular expressions to be executed on input HTML,
	 * indicating HTML source code that when matched, must not be available in the WYSIWYG mode for editing.
	 * config.protectedSource.push( /<\?[\s\S]*?\?>/g );                                           // PHP code
	 * config.protectedSource.push( /<%[\s\S]*?%>/g );                                             // ASP code
	 * config.protectedSource.push( /(<asp:[^\>]+>[\s|\S]*?<\/asp:[^\>]+>)|(<asp:[^\>]+\/>)/gi );  // ASP.Net code
	 * Defaults to: []
	 */
	public var protectedSource:Array<EReg>;
	
	/**
	 * If true, makes the editor start in read-only state.
	 * Otherwise, it will check if the linked <textarea> element has the disabled attribute.
	 * config.readOnly = true;
	 * Defaults to: false
	 * Available since: 3.6
	 */
	public var readOnly:Bool;
	
	/**
	 * List of toolbar button names that must not be rendered. This will work as well for non-button toolbar items, like the Font combos.
	 * config.removeButtons = 'Underline,JustifyCenter';
	 * This configuration should not be overused, having removePlugins removing features from the editor.
	 * In some cases though, a single plugin may define a set of toolbar buttons and removeButtons may be useful when just a few of them are to be removed.
	 */
	public var removeButtons:String;
	
	/**
	 * The dialog contents to removed. It's a string composed by dialog name and tab name with a colon between them.
	 * Separate each pair with semicolon (see example).
	 * Note: All names are case-sensitive.
	 * Note: Be cautious when specifying dialog tabs that are mandatory, like 'info', dialog functionality might be broken because of this!
	 * config.removeDialogTabs = 'flash:advanced;image:Link';
	 * Defaults to: ''
	 * Available since: 3.5
	 */
	public var removeDialogTabs:String;
	
	/**
	 * A comma separated list of elements attributes to be removed when executing the remove format command.
	 * Defaults to: 'class,style,lang,width,height,align,hspace,valign'
	 */
	public var removeFormatAttributes:String;
	
	/**
	 * A comma separated list of elements to be removed when executing the remove format command. Note that only inline elements are allowed.
	 * Defaults to: 'b,big,code,del,dfn,em,font,i,ins,kbd,q,samp,small,span,strike,strong,sub,sup,tt,u,var'
	 */
	public var removeFormatTags:String;
	
	/**
	 * A list of plugins that must not be loaded.
	 * This setting makes it possible to avoid loading some plugins defined in the plugins setting, without having to touch it.
	 * Note: Plugin required by other plugin cannot be removed (error will be thrown).
	 * So e.g. if contextmenu is required by tabletools, then it can be removed only if tabletools isn't loaded.
	 * config.removePlugins = 'elementspath,save,font';
	 * Defaults to: ''
	 */
	public var removePlugins:String;
	
	/**
	 * The dimensions for which the editor resizing is enabled. Possible values are both, vertical, and horizontal
	 * config.resize_dir = 'both';
	 * Defaults to: 'vertical'
	 * Available since: 3.3
	 */
	public var resize_dir:String;
	
	/**
	 * Whether to enable the resizing feature. If this feature is disabled, the resize handle will not be visible.
	 * config.resize_enabled = false;
	 * Defaults to: true
	 */
	public var resize_enabled:Bool;
	
	/**
	 * The maximum editor height, in pixels, when resizing the editor interface by using the resize handle.
	 * config.resize_maxHeight = 600;
	 * Defaults to: 3000
	 */
	public var resize_maxHeight:Int;
	
	/**
	 * The maximum editor width, in pixels, when resizing the editor interface by using the resize handle.
	 * config.resize_maxWidth = 750;
	 * Defaults to: 3000
	 */
	public var resize_maxWidth:Int;
	
	/**
	 * The minimum editor height, in pixels, when resizing the editor interface by using the resize handle.
	 * Note: It falls back to editor's actual height if it is smaller than the default value.
	 * config.resize_minHeight = 600;
	 * Defaults to: 250
	 */
	public var resize_minHeight:Int;
	
	/**
	 * The minimum editor width, in pixels, when resizing the editor interface by using the resize handle.
	 * Note: It falls back to editor's actual width if it is smaller than the default value.
	 * config.resize_minWidth = 500
	 * Defaults to: 750
	 */
	public var resize_minWidth:Int;
	
	/**
	 * If enabled (set to true), turns on SCAYT automatically after loading the editor.
	 * config.scayt_autoStartup = true;
	 * Defaults to: false;
	 */
	public var scayt_autoStartup:Bool;
	
	/**
	 * Customizes the display of SCAYT context menu commands ("Add Word", "Ignore" and "Ignore All").
	 * This must be a string with one or more of the following words separated by a pipe character ('|'):
	 * off – disables all options
	 * all – enables all options.
	 * ignore – enables the "Ignore" option
	 * ignoreall – enables the "Ignore All" option.
	 * add – enables the "Add Word" option.
	 * Example:
	 * // Show only "Add Word" and "Ignore All" in the context menu.
	 * config.scayt_contextCommands = 'add|ignoreall';
	 * Defaults to: 'all'
	 */
	public var scayt_contextCommands:String;
	
	/**
	 * Defines the order SCAYT context menu items by groups.
	 * This must be a string with one or more of the following words separated by a pipe character ('|'):
	 * suggest – main suggestion word list,
	 * moresuggest – more suggestions word list,
	 * control – SCAYT commands, such as "Ignore" and "Add Word".
	 * Example:
	 * config.scayt_contextMenuItemsOrder = 'moresuggest|control|suggest';
	 * Defaults to: 'suggest|moresuggest|control'
	 */
	public var scayt_contextMenuItemsOrder:String;
	
	/**
	 * Links SCAYT to custom dictionaries. This is a string containing dictionary IDs separared by commas (',').
	 * Available only for the licensed version.
	 * Further details at http://wiki.webspellchecker.net/doku.php?id=installationandconfiguration:customdictionaries:licensed
	 * config.scayt_customDictionaryIds = '3021,3456,3478"';
	 * Defaults to: ''
	 */
	public var scayt_customDictionaryIds:String;
	
	/**
	 * Sets the customer ID for SCAYT. Required for migration from free, ad-supported version to paid, ad-free version
	 * // Load SCAYT using my customer ID.
	 * config.scayt_customerid  = 'your-encrypted-customer-id';
	 * Defaults to: ''
	 */
	public var scayt_customerid:String;
	
	/**
	 * Defines the number of SCAYT suggestions to show in the main context menu. Possible values are:
	 * 0 (zero) – All suggestions are displayed in the main context menu.
	 * Positive number – The maximum number of suggestions to show in the context menu.
	 * Other entries will be shown in the "More Suggestions" sub-menu.
	 * Negative number – No suggestions are shown in the main context menu.
	 * All entries will be listed in the the "Suggestions" sub-menu.
	 * Examples:
	 * // Display only three suggestions in the main context menu.
	 * config.scayt_maxSuggestions = 3;
	 * // Do not show the suggestions directly.
	 * config.scayt_maxSuggestions = -1;
	 * Defaults to: 5
	 */
	public var scayt_maxSuggestions:Int;
	
	/**
	 * Enables/disables the "More Suggestions" sub-menu in the context menu. Possible values are 'on' and 'off'.
	 * // Disables the "More Suggestions" sub-menu.
	 * config.scayt_moreSuggestions = 'off';
	 * Defaults to: 'on'
	 */
	public var scayt_moreSuggestions:String;
	
	/**
	 * Sets the default spell checking language for SCAYT.
	 * Possible values are: 'en_US', 'en_GB', 'pt_BR', 'da_DK', 'nl_NL', 'en_CA', 'fi_FI', 'fr_FR', 'fr_CA',
	 * 'de_DE', 'el_GR', 'it_IT', 'nb_NO', 'pt_PT', 'es_ES', 'sv_SE'.
	 * // Sets SCAYT to German.
	 * config.scayt_sLang = 'de_DE';
	 * Defaults to: 'en_US'
	 */
	public var scayt_sLang:String;
	
	/**
	 * Sets the URL to SCAYT core. Required to switch to the licensed version of SCAYT application.
	 * Further details available at http://wiki.webspellchecker.net/doku.php?id=migration:hosredfreetolicensedck
	 * config.scayt_srcUrl = "http://my-host/spellcheck/lf/scayt/scayt.js";
	 * Defaults to: ''
	 */
	public var scayt_srcUrl:String;
	
	/**
	 * Sets the visibility of particular tabs in the SCAYT dialog window and toolbar button.
	 * This setting must contain a 1 (enabled) or 0 (disabled) value for each of the following entries,
	 * in this precise order, separated by a comma (','): 'Options', 'Languages', and 'Dictionary'.
	 * // Hides the "Languages" tab.
	 * config.scayt_uiTabs = '1,0,1';
	 * Defaults to: '1,1,1'
	 */
	public var scayt_uiTabs:String;
	
	/**
	 * Makes it possible to activate a custom dictionary in SCAYT.
	 * The user dictionary name must be used. Available only for the licensed version.
	 * config.scayt_userDictionaryName = 'MyDictionary';
	 * Defaults to: ''
	 */
	public var scayt_userDictionaryName:String;
	
	/**
	 * Makes it possible to place some of the editor UI blocks, like the toolbar and the elements path, into any element in the page.
	 * The elements used to hold the UI blocks can be shared among several editor instances.
	 * In that case, only the blocks of the active editor instance will display
	 * // Place the toolbar inside the element with ID "someElementId" and the
	 * // elements path into the element with ID "anotherId".
	 * config.sharedSpaces = {
	 * 		top: 'someElementId',
	 * 		bottom: 'anotherId'
	 * };
	 * // Place the toolbar inside the element with ID "someElementId". The
	 * // elements path will remain attached to the editor UI.
	 * config.sharedSpaces = {
	 * 		top: 'someElementId'
	 * };
	 */
	public var sharedSpaces:Dynamic<String>;
	
	/**
	 * Similarly to the enterMode setting, it defines the behavior of the Shift+Enter key combination.
	 * The allowed values are the following constants the behavior outlined below:
	 * CKEDITOR.ENTER_P (1) – new <p> paragraphs are created
	 * CKEDITOR.ENTER_BR (2) – lines are broken with <br> elements;
	 * CKEDITOR.ENTER_DIV (3) – new <div> blocks are created.
	 * Example:
	 * 		config.shiftEnterMode = CKEDITOR.ENTER_P;
	 * Defaults to: CKEDITOR.ENTER_BR
	 */
	public var shiftEnterMode:Int;
	
	/**
	 * The editor skin name. Note that is is not possible to have editors with different skin settings in the same page.
	 * In such case, just one of the skins will be used for all editors.
	 * This is a shortcut to CKEDITOR.skinName.
	 * It is possible to install skins outside the default skin folder in the editor installation.
	 * In that case, the absolute URL path to that folder should be provided, separated by a comma ('skin_name,skin_path').
	 * @example config.skin = 'moono';
	 * @example config.skin = 'myskin,/customstuff/myskin/';
	 */
	public var skin:String;
	
	/**
	 * The number of columns to be generated by the smilies matrix.
	 * @example config.smiley_columns = 6;
	 * @default 8
	 * @since 3.3.2
	 */
	public var smiley_columns:Int;
	
	/**
	 * The description to be used for each of the smileys defined in the smiley_images setting.
	 * Each entry in this array list must match its relative pair in the smiley_images setting.
	 * @see smiley_images
	 * @example // Default settings.
	 * 			config.smiley_descriptions = [
	 * 				'smiley', 'sad', 'wink', 'laugh', 'frown', 'cheeky', 'blush', 'surprise',
	 * 				'indecision', 'angry', 'angel', 'cool', 'devil', 'crying', 'enlightened', 'no',
	 * 				'yes', 'heart', 'broken heart', 'kiss', 'mail'
	 * 			];
	 * 			// Use textual emoticons as description.
	 * 			config.smiley_descriptions = [
	 * 				':)', ':(', ';)', ':D', ':/', ':P', ':*)', ':-o',
	 * 				':|', '>:(', 'o:)', '8-)', '>:-)', ';(', '', '', '',
	 * 				'', '', ':-*', ''
	 * 			];
	 * @default ['smiley', 'sad', 'wink', 'laugh', 'frown', 'cheeky', 'blush', 'surprise', 'indecision', 'angry', 'angel', 'cool', 'devil', 'crying', 'enlightened', 'no', 'yes', 'heart', 'broken heart', 'kiss', 'mail']
	 */
	public var smiley_descriptions:Array<String>;
	
	/**
	 * The file names for the smileys to be displayed.
	 * These files must be contained inside the URL path defined with the smiley_path setting.
	 * @see smiley_path
	 * @example // This is actually the default value.
	 * 			config.smiley_images = [
	 * 				'regular_smile.gif','sad_smile.gif','wink_smile.gif','teeth_smile.gif','confused_smile.gif','tongue_smile.gif',
	 * 				'embarrassed_smile.gif','omg_smile.gif','whatchutalkingabout_smile.gif','angry_smile.gif','angel_smile.gif','shades_smile.gif',
	 * 				'devil_smile.gif','cry_smile.gif','lightbulb.gif','thumbs_down.gif','thumbs_up.gif','heart.gif',
	 * 				'broken_heart.gif','kiss.gif','envelope.gif'
	 * 			];
	 * @default ['regular_smile.gif', 'sad_smile.gif', 'wink_smile.gif', 'teeth_smile.gif', 'confused_smile.gif', 'tongue_smile.gif', 'embarrassed_smile.gif', 'omg_smile.gif', 'whatchutalkingabout_smile.gif', 'angry_smile.gif', 'angel_smile.gif', 'shades_smile.gif', 'devil_smile.gif', 'cry_smile.gif', 'lightbulb.gif', 'thumbs_down.gif', 'thumbs_up.gif', 'heart.gif', 'broken_heart.gif', 'kiss.gif', 'envelope.gif']
	 */
	public var smiley_images:Array<String>;
	
	/**
	 * The base path used to build the URL for the smiley images. It must end with a slash.
	 * @example config.smiley_path = 'http://www.example.com/images/smileys/';
	 * 			config.smiley_path = '/images/smileys/';
	 * @default CKEDITOR.basePath + 'plugins/smiley/images/'
	 */
	public var smiley_path:String;
	
	/**
	 * Controls CSS tab-size property of the sourcearea view.
	 * Note: Works only with dataIndentationChars set to '\t'. Please consider that not all browsers support CSS tab-size property yet.
	 * @see dataIndentationChars
	 * @example // Set tab-size to 20 characters.
	 * 			CKEDITOR.config.sourceAreaTabSize = 20;
	 * @default 4
	 */
	public var sourceAreaTabSize:Int;
	
	/**
	 * The list of special characters visible in the "Special Character" dialog window.
	 * @example config.specialChars = [ '&quot;', '&rsquo;', [ '&custom;', 'Custom label' ] ];
	 * 			config.specialChars = config.specialChars.concat( [ '&quot;', [ '&rsquo;', 'Custom label' ] ] );
	 * @default ['!', '&quot;', '#', '$', '%', '&amp;', "'", '(', ')', '*', '+', '-', '.', '/', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', ';', '&lt;', '=', '&gt;', '?', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[', ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|', '}', '~', "&euro;", "&lsquo;", "&rsquo;", "&ldquo;", "&rdquo;", "&ndash;", "&mdash;", "&iexcl;", "&cent;", "&pound;", "&curren;", "&yen;", "&brvbar;", "&sect;", "&uml;", "&copy;", "&ordf;", "&laquo;", "&not;", "&reg;", "&macr;", "&deg;", "&sup2;", "&sup3;", "&acute;", "&micro;", "&para;", "&middot;", "&cedil;", "&sup1;", "&ordm;", "&raquo;", "&frac14;", "&frac12;", "&frac34;", "&iquest;", "&Agrave;", "&Aacute;", "&Acirc;", "&Atilde;", "&Auml;", "&Aring;", "&AElig;", "&Ccedil;", "&Egrave;", "&Eacute;", "&Ecirc;", "&Euml;", "&Igrave;", "&Iacute;", "&Icirc;", "&Iuml;", "&ETH;", "&Ntilde;", "&Ograve;", "&Oacute;", "&Ocirc;", "&Otilde;", "&Ouml;", "&times;", "&Oslash;", "&Ugrave;", "&Uacute;", "&Ucirc;", "&Uuml;", "&Yacute;", "&THORN;", "&szlig;", "&agrave;", "&aacute;", "&acirc;", "&atilde;", "&auml;", "&aring;", "&aelig;", "&ccedil;", "&egrave;", "&eacute;", "&ecirc;", "&euml;", "&igrave;", "&iacute;", "&icirc;", "&iuml;", "&eth;", "&ntilde;", "&ograve;", "&oacute;", "&ocirc;", "&otilde;", "&ouml;", "&divide;", "&oslash;", "&ugrave;", "&uacute;", "&ucirc;", "&uuml;", "&yacute;", "&thorn;", "&yuml;", "&OElig;", "&oelig;", "&#372;", "&#374", "&#373", "&#375;", "&sbquo;", "&#8219;", "&bdquo;", "&hellip;", "&trade;", "&#9658;", "&bull;", "&rarr;", "&rArr;", "&hArr;", "&diams;", "&asymp;"]
	 */
	public var specialChars:Array<String>;
	
	/**
	 * Sets whether the editable should have the focus when editor is loading for the first time.
	 * @example config.startupFocus = true;
	 * @default false
	 */
	public var startupFocus:Bool;
	
	/**
	 * The mode to load at the editor startup. It depends on the plugins loaded. By default, the wysiwyg and source modes are available.
	 * @example config.startupMode = 'source';
	 * @default 'wysiwyg'
	 */
	public var startupMode:String;
	
	/**
	 * Whether to automaticaly enable the show block" command when the editor loads.
	 * @example config.startupOutlineBlocks = true;
	 * @default false
	 */
	public var startupOutlineBlocks:Bool;
	
	/**
	 * Whether to automatically enable the "show borders" command when the editor loads.
	 * @example config.startupShowBorders = false;
	 * @default true
	 */
	public var startupShowBorders:Bool;
	
	/**
	 * The "styles definition set" to use in the editor.
	 * They will be used in the styles combo and the style selector of the div container.
	 * The styles may be defined in the page containing the editor, or can be loaded on demand from an external file.
	 * In the second case, if this setting contains only a name,
	 * the styles.js file will be loaded from the CKEditor root folder (what ensures backward compatibility with CKEditor 4.0).
	 * Otherwise, this setting has the name:url syntax, making it possible to set the URL from which loading the styles file.
	 * Note that the name has to be equal to the name used in CKEDITOR.stylesSet.add while registering styles set.
	 * Note: Since 4.1 it is possible to set stylesSet to false to prevent loading any styles set.
	 * @example // Do not load any file. Styles set is empty.
	 * 			config.stylesSet = false;
	 * 			// Load the 'mystyles' styles set from styles.js file.
	 * 			config.stylesSet = 'mystyles';
	 * 			// Load the 'mystyles' styles set from a relative URL.
	 * 			config.stylesSet = 'mystyles:/editorstyles/styles.js';
	 * 			// Load from a full URL.
	 * 			config.stylesSet = 'mystyles:http://www.example.com/editorstyles/styles.js';
	 * 			// Load from a list of definitions.
	 * 			config.stylesSet = [
	 * 				{ name: 'Strong Emphasis', element: 'strong' },
	 * 				{ name: 'Emphasis', element: 'em' },
	 * 				...
	 * 			];
	 * @default 'default'
	 * @since 3.3
	 */
	public var stylesSet:Dynamic;
	
	/**
	 * A regular expression that defines whether a CSS rule will be skipped by the Stylesheet Parser plugin.
	 * A CSS rule matching the regular expression will be ignored and will not be available in the Styles drop-down list.
	 * @example // Ignore rules for body and caption elements, classes starting with "high", and any class defined for no specific element.
	 * 			config.stylesheetParser_skipSelectors = /(^body\.|^caption\.|\.high|^\.)/i;
	 * @default /(^body\.|^\.)/i
	 * @since 3.6
	 */
	public var stylesheetParser_skipSelectors:EReg;
	
	/**
	 * A regular expression that defines which CSS rules will be used by the Stylesheet Parser plugin.
	 * A CSS rule matching the regular expression will be available in the Styles drop-down list.
	 * @example // Only add rules for p and span elements.
	 * 			config.stylesheetParser_validSelectors = /\^(p|span)\.\w+/;
	 * @default /\w+\.\w+/
	 * @since 3.6
	 */
	public var stylesheetParser_validSelectors:EReg;
	
	/**
	 * The editor tabindex value.
	 * @example config.tabIndex = 1;
	 * @default 0 
	 */
	public var tabIndex:Int;
	
	/**
	 * Intructs the editor to add a number of spaces (&nbsp;) to the text when hitting the TAB key.
	 * If set to zero, the TAB key will be used to move the cursor focus to the next element in the page, out of the editor focus.
	 * @example config.tabSpaces = 4;
	 * @default 0
	 */
	public var tabSpaces:Int;
	
	/**
	 * The templates definition set to use. It accepts a list of names separated by comma.
	 * It must match definitions loaded with the templates_files setting.
	 * @see templates_files
	 * @example config.templates = 'my_templates';
	 * @default 'default'
	 */
	public var templates:String;
	
	/**
	 * The list of templates definition files to load.
	 * @example config.templates_files = [
	 * 				'/editor_templates/site_default.js',
	 * 				'http://www.example.com/user_templates.js'
	 * 			];
	 */
	public var templates_files:Array<String>;
	
	/**
	 * Whether the "Replace actual contents" checkbox is checked by default in the Templates dialog.
	 * @example config.templates_replaceContent = false;
	 * @default true
	 */
	public var templates_replaceContent:Bool;
	
	/**
	 * The toolbox (alias toolbar) definition. It is a toolbar name or an array of toolbars (strips),
	 * each one being also an array, containing a list of UI items.
	 * If set to null, generate toolbar automatically using all available buttons and toolbarGroups as a toolbar groups layout.
	 * @example // Defines a toolbar with only one strip containing the "Source" button, a
	 * 			// separator and the "Bold" and "Italic" buttons.
	 * 			config.toolbar = [
	 * 				[ 'Source', '-', 'Bold', 'Italic' ]
	 * 			];
	 * 			// Similar to example the above, defines a "Basic" toolbar with only one strip containing three buttons.
	 * 			// Note that this setting is composed by "toolbar_" added by the toolbar name, which in this case is called "Basic".
	 * 			// This second part of the setting name can be anything. You must use this name in the CKEDITOR.config.toolbar setting,
	 * 			// so you instruct the editor which toolbar_(name) setting to use.
	 * 			config.toolbar_Basic = [
	 * 				[ 'Source', '-', 'Bold', 'Italic' ]
	 * 			];
	 * 			// Load toolbar_Name where Name = Basic.
	 * 			config.toolbar = 'Basic';
	 * @default null
	 */
	public var toolbar:Array<Array<String>>;
	
	/**
	 * Whether the toolbar can be collapsed by the user. If disabled, the collapser button will not be displayed.
	 * @example config.toolbarCanCollapse = true;
	 * @default false
	 */
	public var toolbarCanCollapse:Bool;
	
	/**
	 * When enabled, makes the arrow keys navigation cycle within the current toolbar group.
	 * Otherwise the arrows will move through all items available in the toolbar. 
	 * The TAB key will still be used to quickly jump among the toolbar groups.
	 * @example config.toolbarGroupCycling = false;
	 * @default true
	 * @since 3.6
	 */
	public var toolbarGroupCycling:Bool;
	
	/**
	 * The toolbar groups definition.
	 * If toolbar layout isn't explicitly defined by toolbar setting, then this setting is used to group all defined buttons (see CKEDITOR.ui.addButton).
	 * Buttons are associated with toolbar groups by toolbar property in their definition objects.
	 * New groups may be dynamically added during the editor and plugins initialization by CKEDITOR.ui.addToolbarGroup. Although only if default setting was used.
	 * @example // Default setting. config.toolbarGroups = [
					{ name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
					{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
					{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
					{ name: 'forms' },
					'/',
					{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
					{ name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
					{ name: 'links' },
					{ name: 'insert' },
					'/',
					{ name: 'styles' },
					{ name: 'colors' },
					{ name: 'tools' },
					{ name: 'others' },
					{ name: 'about' }
				];
	 * @default see example
	 * @see CKEDITOR.ui.addButton
	 */
	public var toolbarGroups:Array<Dynamic>;
	
	/**
	 * The "UI space" to which rendering the toolbar.
	 * For the default editor implementation, the recommended options are 'top' and 'bottom'.
	 * @example config.toolbarLocation = 'bottom';
	 * @default 'top'
	 */
	public var toolbarLocation:String;
	
	/**
	 * Whether the toolbar must start expanded when the editor is loaded.
	 * Setting this option to false will affect toolbar only when toolbarCanCollapse is set to true:
	 * @example config.toolbarCanCollapse = true;
				config.toolbarStartupExpanded = false;
	 * @default true
	 * @see toolbarCanCollapse
	 */
	public var toolbarStartupExpanded:Bool;
	
	/**
	 * The base user interface color to be used by the editor. Not all skins are compatible with this setting.
	 * @example // Using a color code.
	 * 			config.uiColor = '#AADC6E';
	 * 			// Using an HTML color name.
	 * 			config.uiColor = 'Gold';
	 */
	public var uiColor:String;
	
	/**
	 * The number of undo steps to be saved. The higher this setting value the more memory is used for it.
	 * @example config.undoStackSize = 50;
	 * @default 20
	 */
	public var undoStackSize:Int;
	
	/**
	 * Indicates that some of the editor features, like alignment and text direction,
	 * should use the "computed value" of the feature to indicate its on/off state instead of using the "real value".
	 * If enabled in a Left-To-Right written document, the "Left Justify" alignment button will be shown as active,
	 * even if the alignment style is not explicitly applied to the current paragraph in the editor.
	 * @example config.useComputedState = false;
	 * @default true
	 * @since 3.4
	 */
	public var useComputedState:Bool;
	
	/**
	 * The editor UI outer width. This can be an integer, for pixel sizes, or any CSS-defined unit.
	 * Unlike the height setting, this one will set the outer width of the entire editor UI,
	 * not for the editing area only.
	 * @example config.width = 850;     // 850 pixels wide.
	 * 			config.width = '75%';   // CSS unit.
	 * @default ''
	 */
	public var width:Dynamic;
}