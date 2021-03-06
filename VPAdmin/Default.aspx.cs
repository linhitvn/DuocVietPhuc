﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (MySession.ClockScren != null && MySession.ClockScren == "True")
        {
            Session.Abandon();
            Response.Redirect(WebConfigurationManager.AppSettings["WebHome"]);
        }

        String strShow = Request.QueryString["module"] == null ? "" : Request.QueryString["module"].ToString().ToUpper();
        String strAct = Request.QueryString["act"] == null ? "" : Request.QueryString["act"].ToString().ToLower();
        if (Request.QueryString["KeyID"] != null)
        {
            string page = Request.QueryString["module"];
            int KeyID = int.Parse(Request.QueryString["KeyID"].ToString());
            PageKeyID.AddKeyID(page, KeyID);
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            url = url.Substring(0, url.IndexOf("&KeyID="));
            HttpContext.Current.Response.Redirect(url);
            return;
        }
        switch (strShow)
        {
            case "EX":
                Session.Abandon();
                Response.Redirect(WebConfigurationManager.AppSettings["WebHome"]);
                break;

            default:
                if (Session["USysConfig"] == null || Session["USysConfig"].ToString() == "") //Chưa login
                {
                    //Session["CSSStyle"] = "login.css";
                    Response.Redirect("~/Pages/Outer/Login.aspx" + Utils.FuncParam());
                }
                else
                {
                    cHeader.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["ControlPath"] + "Header/cHeader.ascx"));
                    cMenu.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["ControlPath"] + "Menu/cLeftMenu.ascx"));

                    if (strShow != "")
                    {
                        //if (strShow == "CP")
                        //    cPage.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["PagePath"] + "Account/cAccountInfo.ascx"));
                        if (MyConfig.CheckPermission(strShow))
                        {
                            string sUControl = TNavigation.GetControlNavigation(strShow);
                            if (sUControl.Trim() != "")
                            {
                                try
                                {
                                    if (strAct == "")
                                        cPage.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["PagePath"] + sUControl));
                                    else //if (Page.FindControl(WebConfigurationManager.AppSettings["WebHome"] + "Controls/" + sUControl.Replace(".ascx", "Alter.ascx")) as UserControl) != null)                            
                                        cPage.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["PagePath"] + sUControl.Replace(".ascx", "Alter.ascx")));
                                }
                                catch // Lỗi vì sai Page Control !
                                {
                                    cPage.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["PagePath"] + "ErrorPage/cPageNotFound.ascx"));
                                }
                            }
                            else
                            {
                                Response.Redirect(WebConfigurationManager.AppSettings["WebHome"]);
                            }
                        }
                        else // Không có quyền truy cập
                        {
                            cPage.Controls.Add(LoadControl(WebConfigurationManager.AppSettings["PagePath"] + "ErrorPage/cPageNotPermited.ascx"));
                        }
                    }
                }
                break;
        }
        
    }
}