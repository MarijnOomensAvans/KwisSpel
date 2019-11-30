CREATE TABLE [dbo].[Antwoord]
(
	[idAntwoord] INT NOT NULL PRIMARY KEY, 
	[idVraag] INT NULL,
    [tekst] VARCHAR(MAX) NOT NULL, 
    [isGoed] BIT NOT NULL DEFAULT 0,
	FOREIGN KEY (idVraag) REFERENCES Vraag(vraagId) ON DELETE CASCADE
)
