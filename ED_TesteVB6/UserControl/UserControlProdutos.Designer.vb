﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class UserControlProdutos
    Inherits System.Windows.Forms.UserControl

    'UserControl overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.TabControlProdutos = New System.Windows.Forms.TabControl()
        Me.TabPageListarProdutos = New System.Windows.Forms.TabPage()
        Me.DataGridViewProdutos = New System.Windows.Forms.DataGridView()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TabControlProdutos.SuspendLayout()
        Me.TabPageListarProdutos.SuspendLayout()
        CType(Me.DataGridViewProdutos, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TabControlProdutos
        '
        Me.TabControlProdutos.Alignment = System.Windows.Forms.TabAlignment.Bottom
        Me.TabControlProdutos.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.TabControlProdutos.Controls.Add(Me.TabPageListarProdutos)
        Me.TabControlProdutos.Location = New System.Drawing.Point(35, 23)
        Me.TabControlProdutos.Name = "TabControlProdutos"
        Me.TabControlProdutos.SelectedIndex = 0
        Me.TabControlProdutos.Size = New System.Drawing.Size(1029, 408)
        Me.TabControlProdutos.TabIndex = 0
        '
        'TabPageListarProdutos
        '
        Me.TabPageListarProdutos.Controls.Add(Me.DataGridViewProdutos)
        Me.TabPageListarProdutos.Controls.Add(Me.Label2)
        Me.TabPageListarProdutos.Location = New System.Drawing.Point(4, 4)
        Me.TabPageListarProdutos.Name = "TabPageListarProdutos"
        Me.TabPageListarProdutos.Padding = New System.Windows.Forms.Padding(3)
        Me.TabPageListarProdutos.Size = New System.Drawing.Size(1021, 378)
        Me.TabPageListarProdutos.TabIndex = 0
        Me.TabPageListarProdutos.Text = "Listar de Produtos"
        Me.TabPageListarProdutos.UseVisualStyleBackColor = True
        '
        'DataGridViewProdutos
        '
        Me.DataGridViewProdutos.Anchor = System.Windows.Forms.AnchorStyles.None
        Me.DataGridViewProdutos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill
        Me.DataGridViewProdutos.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.DataGridViewProdutos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridViewProdutos.Location = New System.Drawing.Point(40, 45)
        Me.DataGridViewProdutos.Name = "DataGridViewProdutos"
        Me.DataGridViewProdutos.RowTemplate.Height = 25
        Me.DataGridViewProdutos.Size = New System.Drawing.Size(947, 303)
        Me.DataGridViewProdutos.TabIndex = 3
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Century Gothic", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point)
        Me.Label2.Location = New System.Drawing.Point(40, 15)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(72, 19)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Produto:"
        '
        'UserControlProdutos
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 17.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.Controls.Add(Me.TabControlProdutos)
        Me.Font = New System.Drawing.Font("Century Gothic", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Name = "UserControlProdutos"
        Me.Size = New System.Drawing.Size(1102, 462)
        Me.TabControlProdutos.ResumeLayout(False)
        Me.TabPageListarProdutos.ResumeLayout(False)
        Me.TabPageListarProdutos.PerformLayout()
        CType(Me.DataGridViewProdutos, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents TabControlProdutos As TabControl
    Friend WithEvents TabPageListarProdutos As TabPage
    Friend WithEvents Label2 As Label
    Friend WithEvents TextBoxProduto As TextBox
    Friend WithEvents DataGridViewProdutos As DataGridView
End Class
