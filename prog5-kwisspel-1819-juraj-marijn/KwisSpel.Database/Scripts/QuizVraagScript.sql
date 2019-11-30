MERGE INTO QuizVraag AS Target
USING (values
	(1,1),
	(2,2),
	(3,3),
	(4,4)

	
) AS Source (QuizID,VraagID)
ON TARGET.QuizID = Source.QuizID AND TARGET.VraagID = Source.VraagID
WHEN NOT MATCHED BY TARGET THEN
	INSERT (QuizID,VraagID)
	VALUES (QuizID,VraagID)
WHEN MATCHED THEN
	UPDATE SET
		QuizID = Source.QuizID,
		VraagID = Source.VraagID;