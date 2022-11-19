<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayRollWebForms.WebForms.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stylesheets/homepage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="heading">
        <p>Employee Details</p>


    </div>
    <div class="button1">
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+  Add User" Width="88px" />
    </div>
    <div class="table2">
        <asp:GridView ID="GridView1" runat="server" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" AutoGenerateColumns="False" Width="1155px" DataKeyNames="EMPID" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting">

            <Columns>
                <asp:TemplateField HeaderText="IMG" SortExpression="IMG">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IMG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("IMG") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" InsertVisible="False" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" SortExpression="DEPARTMENT" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                <asp:BoundField DataField="NOTES" HeaderText="NOTES" SortExpression="NOTES" />

                <asp:CommandField ButtonType="Image" CancelImageUrl="" DeleteImageUrl="~/Images/delete-button-png-28580 (1) (1).png" EditImageUrl="~/Images/edit-icon-png-3607 (1) (1) (1).png" HeaderText="ACTIONS" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Images/update-black-18dp (1).png" />


            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#42515F" Font-Bold="True" ForeColor="White" Height="62px" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFFFF" ForeColor="Black" Height="58px" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />

        </asp:GridView>




        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeePayRollConnectionString %>" SelectCommand="SELECT [EMPID], [IMG], [NAME], [GENDER], [DEPARTMENT], [SALARY], [START_DATE], [NOTES] FROM [PayformDetails]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PayformDetails] WHERE [EMPID] = @original_EMPID AND [IMG] = @original_IMG AND [NAME] = @original_NAME AND [GENDER] = @original_GENDER AND [DEPARTMENT] = @original_DEPARTMENT AND [SALARY] = @original_SALARY AND [START_DATE] = @original_START_DATE" InsertCommand="INSERT INTO [PayformDetails] ([IMG], [NAME], [GENDER], [DEPARTMENT], [SALARY], [START_DATE]) VALUES (@IMG, @NAME, @GENDER, @DEPARTMENT, @SALARY, @START_DATE)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [PayformDetails]  SET [IMG] = @IMG, [NAME] = @NAME, [GENDER] = @GENDER, [DEPARTMENT] = @DEPARTMENT, [SALARY] = @SALARY, [START_DATE] = @START_DATE WHERE [EMPID] = @original_EMPID AND [IMG] = @original_IMG AND [NAME] = @original_NAME AND [GENDER] = @original_GENDER AND [DEPARTMENT] = @original_DEPARTMENT AND [SALARY] = @original_SALARY AND [START_DATE] = @original_START_DATE ">
                <DeleteParameters>
                    <asp:Parameter Name="original_EMPID" Type="Int32" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                    <asp:Parameter Name="original_GENDER" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT" Type="String" />
                    <asp:Parameter Name="original_SALARY" Type="String" />
                    <asp:Parameter Name="original_START_DATE" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IMG" Type="String" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="DEPARTMENT" Type="String" />
                    <asp:Parameter Name="SALARY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IMG" Type="String" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="DEPARTMENT" Type="String" />
                    <asp:Parameter Name="SALARY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="String" />
                    <asp:Parameter Name="original_EMPID" Type="Int32" />
                    <asp:Parameter Name="original_IMG" Type="String" />
                    <asp:Parameter Name="original_NAME" Type="String" />
                    <asp:Parameter Name="original_GENDER" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT" Type="String" />
                    <asp:Parameter Name="original_SALARY" Type="String" />
                    <asp:Parameter Name="original_START_DATE" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
