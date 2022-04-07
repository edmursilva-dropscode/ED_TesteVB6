Imports System.Data.SqlClient

Public Class UserControlProdutos

    Private Sub UserControlProdutos_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Carregar finformacoes do produto no grid
        CarregarGrid()
    End Sub

    Private Sub CarregarGrid()

        Try
            'Instrucao SQLServer
            vsl_sql = "Select TPP_Produtos.CodProduto, TPP_Produtos.NomeProduto "
            vsl_sql += ",MAX(Categoria.NivelImportancia) AS Importancia "
            vsl_sql += ",SUM(TPP_Vendas.Qtd) AS QtdVendida "
            vsl_sql += "From TPP_Vendas "
            vsl_sql += "INNER Join TPP_Produtos ON TPP_Vendas.CodProduto = TPP_Produtos.CodProduto "
            vsl_sql += "INNER Join Categoria ON (TPP_Vendas.IdCategoria = Categoria.IdCategoria  ) "
            vsl_sql += "GROUP BY TPP_Produtos.CodProduto, TPP_Produtos.NomeProduto "
            vsl_sql += "ORDER BY QtdVendida DESC "

            'Abre conexao
            Using vol_Conexao As New SqlConnection With {.ConnectionString = vsl_cnn}
                vol_Conexao.Open()
                'Carrega grid
                Using vol_DataAdapter = New SqlDataAdapter(vsl_sql, vol_Conexao)
                    Using vol_DataTable = New DataTable
                        vol_DataAdapter.Fill(vol_DataTable)
                        DataGridViewProdutos.DataSource = vol_DataTable
                    End Using
                End Using
            End Using
        Catch ex As Exception
            MsgBox("Não foi possível conecat ao banco de dados!!!", ex.Message, vbCritical)
        End Try

    End Sub



End Class
