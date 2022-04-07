Public Class formDashboard

    'Habilita a listagem de produtos
    Private Sub ButtonProdutos_Click(sender As Object, e As EventArgs) Handles ButtonProdutos.Click
        If (UserControlProdutos1.Visible = True) Then
            UserControlProdutos1.Visible = False
        Else
            UserControlProdutos1.Visible = True
        End If
    End Sub

    'Fechar sistema
    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        End
    End Sub

End Class
