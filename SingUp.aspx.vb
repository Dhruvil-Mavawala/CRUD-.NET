Imports System.Data.SqlClient


Partial Class Default2
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dhruv\Desktop\practice\practice\App_Data\Database.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String


   

    Protected Sub singup_Click(sender As Object, e As EventArgs) Handles singup.Click
        cn.Open()
        qry = "insert into user_mstr values('" & uname.Text &
            "','" & pass.Text & "','" & mobile.Text &
            "','" & email.Text & "',0)"
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("SingIn.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
