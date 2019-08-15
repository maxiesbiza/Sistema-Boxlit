using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Boxlit
{
    public partial class ABM_Proveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        private void BindGridView()
        {
            string CS = ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Proveedores", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                sda.Fill(dt);
                GridViewProveedores.DataSource = dt;
                GridViewProveedores.DataBind();
            }
        }
        

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string CS = ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
                SqlConnection con = new SqlConnection(CS);
                SqlCommand cmd = new SqlCommand("INSERT INTO Proveedores VALUES ('" + txtNombreProv.Text
                    + "', '" + txtContactoNombre.Text + "', '" + txtCUIT.Text + "', '" + txtPais.Text
                    + "', '" + txtCiudad.Text + "', '" + txtTelefono.Text + "')", con);
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Proveedor Agregado');</script>");
                    txtTelefono.Text = "";
                    txtPais.Text = "";
                    txtNombreProv.Text = "";
                    txtCUIT.Text = "";
                    txtContactoNombre.Text = "";
                    txtCiudad.Text = "";
                    BindGridView();
                }
                catch
                {
                    Response.Write("<script>alert('Algo salió mal');</script>");
                    
                }
                con.Close();
            }
        }

        protected void GridViewProveedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            string CS = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexionSQL = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Proveedores WHERE ProveedorID = " + this.GridViewProveedores.Rows[GridViewProveedores.SelectedIndex].Cells[0].Text, conexionSQL);

            conexionSQL.Open();

            try
            {
                SqlDataReader registro = cmd.ExecuteReader();
                if (registro.Read())
                {
                    txtModProvID.Text = registro["ProveedorID"].ToString();
                    txtModNombreProv.Text = registro["ProveedorNombre"].ToString();
                    txtModContactoNombre.Text = registro["ContactoNombre"].ToString();
                    txtModCUIT.Text = registro["CUIT"].ToString();
                    txtModPais.Text = registro["Pais"].ToString();
                    txtModCiudad.Text = registro["Ciudad"].ToString();
                    txtModTelefono.Text = registro["Telefono"].ToString();
                    PanelBMProveedor.Visible = true;
                }
            }
            catch
            {
                Response.Write("<script>alert('Algo salió mal');</script>");
            }
            conexionSQL.Close();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("UPDATE Proveedores SET ProveedorNombre = '" + txtModNombreProv.Text + 
                "', ContactoNombre = '"+ txtModContactoNombre.Text + "', CUIT = '" + txtModCUIT.Text + 
                "', Pais = '" + txtModPais.Text + "', Ciudad = '" + txtModCiudad.Text + "', Telefono = '" +
                txtModTelefono.Text + "' WHERE ProveedorID = " + txtModProvID.Text, con);
            con.Open();
            try
            {
                cmd.ExecuteNonQuery();
                BindGridView();
                txtModProvID.Text = "";
                txtModTelefono.Text = "";
                txtModPais.Text = "";
                txtModNombreProv.Text = "";
                txtModCUIT.Text = "";
                txtModContactoNombre.Text = "";
                txtModCiudad.Text = "";
                Response.Write("<script>alert('Proveedor Modificado Correctamente');</script>");
                PanelBMProveedor.Visible = false;
            }
            catch
            {
                Response.Write("<script>alert('Algo salió mal');</script>");
            }
            con.Close();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string CS = System.Configuration.ConfigurationManager.ConnectionStrings["cadenaconexion1"].ConnectionString;
            SqlConnection conexionSQL = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("DELETE FROM Proveedores WHERE ProveedorID = " + txtModProvID.Text, conexionSQL);

            conexionSQL.Open();

            int cantidad = cmd.ExecuteNonQuery();
            if (cantidad == 1)
            {
                Response.Write("<script>alert('Proveedor Eliminado Correctamente');</script>");
                BindGridView();
                txtModProvID.Text = "";
                txtModTelefono.Text = "";
                txtModPais.Text = "";
                txtModNombreProv.Text = "";
                txtModCUIT.Text = "";
                txtModContactoNombre.Text = "";
                txtModCiudad.Text = "";
                PanelBMProveedor.Visible = false;
            }
            else
                Response.Write("<script>alert('Algo salió mal');</script>");
            

            conexionSQL.Close();
        }

        protected void btnMostrarPanelNuevoProv_Click(object sender, EventArgs e)
        {
            PanelNuevoProveedor.Visible = true;
            btnMostrarPanelNuevoProv.Visible = false;
        }

        protected void btnMinimizar_Click(object sender, EventArgs e)
        {
            PanelNuevoProveedor.Visible = false;
            btnMostrarPanelNuevoProv.Visible = true;
        }

        protected void btnMinim_Click(object sender, EventArgs e)
        {
            PanelBMProveedor.Visible = false;
            txtModProvID.Text = "";
            txtModTelefono.Text = "";
            txtModPais.Text = "";
            txtModNombreProv.Text = "";
            txtModCUIT.Text = "";
            txtModContactoNombre.Text = "";
            txtModCiudad.Text = "";
            
        }
    }
}