CREATE TABLE [dbo].[Vraag]
(
	[vraagId] INT NOT NULL PRIMARY KEY, 
    [tekst] VARCHAR(MAX) NOT NULL, 
    [idCategorie] INT NOT NULL,
	FOREIGN KEY (idCategorie) REFERENCES Categorie(categorieId)
)
