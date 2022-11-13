<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Employee Payroll Form.aspx.cs" Inherits="EmployeePayRollWebForms.WebForms.Employee_Payroll_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../StyleSheets/Payroll%20Form.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="sec1">
    <div class="Header">

        <h3>Employee Payroll Form </h3>

    </div>
    <br />
    <div>
        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="564px" Height="30px"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:Label ID="Label1" runat="server" Text="Profile image"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="612px" RepeatLayout="Flow" Height="44px" CellPadding="1" CellSpacing="1" CssClass="abc">
            <asp:ListItem Value="../Assets/profile-Ellipse -1.png"><img src="../Assets/profile-images/Ellipse -1.png" alt="img1" /></asp:ListItem>
            <asp:ListItem Value="../Assets/profile-images/Ellipse -2.png"><img src="../Assets/profile-images/Ellipse -2.png" alt="img2"/></asp:ListItem>
            <asp:ListItem Value="../Assets/profile-images/Ellipse -3.png"><img src="../Assets/profile-images/Ellipse -3.png" alt="img3" /></asp:ListItem>
            <asp:ListItem Value="../Assets/profile-images/Ellipse -4.png"><img src="../Assets/profile-images/Ellipse -4.png" alt="img4" /></asp:ListItem>
            <asp:ListItem Value="../Assets/profile-images/Ellipse -5.png"><img src="../Assets/profile-images/Ellipse -5.png" alt="img4" /></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <br />
        
    <div>
        <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" Width="450px" RepeatLayout="Flow" CssClass="cba">
            <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
        </asp:RadioButtonList>
        
    </div>
    <br />
        <div>
             <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" Width="640px" RepeatLayout="Flow" CssClass="abd" Height="20px">

                <asp:ListItem Text="&ensp;HR&emsp;" Value="HR"> </asp:ListItem>
                <asp:ListItem Text="&ensp;Sales&emsp;" Value="Sales"></asp:ListItem>
                <asp:ListItem Text="&ensp;Finance&emsp;" Value="Finance"></asp:ListItem>
                <asp:ListItem Text="&ensp;Engineer&emsp;" Value="Engineer"></asp:ListItem>
                <asp:ListItem  Text="&ensp;Others&emsp;" Value="Others"></asp:ListItem>
            </asp:CheckBoxList>

        </div>
        <br />

    <div>
        <label>Salary</label>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="358px" Height="25px">
            <asp:ListItem Text="Select Salary" Value="0"></asp:ListItem>
                <asp:ListItem Text="₹ 10,000" Value="10000"></asp:ListItem>
                <asp:ListItem Text="₹ 15,000" Value="15000"></asp:ListItem>
                <asp:ListItem Text="₹ 20,000" Value="200000"></asp:ListItem>
                <asp:ListItem Text="₹ 25,000" Value="25000"></asp:ListItem>

        </asp:DropDownList>
    </div>
    <br />
    <div>
        <label>StartDate</label>
        <asp:DropDownList ID="ddlDay" runat="server" Height="36px" Width="90px">

        </asp:DropDownList>

        <asp:DropDownList ID="ddlMonth" runat="server" Height="36px" Width="90px" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged1">

        </asp:DropDownList>

        <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="90px" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged1">

        </asp:DropDownList>


    </div>
    <br />
    <div>
        <label>Notes</label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        
    </div>
    <br />
    <div>
        <asp:Button ID="Button1" runat="server" Text="Cancel" Width="150px" Height="40px" />
        <asp:Button ID="Button2" runat="server" Text="Submit" Width="151px" Height="40px" OnClick="Button2_Click"  />
        <asp:Button ID="Button3" runat="server" Text="Reset" Width="150px" Height="40px" />
    </div>
         <div>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
        </div>
</asp:Content>
