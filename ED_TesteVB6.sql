USE [TESTEVB6]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[NivelImportancia] [int] NOT NULL,
 CONSTRAINT [PK_TPP_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP_Conta]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP_Conta](
	[NumConta] [int] IDENTITY(1,1) NOT NULL,
	[Saldo] [money] NOT NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[NumConta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP_ContaMovimento]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP_ContaMovimento](
	[IdMovimento] [int] IDENTITY(1,1) NOT NULL,
	[NumConta] [int] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[Sinal] [smallint] NOT NULL,
	[Valor] [money] NOT NULL,
 CONSTRAINT [PK_TPP_ContaMovimento] PRIMARY KEY CLUSTERED 
(
	[IdMovimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP_ProdutoCategoria]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP_ProdutoCategoria](
	[CodProduto] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_TPP_ProdutoCategoria] PRIMARY KEY CLUSTERED 
(
	[CodProduto] ASC,
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP_Produtos]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP_Produtos](
	[CodProduto] [int] IDENTITY(1,1) NOT NULL,
	[NomeProduto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TPP_Produtos] PRIMARY KEY CLUSTERED 
(
	[CodProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TPP_Vendas]    Script Date: 07/04/2022 20:22:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPP_Vendas](
	[IdVenda] [int] IDENTITY(1,1) NOT NULL,
	[CodProduto] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Qtd] [int] NOT NULL,
	[Valor] [money] NOT NULL,
 CONSTRAINT [PK_TPP_Vendas] PRIMARY KEY CLUSTERED 
(
	[IdVenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (1, N'Infantil', 1)
INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (2, N'Educacional', 3)
INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (3, N'Cosmético', 2)
INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (4, N'Masculino', 1)
INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (5, N'Feminino', 3)
INSERT [dbo].[Categoria] ([IdCategoria], [Nome], [NivelImportancia]) VALUES (6, N'Eletrônico', 2)
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[TPP_Conta] ON 

INSERT [dbo].[TPP_Conta] ([NumConta], [Saldo]) VALUES (1, 1000.0000)
INSERT [dbo].[TPP_Conta] ([NumConta], [Saldo]) VALUES (2, 100.0000)
SET IDENTITY_INSERT [dbo].[TPP_Conta] OFF
GO
SET IDENTITY_INSERT [dbo].[TPP_ContaMovimento] ON 

INSERT [dbo].[TPP_ContaMovimento] ([IdMovimento], [NumConta], [Descricao], [Sinal], [Valor]) VALUES (1, 1, N'Depósito', 1, 1000.0000)
INSERT [dbo].[TPP_ContaMovimento] ([IdMovimento], [NumConta], [Descricao], [Sinal], [Valor]) VALUES (4, 2, N'Depósito', 1, 100.0000)
SET IDENTITY_INSERT [dbo].[TPP_ContaMovimento] OFF
GO
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (1, 1)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (1, 5)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (2, 5)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (3, 2)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (4, 6)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (5, 3)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (5, 4)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (5, 5)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (6, 6)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (7, 2)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (8, 4)
INSERT [dbo].[TPP_ProdutoCategoria] ([CodProduto], [IdCategoria]) VALUES (9, 2)
GO
SET IDENTITY_INSERT [dbo].[TPP_Produtos] ON 

INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (1, N'Boneca')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (2, N'Bolsa')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (3, N'Caneta')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (4, N'IPhone')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (5, N'Perfume')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (6, N'IMac')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (7, N'Livro')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (8, N'Rolex')
INSERT [dbo].[TPP_Produtos] ([CodProduto], [NomeProduto]) VALUES (9, N'Lápis')
SET IDENTITY_INSERT [dbo].[TPP_Produtos] OFF
GO
SET IDENTITY_INSERT [dbo].[TPP_Vendas] ON 

INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (1, 1, 2, 1, 100.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (2, 2, 3, 3, 5000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (3, 3, 1, 3, 100.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (4, 3, 2, 1, 50.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (5, 3, 1, 10, 1000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (6, 4, 3, 5, 10000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (7, 5, 2, 2, 25000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (8, 5, 1, 1, 15000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (9, 5, 2, 2, 25000.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (10, 7, 1, 3, 1500.0000)
INSERT [dbo].[TPP_Vendas] ([IdVenda], [CodProduto], [IdCategoria], [Qtd], [Valor]) VALUES (11, 8, 1, 3, 25000.0000)
SET IDENTITY_INSERT [dbo].[TPP_Vendas] OFF
GO
