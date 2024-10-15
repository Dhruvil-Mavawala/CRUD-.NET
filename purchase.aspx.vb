Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dhruv\Desktop\practice\practice\App_Data\Database2.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            lblusername.Text = "Welcome " & Session("uname")
        Else
            Response.Redirect("SingIn.aspx")
        End If
        Dim pid As Integer
        pid = Request.QueryString.Get("id")

        cn.Open()
        qry = "select * from Product_mstr where pid=" & pid
        cmd = New SqlCommand(qry, cn)
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            lblname.Text = dr("pname")
            lblprice.Text = dr("pprice")
            lbltotal.Text = dr("pprice")
            Image1.ImageUrl = "PIMAGE/" & dr("pimage")
        End If

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        lbltotal.Text = lblprice.Text * DropDownList1.SelectedItem.Value

    End Sub
End Class
