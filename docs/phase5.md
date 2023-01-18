# Phase 5

| Daten               | Typ(In)       |  Typ(Out)               | Software                 | Metadaten | Lesen       | Schreiben |
|---------------------|---------------|-----------------|--------------------------|-----------|-------------|-----------|
| Rahmenbedingungen   | Textformat (.txt, .docx, etc.) | | Microsoft Word           | *1        | intern alle | V         |
| Gebäudeplan         | CAD, Bilddaten, Skizzen 	 | CAD (.dxf) | usBIM Editor (kostenlos) | *2        | G, A        | G         |
| Raumplan            | CAD               | BIM (.ifcXML)  | usBIM Editor (kostenlos) | *3        | A           | A         |
| Komponentenliste    | CAD                   | Datenbank  | SQL Server               | -         | A, E        | A         |
| Gesamtnetzwerkplan  |                          | .pdf | drawio                   | *4        | A           | A         |
| Lagerbestand        | Datenbank                    |  | SQL Server               | -         | A, E        | E         |
| Kundendaten         | Datenbank                    |  | SQL Server               | -         | V           | V         |
| Angebot             | .pdf                         |  | Microsoft Word           | *4        | A, V        | A         |

__V__: Vertrieb

__A__: Angebotserstellungsmensch

__G__: Gebäudeplanmensch

__E__: Mensch vom Einkauf

*1 Autor, Manager, Erstellungs-/Änderungsdatum, Tags, Kommentare, Titel, Firma, Seiten, Wörter, Größe, Editierzeit

*2 Festlegungen über die Assoziativität von Bemaßungen, Attribute für Maßketten, Einstellungen für Rundungen, globale Parameter für Schraffuren etc., Stiftbelegungen der Ausgabegeräte, Position der lokalen und globalen Koordinatensysteme

*3 Modell, Version, Erstellungstool, Dateityp, Maßeinheiten, Sekundärmodell, Analyse, Analysetool

*4 Titel, Verfasser, Thema, Stichwörter, Erstell-/Änderungsdatum, Erstellungstool, PDF-Version, Seitenzahl, Seitenformat