using System;
using MySql.Data.MySqlClient;
using System.Data;

namespace FinalProject
{
    public partial class Query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=mtg;port=3306;password='';SslMode=none;";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                //Open our database connection
                conn.Open();

                Console.Write(dropdownlist.SelectedValue.ToString());
                Console.Write(TextBox1.Text);

                // write our SQL statement as a string
                string sql = "SELECT cardname AS 'Card Name', setname AS 'Set Name', set_code AS 'Set Code', " +
                    "color AS 'Color', card_type AS 'Card Type', card_power AS 'Card Power', " +
                    "card_toughness AS 'Card Toughness', loyalty AS 'Loyalty', " +
                    "manacost AS 'Mana Cost', rarity AS 'Rarity', ability AS 'Ability' " +
                    "FROM coresets " +
                    "WHERE @sc LIKE @sq;";
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                Console.Write(dropdownlist.SelectedValue.ToString());
                Console.Write(TextBox1.Text);

                string s = dropdownlist.SelectedValue.ToString();
                string t = "'"+TextBox1.Text + "%'";

                //add our placeholders
                cmd.Parameters.AddWithValue("@sc", s);
                cmd.Parameters.AddWithValue("@sq", t);

                //prepare and execute our SQL command
                cmd.Prepare();
                MySqlDataReader reader = cmd.ExecuteReader();

                using (conn)
                {
                    using (cmd)
                    {
                        cmd.CommandType = CommandType.Text;
                        using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            reader.Close();
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                GridView1.DataSource = dt;
                                GridView1.DataBind();
                            }
                        }
                    }
                }
            } 

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            //close our database connection
            conn.Close();
        }
    }
}