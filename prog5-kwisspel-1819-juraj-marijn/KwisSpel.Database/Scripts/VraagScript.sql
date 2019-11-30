MERGE INTO Vraag AS Target
USING (values
	(1,'Wat is de hoofdstad van Tsjaad?',1),
	(2,'In welk jaar werd Constantinopel veroverd door de Ottomanen?',2),
	(3,'In welke schilderstijl schilderde Mondriaan?',3),
	(4,'In welke categorie is Viktor Axelsen nu wereldkampioen?',4)

	
) AS Source (vraagId,tekst,idCategorie)
ON TARGET.vraagId = Source.vraagId
WHEN NOT MATCHED BY TARGET THEN
	INSERT (vraagId,tekst,idCategorie)
	VALUES (vraagId,tekst,idCategorie)
WHEN MATCHED THEN
	UPDATE SET
		vraagId = Source.vraagId,
		tekst = Source.tekst,
		idCategorie = Source.idCategorie;