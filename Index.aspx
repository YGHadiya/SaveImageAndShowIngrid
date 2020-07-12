<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="UploadImageAndShowInGrid.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>

        <div>
             
            <table border="2" style="border-color:cyan ;margin-top:50px">
                <tr>
                    <th colspan="2">
                       <asp:Label runat="server" ID="lblMsg"></asp:Label>
                    </th>

                </tr>
                <tr>
                    <th>
                        <asp:Label runat="server" ID="Label1" Text="Upload Your Image : " ForeColor="Blue"></asp:Label><br />
                    </th>
                    <th>
                        <asp:FileUpload ID="FileUpload1" runat="server"   />
                    </th>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">

            <asp:Button ID="Button1" runat="server" Text="Upload Image" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table> 
        </div>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ImageName" HeaderText="ImageName" SortExpression="ImageName" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="86px" ImageUrl='<%# Eval("ImagePath") %>' Width="89px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ImageExample] ORDER BY [Id] DESC"></asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
