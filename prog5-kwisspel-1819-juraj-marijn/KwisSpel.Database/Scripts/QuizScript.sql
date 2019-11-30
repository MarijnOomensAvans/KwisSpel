MERGE INTO Quiz AS Target
USING (values
	(1,'Afrika hoofdsteden'),
	(2,'Mehmed II Fatih Osmanoglu en de verovering van Constantinopel'),
	(3,'Piet Mondriaan en technieken'),
	(4,'Viktor Axelsen')

	
) AS Source (quizId,naam)
ON TARGET.quizId = Source.quizId
WHEN NOT MATCHED BY TARGET THEN
	INSERT (quizId,naam)
	VALUES (quizId,naam)
WHEN MATCHED THEN
	UPDATE SET
		quizId = Source.quizId,
		naam = Source.naam;