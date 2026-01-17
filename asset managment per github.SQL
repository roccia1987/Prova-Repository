-- TABELLA ASSET
DROP TABLE ASSET;
CREATE TABLE ASSET (
    AssetID SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Classificazione VARCHAR(50) NOT NULL,
    Ubicazione VARCHAR(100),
    DataDismissionePrevista DATE,
    IndirizzoIP VARCHAR(15),
	MisuraID INT NOT NULL,
	ResponsabileOperativoID INT NOT NULL,
	ResponsabileTecnicoID INT NOT NULL,

	FOREIGN KEY (MisuraID) REFERENCES MISURA_SICUREZZA(MisuraID),
	FOREIGN KEY (ResponsabileOperativoID) REFERENCES Ruolo (RuoloID),
	FOREIGN KEY (ResponsabileTecnicoID) REFERENCES Ruolo (RuoloID)
);

