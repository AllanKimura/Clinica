using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cadastro : System.Web.UI.Page
{
    String ConStr = ConfigurationManager.ConnectionStrings["atividadeeConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Entrar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConStr);
        con.Open();
        try
        {
            string Sql = "insert into pessoa(CPFPessoa, SexoPessoa, nmPessoa, RGPessoa, DataNascPessoa) Values (@CPFPessoa, @SexoPessoa, @nmPessoa, @RGPessoa, @DataNascPessoa)";
            SqlCommand cmd = new SqlCommand(Sql, con);
            cmd.Parameters.AddWithValue("@CPF", CPF.Text);
            cmd.Parameters.AddWithValue("@Nome", txt_Nome.Text);
            cmd.ExecuteNonQuery();
            CPF.Text = "";
            txt_Nome.Text = "";
        }
        catch (Exception erro)
        {
            lbl_msg.Text = erro.Message;
        }
        finally
        {
            con.Close();
        }
    }
}