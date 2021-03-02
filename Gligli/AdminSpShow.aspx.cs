using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Gligli
{
    public partial class AdminSpShow : System.Web.UI.Page
    {
        public string Url = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["SpId"] != null&&Request.QueryString["SpId"] !=string.Empty)
                {
                  //Url = SelectSpByID();
                  //ClientScript.RegisterStartupScript(ClientScript.GetType(), "LoginSp", "<script>$(function () {$('.card-body').append(marked("+Url+"));});</script>");
                }
            }
        }
        protected string SelectSpByID()
        {
            //string md = File.ReadAllText();
            return SpeInfoMMag.SelectSpByID(int.Parse(Request.QueryString["SpId"]));
        }
    }
}