Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dhruv\Desktop\practice\practice\App_Data\Database.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub singin_Click(sender As Object, e As EventArgs) Handles singin.Click
        cn.Open()
        qry = "select * from user_mstr where emailid='" & email.Text & "' and pass='" & pass.Text & "'"
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Dim status As Integer
            dr.Read()
            status = dr("Status")
            If status = 0 Then
                Response.Cookies("email1").Value = dr(4)
                Session("uname") = dr(1)
                Response.Redirect("Uhome.aspx")
            Else
                Response.Redirect("Admin/Ahome.aspx")
            End If
        Else
            Label1.Text = "Invalid Email id or Password"
        End If
        cn.Close()

    End Sub
End Class
