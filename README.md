ckeditor-externs
================

HaxeJS externs for CKEDITOR

These externs are NOT complete but they already work well enough to be usefull.

Over time I want to improve the typing etc. (still afew too dynamics for my liking).

Here are a couple of quick examples of usage.

1. Replace a textarea with the default editor...

var contentBox = Lib.document.getElementById("contentBox");
CKEDITOR.replace(contentBox);

2. Create a custom inline editor in a div called "contentWrapper" which has contenteditable="true" as an attribute.

var mainConfig = cast( { } );
mainConfig.format_tags = "p;h4;h5";
mainConfig.allowedContent = {
                							"p h4 h5 ol ul li em strong": {},
                							"a": {
                									attributes:"!href"
                							},
                							"p": {
                									classes:"italic-quote"
                							},
                								"div": {
                										classes:"*",
                										attributes:"*"
                								}
  						              };
mainConfig.removeButtons = "Styles";
var mainEditorDOM = new Element(Lib.document.getElementById("contentWrapper"));
CKEDITOR.inlineEditor(mainEditorDOM, mainConfig);
CKEDITOR.instances.contentWrapper.on(Editor.FOCUS, editorFocussed);
CKEDITOR.instances.contentWrapper.on(Editor.BLUR, editorBlurred);
