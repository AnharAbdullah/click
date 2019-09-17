<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
      <h4 ><b>تواصل معنا </b></h4>
     
    
        <div >

          <label>الايميل </label>

            <asp:TextBox ID="to" runat="server" TextMode="Email"  Width="500px" CssClass="auto-style3" ReadOnly="true" Text="partyzonewebsite@gmail.com"></asp:TextBox>


        </div>
        <label>المرسل </label>
         <asp:TextBox ID="from" runat="server" Width="500px" ></asp:TextBox>
           <div >
          <label>العنوان </label>

         <asp:TextBox ID="subject" runat="server" Width="500px"></asp:TextBox>
        </div>


        <div >
          <label>الرسالة</label>
        <asp:TextBox ID="body" runat="server" CssClass="auto-style2" TextMode="MultiLine" Width="500px" dir="rtl"></asp:TextBox>
        </div>


          <asp:Button ID="Button3" runat="server" Text="ارسال" OnClick="Button3_Click" style="height: 26px" />     
          <asp:Button ID="Button4" runat="server" Text="تراجع" OnClick="Button4_Click"  />


    
    </div>
</asp:Content>