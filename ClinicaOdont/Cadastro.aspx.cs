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
    String ConStr = ConfigurationManager.ConnectionStrings["ClinicaOdontConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Cadastrar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConStr);
        con.Open();
        try
        {
            string Sql = "insert into Cliente(CPF_Client, Nome_Client, DataNasc_Client, Endereco_Client, Tel_Client, RG_Client, Email_Client, Cel_Client, Senha_Client) Values (@CPF_Client, @Nome_Client, @DataNasc_Client, @Endereco_Client, @Tel_Client, @RG_Client, @Email_Client, @Cel_Client, @Senha_Client)";
            SqlCommand cmd = new SqlCommand(Sql, con);
            
            Int16 cpf = Convert.ToInt16(CPF.Text);
            Int16 rg = Convert.ToInt16(RG.Text);
            cmd.Parameters.AddWithValue("@CPF_Client", cpf);
            cmd.Parameters.AddWithValue("@Nome_Client", Nome.Text);
            cmd.Parameters.AddWithValue("@DataNasc_Client", DataNasc.Text);
            cmd.Parameters.AddWithValue("@Endereco_Client", Endereco.Text);
            cmd.Parameters.AddWithValue("@Tel_Client", Tel.Text);
            cmd.Parameters.AddWithValue("@RG_Client", rg);
            cmd.Parameters.AddWithValue("@Email_Client", Email.Text);
            cmd.Parameters.AddWithValue("@Cel_Client", Cel.Text);
            cmd.Parameters.AddWithValue("@Senha_Client", Senha.Text);
            cmd.ExecuteNonQuery();

            CPF.Text = "";
            Nome.Text = "";
             DataNasc.Text = "";
            Endereco.Text = "";
            Tel.Text = "";
            RG.Text = "";
            Email.Text = "";
            Cel.Text = "";
            Senha.Text = "";
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