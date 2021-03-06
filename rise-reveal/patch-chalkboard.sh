#!/bin/sh
patch export/reveal.js-chalkboard/chalkboard.js <<EOF
--- chalkboard.js.orig	2020-10-24 15:02:34.000000000 +0200
+++ chalkboard.js	2020-10-24 15:02:41.000000000 +0200
@@ -152,7 +152,7 @@
 		button.style.top = toggleChalkboardButton.top ||  "auto";
 		button.style.right = toggleChalkboardButton.right ||  "auto";
 
-		button.innerHTML = '<a href="#" onclick="RevealChalkboard.toggleChalkboard(); return false;"><i class="fa fa-pen-square"></i></a>'
+		button.innerHTML = '<a href="#" onclick="RevealChalkboard.toggleChalkboard(); return false;"><i class="fa fa-pencil-square"></i></a>'
 		document.querySelector(".reveal").appendChild( button );
 	}
 	if ( toggleNotesButton ) {
@@ -169,7 +169,7 @@
 		button.style.top = toggleNotesButton.top ||  "auto";
 		button.style.right = toggleNotesButton.right ||  "auto";
 
-		button.innerHTML = '<a href="#" onclick="RevealChalkboard.toggleNotesCanvas(); return false;"><i class="fa fa-pen"></i></a>'
+		button.innerHTML = '<a href="#" onclick="RevealChalkboard.toggleNotesCanvas(); return false;"><i class="fa fa-pencil"></i></a>'
 		document.querySelector(".reveal").appendChild( button );
 	}
 //alert("Buttons");
@@ -259,10 +259,11 @@
 ** Storage
 ******************************************************************/
 
-	var storage = [
-		{ width: Reveal.getConfig().width, height: Reveal.getConfig().height, data: []},
-		{ width: Reveal.getConfig().width, height: Reveal.getConfig().height, data: []}
-	];
+        var storage = [
+                        { width: drawingCanvas[0].width - 2 * drawingCanvas[0].xOffset, height: drawingCanvas[0].height - 2 * drawingCanvas[0].yOffset, data: []},
+                        { width: drawingCanvas[1].width, height: drawingCanvas[1].height, data: []}
+                ];
+
 //console.log( JSON.stringify(storage));
 
 	var loaded = null;
EOF
