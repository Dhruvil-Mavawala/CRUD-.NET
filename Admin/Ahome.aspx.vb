Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\dhruv\Desktop\practice\practice\App_Data\Database2.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String
    Dim dr As SqlDataReader
    Dim dap As New SqlDataAdapter
    Dim ds As New DataSet


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        fillgride()

    End Sub

    Protected Sub Add_Click(sender As Object, e As EventArgs) Handles Add.Click

        If pimage.HasFile Then
            Dim fname As String
            fname = pimage.FileName
            pimage.SaveAs(Server.MapPath("~/PIMAGE/" & fname))
            Image1.ImageUrl = "~/PIMAGE/" & fname

            cn.Open()
            qry = "insert into Product_mstr values('" & pname.Text &
                "','" & pdesc.Text & "','" & fname &
                "'," & pprice.Text & ")"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If
        fillgride()
        ' Response.Redirect("Ahome.aspx")
    End Sub

    Sub fillgride()
        ds.Clear()
        qry = "select * from Product_mstr"
        dap = New SqlDataAdapter(qry, cn)
        dap.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
    End Sub
End Class
