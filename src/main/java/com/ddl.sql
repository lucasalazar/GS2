-- Criação da tabela Empresa
CREATE TABLE Empresa (
    ID_Empresa INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Empresa VARCHAR(100) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL UNIQUE,
    Endereco VARCHAR(255) NOT NULL,
    Setor VARCHAR(50) NOT NULL,
    Plano VARCHAR(20) NOT NULL
);

-- Criação da tabela Consumo
CREATE TABLE Consumo (
    ID_Consumo INT AUTO_INCREMENT PRIMARY KEY,
    ID_Empresa INT NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Data_Registro DATE NOT NULL,
    Valor_Consumo FLOAT NOT NULL,
    Custo_Consumo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa)
);

-- Criação da tabela Fatura
CREATE TABLE Fatura (
    ID_Fatura INT AUTO_INCREMENT PRIMARY KEY,
    ID_Empresa INT NOT NULL,
    Mes_Referencia DATE NOT NULL,
    Valor_Total DECIMAL(10,2) NOT NULL,
    Data_Emissao DATE NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa)
);

-- Criação da tabela Meta
CREATE TABLE Meta (
    ID_Meta INT AUTO_INCREMENT PRIMARY KEY,
    ID_Empresa INT NOT NULL,
    Descricao_Meta VARCHAR(255) NOT NULL,
    Percentual_Reduzir FLOAT NOT NULL,
    Status_Meta VARCHAR(20) NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa)
);

-- Criação da tabela Notificacao
CREATE TABLE Notificacao (
    ID_Notificacao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Empresa INT NOT NULL,
    Tipo_Notificacao VARCHAR(20) NOT NULL,
    Data_Envio DATETIME NOT NULL,
    Mensagem TEXT NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa)
);

-- Criação da tabela Simulacao
CREATE TABLE Simulacao (
    ID_Simulacao INT AUTO_INCREMENT PRIMARY KEY,
    ID_Empresa INT NOT NULL,
    Tipo_Energia VARCHAR(50) NOT NULL,
    Economia_Anual DECIMAL(10,2) NOT NULL,
    Custo_Investimento DECIMAL(10,2) NOT NULL,
    Retorno_Investimento INT NOT NULL,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresa(ID_Empresa)
);
