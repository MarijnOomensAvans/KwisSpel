MERGE INTO Antwoord AS Target
USING (values
	(1,1,'Mogadishu',0),
	(2,1,'Abuja',0),
	(3,1,'Ndjamena',1),

	(4,2,'1066',0),
	(5,2,'1776',0),
	(6,2,'1572',0),
	(7,2,'1572',0),


	(8,3,'Abstract',1),
	(9,3,'Landschap',0),

	(10,4,'Herendubbel',0),
	(11,4,'Herenenkel',1),
	(12,4,'Mix',0),
	(13,4,'Damesenkel',0)

	
) AS Source (idAntwoord,idVraag,tekst,isgoed)
ON TARGET.idAntwoord = Source.idAntwoord
WHEN NOT MATCHED BY TARGET THEN
	INSERT (idAntwoord,idVraag,tekst,isgoed)
	VALUES (idAntwoord,idVraag,tekst,isgoed)
WHEN MATCHED THEN
	UPDATE SET
		idAntwoord = Source.idAntwoord,
		idVraag = Source.idVraag,
		tekst = Source.tekst,
		isgoed = Source.isgoed;