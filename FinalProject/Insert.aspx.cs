using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FinalProject
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetText()
        {
            cardnamebox.Text = string.Empty;
            setnamebox.Text = string.Empty;
            setcodebox.Text = string.Empty;
            idbox.Text = string.Empty;
            cardtypebox.Text = string.Empty;
            cardtoughnessbox.Text = string.Empty;
            cardtoughnessbox.Text = string.Empty;
            loyaltybox.Text = string.Empty;
            manacostbox.Text = string.Empty;
            convertedmanabox.Text = string.Empty;
            artistbox.Text = string.Empty;
            flavorbox.Text = string.Empty;
            colorbox.Text = string.Empty;
            generatedmanacostbox.Text = string.Empty;
            cardnumberbox.Text = string.Empty;
            raritybox.Text = string.Empty;
            ratingbox.Text = string.Empty;
            rulingbox.Text = string.Empty;
            variationbox.Text = string.Empty;
            abilitybox.Text = string.Empty;      
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=mtg;port=3306;password='';SslMode=none;";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                //Open our database connection
                conn.Open();

                // write our SQL statement as a string
                string sql = "INSERT INTO coresets (cardname, setname, set_code, id, card_type, card_power, card_toughness,loyalty, manacost, converted_manacost, artist, " +
                    "flavor, color,generated_mana, card_number, rarity, rating, ruling, variation, ability) VALUES (@cn,@sn,@sc,@id,@cy,@cp,@ct,@ly,@mc,@cm,@at,@fl,@co,@gm,@ca,@rr,@rt,@ru,@va,@ab)";
                MySqlCommand cmd = new MySqlCommand(sql, conn);

                //add our placeholders
                cmd.Parameters.AddWithValue("@cn", cardnamebox.Text);
                cmd.Parameters.AddWithValue("@sn", setnamebox.Text);
                cmd.Parameters.AddWithValue("@sc", setcodebox.Text);
                cmd.Parameters.AddWithValue("@id", idbox.Text);
                cmd.Parameters.AddWithValue("@cy", cardtypebox.Text);
                cmd.Parameters.AddWithValue("@cp", cardtoughnessbox.Text);
                cmd.Parameters.AddWithValue("@ct", cardtoughnessbox.Text);
                cmd.Parameters.AddWithValue("@ly", loyaltybox.Text);
                cmd.Parameters.AddWithValue("@mc", manacostbox.Text);
                cmd.Parameters.AddWithValue("@cm", convertedmanabox.Text);
                cmd.Parameters.AddWithValue("@at", artistbox.Text);
                cmd.Parameters.AddWithValue("@fl", flavorbox.Text);
                cmd.Parameters.AddWithValue("@co", colorbox.Text);
                cmd.Parameters.AddWithValue("@gm", generatedmanacostbox.Text);
                cmd.Parameters.AddWithValue("@ca", cardnumberbox.Text);
                cmd.Parameters.AddWithValue("@rr", raritybox.Text);
                cmd.Parameters.AddWithValue("@rt", ratingbox.Text);
                cmd.Parameters.AddWithValue("@ru", rulingbox.Text);
                cmd.Parameters.AddWithValue("@va", variationbox.Text);
                cmd.Parameters.AddWithValue("@ab", abilitybox.Text);

                //prepare and execute our SQL command
                cmd.ExecuteNonQuery();

                //reset text boxes
                resetText();

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