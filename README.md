_Es reicht aus, die unten aufgeführte Software installiert zu haben, der Rest geschieht durch die Batch-Dateien._ Sämtliche benötigten Komponenten, die hier verlinkt sind, sind freie Software.

Zum Kompilieren ist zuallererst [Pandoc](https://pandoc.org/) nötig: 

	pandoc 2.0.5
	Compiled with pandoc-types 1.17.3, texmath 0.10, skylighting 0.5
	Default user data directory: C:\Users\Christian\AppData\Roaming\pandoc
	Copyright (C) 2006-2017 John MacFarlane
	Web:  http://pandoc.org
	This is free software; see the source for copying conditions.
	There is no warranty, not even for merchantability or fitness
	for a particular purpose.
	
benutzt. Zur PDF-Erstellung ist weiters xelatex notwendig, ich empfehle die Distribution [MikTeX](https://miktex.org/):

	MiKTeX-XeTeX 2.9.6501 (0.99998) (MiKTeX 2.9.6500 64-bit)
	(C) 1994-2008 by SIL International, (C) 2009-2012 by Jonathan Kew, (C) 2010-2012 by Han The Thanh, (C) 2012-2013 by Khaled Hosny
	TeX is a trademark of the American Mathematical Society.
	using bzip2 version 1.0.6, 6-Sept-2010
	compiled with curl version 7.56.1; using libcurl/7.56.1 WinSSL
	compiled with expat version 2.2; using expat_2.2.0
	compiled with fontconfig version 2.12.6; using 2.12.6
	compiled with freetype2 version 2.8.1; using 2.8.1
	compiled with graphite2 version 1.3.10; using 1.3.10
	compiled with harfbuzz version 1.6.3; using 1.6.3
	compiled with icu version 60.1; using 60.1
	compiled with jpeg version 9.2
	compiled with liblzma version 50020032; using 50020032
	compiled with libpng version 1.6.34; using 1.6.34
	compiled with libressl version LibreSSL 2.5.3; using LibreSSL 2.5.3
	compiled with MiKTeX Application Framework version 2.6416; using 2.6416
	compiled with MiKTeX Core version 3.6505; using 3.6516
	compiled with MiKTeX Archive Extractor version 1.6300; using 1.6300
	compiled with MiKTeX Package Manager version 1.6488; using 1.6488
	compiled with poppler version 0.60.1
	using teckit version 2.4
	compiled with uriparser version 0.8.4
	compiled with zlib version 1.2.11; using 1.2.11

Sinn und Zweck der Dateieien:

 - `teil01.md` bis `teil05.md` korrespondieren mit den entsprechenden 5 Audiodateien, `teil01.md` enthält zusätzlich die Einleitung
 - `metadata.yaml` enthält separat die Metadaten des Dokumentes
 - `style.css` enthält die Formatierung der HTML-Datei
 - Im Order `vorlagen/` sind die Templates, auf denen basierend die Ausgabedateien erzeugt werden, gespeichert; `html.xhtml` für die HTML und `latex.tex` für die beiden auf (Xe)Latex basierenden PDFs.
 - Der Ordner `bilder/` enthält drei Bilder, unter anderem das Titelbild. `latex_out/` ist ein Zwischenspeicher für den Latex-Code, und `tex2pdf.8476` entsteht automatisch bei der Verwendung von `build_latex1.bat` (siehe unten)

Sämtliche Ausgaben erfolgen in den `out/`-Ordner, der gegebenenfalls vorher manuell zu erstellen ist:

 - `build_html.bat` erzeugt die XHTML-Datei
 - `build_latex1.bat` erzeugt eine rohe PDF direkt über Pandoc
 - `build_txt.bat` erzeugt eine reine Textdatei – für Rechtschreibkorrektur und Wörterzählen in Word o.ä.
 - `build_latexportrait.bat` baut das PDF in hochkant
 - `build_latexportrait.bat` baut das PDF in hochkant ohne Titelseite
 - `build_latexlandscape.bat` baut das PDF in quer
 - `build_latexlandscape.bat` baut das PDF in quer ohne Titelseite
 - `build_latexvorlage.bat` stellt die Basis für weitere Latex-Ausgaben; es nimmt als Parameter `%1` die Anzahl der Spalten des Layouts, `%2` die Ausrichtung (Quer/Hochkant = `landscape`/`portrait`) und `%3` ob eine Titelseite erstellt werden soll (`nicetitle`) oder nicht (beliebiger anderer Wert) **NICHT DIREKT BENUTZEN**
 - `build_base.bat` ist das Basiskommando mit Befehlen, die für alle Ausgabeformate benötigt werden **NICHT DIREKT BENUTZEN**
 
Zu guter Letzt müssen auf dem System die [Libertine-Schriftarten](http://libertine-fonts.org/) installiert sein, die Erzeugung der PDF-Dateien scheitert leider ansonsten hässlich und ohne hilfreiche Fehlermeldung. Grund für die Verwendung dieser Nicht-Standardschriftart sind unter anderem die manuell angepassten Kapitälchen sowie die anderweitig vorhandenen Schriftschnitte.