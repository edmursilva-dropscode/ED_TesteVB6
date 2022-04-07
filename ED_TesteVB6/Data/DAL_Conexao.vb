Imports System.Data.SqlClient

Module DAL_Conexao

    Public vol_Conexao As SqlConnection
    Public vol_Command As SqlConnection
    Public vol_DataSet As DataSet
    Public vol_DataTable As DataTable
    Public vol_DataAdapter As SqlDataAdapter
    Public vsl_sql As String
    Public resultado As Integer
    Public vol_DataRow As DataRow
    Public vol_dtDataSet As DataSet
    Public vsl_cnn As String = "Data Source=EDMURSILVA-PC;Initial Catalog=TESTEVB6;Integrated Security=True"
    Public vnivel As String
    Public contador As Integer
End Module

