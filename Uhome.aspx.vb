
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            email.Text = Request.Cookies("email1").Value
            name.Text = "Welcome " & Session("uname")
        Else
            Response.Redirect("SingIn.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
