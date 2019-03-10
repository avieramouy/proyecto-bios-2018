﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ABMEmpleados.aspx.cs" Inherits="ABMEmpleados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 137px;
        }
        .style2
        {
            width: 214px;
        }
        .style7
        {
            height: 23px;
            text-align: center;
        }
        .style8
        {
            width: 236px;
            height: 25px;
        }
        .style9
        {
            width: 122px;
            height: 23px;
        }
        .style10
        {
            width: 122px;
            height: 23px;
            text-align: center;
        }
        .style11
        {
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table style="width:352%; height: 208px;">
            <tr>
                <td class="style7" colspan="3">
                    &nbsp;<asp:Label ID="Label8" runat="server" Font-Size="XX-Large" 
                        ForeColor="#000099" Text="ABM Empleados" Width="247px" 
                        style="text-align: center"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label5" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtUsuario" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtUsuario" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="B"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    <asp:Button ID="btnBuscar" runat="server" onclick="btnBuscar_Click" 
                        Text="Buscar" ValidationGroup="B" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label1" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtContraseña" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtContraseña" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    <asp:Button ID="btnLimpiar" runat="server" onclick="btnLimpiar_Click" 
                        Text="Limpiar" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtNombre" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtNombre" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtApellido" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtApellido" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label4" runat="server" Text="Nombre completo:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtNCompleto" runat="server" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtNCompleto" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label6" runat="server" Text="Horario de ingreso:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtHIngreso1" runat="server" Enabled="False" ToolTip="00:00" 
                        Width="26px"></asp:TextBox>
                    <asp:Label ID="Label9" runat="server" Text=":"></asp:Label>
                    <asp:TextBox ID="txtHoraIngreso2" runat="server" Width="26px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtHIngreso1" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtHoraIngreso2" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label7" runat="server" Text="Horario de salida:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="txtHSalida" runat="server" Enabled="False" ToolTip="00:00" 
                        Width="26px" ontextchanged="txtHIngreso2_TextChanged"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" Text=":"></asp:Label>
                    <asp:TextBox ID="txtHSalida2" runat="server" Width="26px" Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtHSalida" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtHSalida2" ErrorMessage="*" ForeColor="Red" 
                        ValidationGroup="A"></asp:RequiredFieldValidator>
                </td>
                <td class="style11">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style8">
                    <asp:Button ID="btnAgregar" runat="server" onclick="btnAgregar_Click" 
                        Text="Agregar" Enabled="False" ValidationGroup="A" />
                    <asp:Button ID="btnModificar" runat="server" Enabled="False" Text="Modificar" 
                        onclick="btnModificar_Click" ValidationGroup="A" />
                    <asp:Button ID="btnEliminar" runat="server" Enabled="False" Text="Eliminar" 
                        onclick="btnEliminar_Click" ValidationGroup="B" />
                </td>
                <td class="style11">
                    &nbsp;</td>
            </tr>
        </table>
        </asp:Content>

