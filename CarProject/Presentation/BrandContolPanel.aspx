﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrandContolPanel.aspx.cs" Inherits="CarProject.Presentation.BrandContolPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Brnad Control Panel</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Brnad Control Panel</h2>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter name!" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </div>
        <div></div>
        <div>
            <asp:Button ID="BtnAdd" runat="server" Text="Add" OnClick="BtnAdd_Click" />
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
            <asp:Button ID="BtbDelete" runat="server" Text="Delete" OnClick="BtbDelete_Click" />

        </div>
  
        <div></div>

        <div>
            <asp:Label ID="StatusLbl" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:GridView ID ="GridView1" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                         <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton runat="server" OnClick="View_Click" CausesValidation="false" CommandArgument='<%#Eval("Id") %>'>
                                    View
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
        </div>
        <div>
             <asp:HiddenField ID="hiddenField1" runat="server" />
        </div>
    </form>
</body>
</html>
