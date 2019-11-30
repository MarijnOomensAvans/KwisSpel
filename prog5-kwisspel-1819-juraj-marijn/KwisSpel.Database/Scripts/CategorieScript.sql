MERGE INTO Categorie AS Target
USING (values
	(1,'Topografie'),
	(2,'Geschiedenis'),
	(3,'Kunst'),
	(4,'Sport'),
	(5,'Biologie'),
	(6,'Wiskunde'),
	(7,'Muziek'),
	(8,'Natuurkunde'),
	(9,'Media'),
	(10,'Tech')


	
) AS Source (categorieId,categorie)
ON TARGET.categorieId = Source.categorieId
WHEN NOT MATCHED BY TARGET THEN
	INSERT (categorieId,categorie)
	VALUES (categorieId,categorie)
WHEN MATCHED THEN
	UPDATE SET
		categorieId = Source.categorieId,
		categorie = Source.categorie;