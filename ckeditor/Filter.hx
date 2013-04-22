package ckeditor;
import ckeditor.filter.ContentRule;
import ckeditor.htmlParser.Element;
import ckeditor.htmlParser.Fragment;

/**
 * ...
 * @author Tom Rhodes
 */
extern class Filter
{
	// 	PROPERTIES
	
	/**
	 * Array of rules added by the allow method (including those loaded from
	 * CKEDITOR.config.allowedContent and CKEDITOR.config.extraAllowedContent).
	 * @see CKEDITOR.config.allowedContent
	 * @see CKEDITOR.config.extraAllowedContent
	 * Rules in this array are in unified allowed content rules format.
	 * This property is useful for debugging issues with rules string parsing or for checking which rules were automatically added by editor features.
	 */
	public var allowedContent(default, null):Array<Dynamic>;
	
	/**
	 * Whether custom CKEDITOR.config.allowedContent was set.
	 * This property does not apply to the standalone filter.
	 * @see CKEDITOR.config.allowedContent
	 */
	public var customConfig(default, null):Bool;
	
	/**
	 * Whether the filter is disabled. ..
	 */
	public var disabled(default, null):Bool;
	
	/**
	 * Editor instance if not a standalone filter.
	 * @default null
	 */
	public var editor(default, null):Null<Editor>;
	
	/**
	 * Enter mode used by the filter when deciding how to strip disallowed elements.
	 * For editor filter it will be set to CKEDITOR.config.enterMode unless this is a blockless
	 * (see CKEDITOR.editor.blockless) editor — in this case CKEDITOR.ENTER_BR will be forced.
	 * @see CKEDITOR.editor.blockless
	 * For the standalone filter by default it will be set to CKEDITOR.ENTER_P.
	 * @default CKEDITOR.ENTER_P
	 */
	public var enterMode(default, null):Int;
	
	// METHODS
	
	/**
	 * Creates a filter class instance.
	 * @param editor:Editor
	 * OR
	 * @param rules:Dynamic - CKEDITOR.filter.allowedContentRules
	 * OR
	 * @param rules:String - CKEDITOR.filter.allowedContentRules
	 */
	@:overload(function(rules:Dynamic):Void{})
	@:overload(function(rules:String):Void{})
	public function new(editor:Editor):Void;
	
	/**
	 * Adds an array of CKEDITOR.feature content forms. All forms will then be transformed
	 * to the first form which is allowed by the filter.
	 * @example editor.filter.allow( 'i; span{!font-style}' );
	 * 			editor.filter.addContentForms( [
	 * 				'em',
	 * 				'i',
	 * 				[ 'span', function( el ) {
	 * 					return el.styles[ 'font-style' ] == 'italic';
	 * 				} ]
	 * 			] );
	 * 			// Now <em> and <span style="font-style:italic"> will be replaced with <i>
	 * 			// because this is the first allowed form.
	 * 			// <span> is allowed too, but it is the last form and
	 * 			// additionaly, the editor cannot transform an element based on
	 * 			// the array+function form).
	 * @param	forms:Array<Dynamic> - The feature's content forms.
	 */
	public function addContentForms(forms:Array<Dynamic>):Void;
	
	/**
	 * Checks whether a feature can be enabled for the HTML restrictions in place for the current CKEditor instance,
	 * based on the HTML the feature might generate and the minimal HTML the feature needs to be able to generate.
	 * @param	feature : Feature (CKEDITOR.feature) - 
	 * @return	Bool - whether the feature was enabled successfully
	 */
	public function addFeature(feature:Feature):Bool;
	
	/**
	 * Adds an array of content transformation groups. One group may contain many transformation rules,
	 * but only the first matching rule in a group is executed.
	 * A single transformation rule is an object with four properties:
	 * check (optional) – if set and CKEDITOR.filter does not accept this allowed content rule,
	 * this transformation rule will not be executed (it does not match). This value is passed to check.
	 * element (optional) – this string property tells the filter on which element this transformation can be run.
	 * It is optional, because the element name can be obtained from check (if it is a String format) or left
	 * (if it is a CKEDITOR.style instance).
	 * left (optional) – a function accepting an element or a CKEDITOR.style instance verifying whether
	 * the transformation should be executed on this specific element. If it returns false or if an element
	 * does not match this style, this transformation rule does not match.
	 * right – a function accepting an element and CKEDITOR.filter.transformationsTools or a string containing the
	 * name of the CKEDITOR.filter.transformationsTools method that should be called on an element.
	 * A shorthand format is also available. A transformation rule can be defined by a single string 'check:right'.
	 * The string before ':' will be used as the check property and the second part as the right property.
	 * Transformation rules can be grouped. The filter will try to apply the first rule in a group. If it matches,
	 * the filter will ignore subsequent rules and will move to the next group. If it does not match,
	 * the next rule will be checked.
	 * @example	editor.filter.addTransformations( [
	 * 				// First group.
	 * 				[
	 * 					// First rule. If table{width} is allowed, it
	 * 					// executes CKEDITOR.filter.transformationsTools.sizeToStyle on a table element.
	 * 					'table{width}: sizeToStyle',
	 * 					// Second rule should not be executed if the first was.
	 * 					'table[width]: sizeToAttribute'
	 * 				],
	 * 				// Second group.
	 * 				[
	 * 					// This rule will add the foo="1" attribute to all images that
	 * 					// do not have it.
	 * 					{
	 * 						element: 'img',
	 * 						left: function( el ) {
	 * 							return !el.attributes.foo;
	 * 						},
	 * 						right: function( el, tools ) {
	 * 							el.attributes.foo = '1';
	 * 						}
	 * 					}
	 * 				]
	 * 			] );
	 * 			// Case 1:
	 * 			// config.allowedContent = 'table{height,width}; tr td'.
	 * 			//
	 * 			// '<table style="height:100px; width:200px">...</table>'       -> '<table style="height:100px; width:200px">...</table>'
	 * 			// '<table height="100" width="200">...</table>'                -> '<table style="height:100px; width:200px">...</table>'
	 * 			// Case 2:
	 * 			// config.allowedContent = 'table[height,width]; tr td'.
	 * 			//
	 * 			// '<table style="height:100px; width:200px">...</table>'       -> '<table height="100" width="200">...</table>'
	 * 			// '<table height="100" width="200">...</table>'                -> '<table height="100" width="200"">...</table>'
	 * 			// Case 3:
	 * 			// config.allowedContent = 'table{width,height}[height,width]; tr td'.
	 * 			//
	 * 			// '<table style="height:100px; width:200px">...</table>'       -> '<table style="height:100px; width:200px">...</table>'
	 * 			// '<table height="100" width="200">...</table>'                -> '<table style="height:100px; width:200px">...</table>'
	 * 			//
	 * 			// Note: Both forms are allowed (size set by style and by attributes), but only
	 * 			// the first transformation is applied &mdash; the size is always transformed to a style.
	 * 			// This is because only the first transformation matching allowed content rules is applied.
	 * 			This method is used by the editor to add CKEDITOR.feature.contentTransformations
	 * 			when adding a feature by addFeature or CKEDITOR.editor.addFeature.
	 * @param	transformations:Array<Dynamic>
	 */
	public function addTransformations(transformations:Array<Dynamic>):Void;
	
	/**
	 * Adds allowed content rules to the filter.
	 * Read about rules formats in Allowed Content Rules guide.
	 * @example	// Add a basic rule for custom image feature (e.g. 'MyImage' button).
	 * 			editor.filter.allow( 'img[!src,alt]', 'MyImage' );
	 * 			// Add rules for two header styles allowed by 'HeadersCombo'.
	 * 			var header1Style = new CKEDITOR.style( { element: 'h1' } ),
	 * 			header2Style = new CKEDITOR.style( { element: 'h2' } );
	 * 			editor.filter.allow( [ header1Style, header2Style ], 'HeadersCombo' );
	 * @param	newRules 		: Dynamic
	 * @param	featureName		: String (optional)
	 * @param	overrideCustom	: Bool (optional)
	 * @return	Bool - Whether the rules were accepted
	 */
	public function allow(newRules:Dynamic, ?featureName:String, ?overrideCustom:Bool):Bool;
	
	/**
	 * Applies this filter to passed CKEDITOR.htmlParser.fragment or CKEDITOR.htmlParser.element.
	 * The result of filtering is a DOM tree without disallowed content.
	 * @example // Create standalone filter passing 'p' and 'b' elements.
	 * 			var filter = new CKEDITOR.filter( 'p b' ),
	 * 			// Parse HTML string to pseudo DOM structure.
	 * 			fragment = CKEDITOR.htmlParser.fragment.fromHtml( '<p><b>foo</b> <i>bar</i></p>' ),
	 * 			writer = new CKEDITOR.htmlParser.basicWriter();
	 * 			filter.applyTo( fragment );
	 * 			fragment.writeHtml( writer );
	 * 			writer.getHtml(); // -> '<p><b>foo</b> bar</p>'
	 * @param	fragment 		: htmlParser.Element OR Fragment - Node to be filtered.
	 * @param	toHtml			: Bool (optional) - Set to true if the filter is used together with CKEDITOR.htmlDataProcessor.toHtml.
	 * @param	transformOnly	: Bool (optional) - If set to true only transformations will be applied.
	 * 												Content will not be filtered with allowed content rules.
	 * @return	Bool - Whether some part of the fragment was removed by the filter.
	 */
	@:overload(function(fragment:Element, ?toHtml:Bool, ?transfromOnly:Bool):Bool{})
	public function applyTo(fragment:Fragment, ?toHtml:Bool, ?transformOnly:Bool):Bool;
	
	/**
	 * Checks whether the content defined in the test argument is allowed by this filter.
	 * If strictCheck is set to false (default value), this method checks if all parts of the test (styles, attributes, and classes)
	 * are accepted by the filter. If strictCheck is set to true, the test must also contain the required attributes,styles, and classes.
	 * @example // Rule: 'img[!src,alt]'.
	 * 			filter.check( 'img[alt]' ); // -> true
	 * 			filter.check( 'img[alt]', true, true ); // -> false
	 * Second check() call returned false because src is required.
	 * @param	test					: ContentRule
	 * @param	applyTransformations	: Bool (optional) - Whether to use registered transformations.
	 * @param	strictCheck				: Bool (optional) - Whether the filter should check if an element with exactly these properties is allowed.
	 * @return	Bool - Returns true if the content is allowed.
	 */
	public function check(test:ContentRule, ?applyTransformations:Bool , ?strictCheck:Bool):Bool;
	
	/**
	 * Checks whether a CKEDITOR.feature can be enabled. Unlike addFeature, this method always checks the feature,
	 * even when the default configuration for CKEDITOR.config.allowedContent is used.
	 * 
	 * @param	feature	: Feature - The feature to be tested.
	 * @return	Bool - Whether this feature can be enabled.
	 */
	public function checkFeature(feature:Feature):Bool;
	
	/**
	 * Disables Advanced Content Filter.
	 * This method is meant to be used by plugins which are not compatible with the filter and in other cases
	 * in which the filter has to be disabled during the initialization phase or runtime.
	 * In other cases the filter can be disabled by setting CKEDITOR.config.allowedContent to true.
	 * @see CKEDITOR.config.allowedContent
	 */
	public function disable():Void;
}
