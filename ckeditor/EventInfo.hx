package ckeditor;

extern class EventInfo
{
	// PROPERTIES
	
	/**
	 * Any kind of additional data. Its format and usage is event dependent
	 * @example someObject.on( 'someEvent', function( event ) {alert( event.data );} ); // 'Example'
	 * 			someObject.fire( 'someEvent', 'Example' );
	 */
	public var data(default, null):Dynamic;
	
	/**
	 * The editor instance that holds the sender. May be the same as sender.
	 * May be null if the sender is not part of an editor instance, like a component running in standalone mode.
	 * @example	myButton.on( 'someEvent', function( event ) {
	 * 				alert( event.editor == myEditor ); // true
	 * 			} );
	 * 			myButton.fire( 'someEvent', null, myEditor );
	 */
	public var editor(default, null):Editor;
	
	/**
	 * Any extra data appended during the listener registration.
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				alert( event.listenerData ); // 'Example'
	 * 			}, null, 'Example' );
	 */
	public var listenerData(default, null):Dynamic;
	
	/**
	 * The event name.
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				alert( event.name ); // 'someEvent'
	 * 			} );
	 * 			someObject.fire( 'someEvent' );
	 */
	public var name(default, null):String;
	
	/**
	 * The object that publishes (sends) the event.
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				alert( event.sender == someObject ); // true
	 * 			} );
	 * 			someObject.fire( 'someEvent' );
	 */
	public var sender(default, null):Dynamic;
	
	// METHODS
	
	/**
	 * Indicates that the event is to be cancelled (if cancelable).
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				event.cancel();
	 * 			} );
	 * 			someObject.on( 'someEvent', function( event ) {
	 * 				// This one will not be called.
	 * 			} );
	 * 			alert( someObject.fire( 'someEvent' ) ); // true
	 */
	public function cancel():Void;
	
	/**
	 * Removes the current listener.
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				event.removeListener(); // Now this function won't be called again by 'someEvent'.
	 * 			} );
	 */
	public function removeListener():Void;
	
	/**
	 * Indicates that no further listeners are to be called.
	 * @example	someObject.on( 'someEvent', function( event ) {
	 * 				event.stop();
	 * 			} );
	 * 			someObject.on( 'someEvent', function( event ) {
	 * 				// This one will not be called.
	 * 			} );
	 * 			alert( someObject.fire( 'someEvent' ) ); // false
	 */
	public function stop():Void;
}