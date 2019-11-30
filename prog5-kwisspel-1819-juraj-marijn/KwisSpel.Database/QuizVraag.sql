﻿CREATE TABLE [dbo].[QuizVraag]
(
	[QuizID] INT NOT NULL,
    [VraagID] INT NOT NULL,
	FOREIGN KEY (QuizID) REFERENCES Quiz(quizId) ON DELETE CASCADE,
	FOREIGN KEY (VraagID) REFERENCES Vraag(vraagId) ON DELETE CASCADE,
	CONSTRAINT [PK_QuizVraag] PRIMARY KEY ([VraagID], [QuizID])
)
