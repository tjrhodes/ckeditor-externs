#!/bin/sh

libname='ckeditor-externs'
rm -f "${libname}.zip"
zip -r "${libname}.zip" haxelib.json ckeditor README.md
echo "Saved as ${libname}.zip"
