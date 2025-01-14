﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="WebApplication.Customer.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        *{
            margin:0px auto;
        }
        #wl td{
            border: black 2px solid;
            padding : 10px 20px;
            
        }
        #wl{
            border-collapse:collapse;
            margin-bottom:-22px;
            background-color:white;
        }
        #wl2 td{
            border: black 2px solid;
            padding : 10px 20px;
        }
        #wl2{
            border-collapse:collapse;
            margin-bottom:-30px;
            background-color:ivory;
        }

    </style>
    <h1 style="text-align:center;">💖My Wishlist</h1><br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" style="background-color:antiquewhite;">
        
        <HeaderTemplate>
            <table id="wl2" style="margin:0px auto;" >
                <tr style="font-weight:bold;">
                    <td style="width:300px;max-width:300px;overflow-wrap: break-word; text-align:center;">Artwork Preview</td>
                    <td style="width:150px;max-width:150px;overflow-wrap: break-word; text-align:center;">Art Name</td>
                    <td style="width:150px;max-width:150px;overflow-wrap: break-word; text-align:center;">Art Price</td>
                    <td style="width:100px;max-width:100px;overflow-wrap: break-word; text-align:center;">Remove From Wishlist</td>
                    
                </tr>
                </table>
        </HeaderTemplate>
        <ItemTemplate>
            <table id="wl" style="margin:0px auto;margin-top:-22px;"" >
               
                <tr>
                    <td style="width:300px;max-width:300px;">
                        <asp:Label ID="lblId" runat="server" Text='<%# Eval("Expr1") %>' style="display: none;"></asp:Label>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Customer/ViewArtDetails.aspx?Id=" + Eval("Id") %>'>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgPath") %>' style="width:300px;height:250px;max-width: 300px;  max-height: 300px;box-shadow:5px 5px 5px #ccc;" /></asp:HyperLink>
                    </td>
                    <td style="width:150px;max-width:150px;overflow-wrap:break-word;text-align:center;font-weight:bold;">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Customer/ViewArtDetails.aspx?Id=" + Eval("Id") %>'><%# Eval("name") %></asp:HyperLink>
                        
                    </td>
                    <td style="width:150px;max-width:150px;overflow-wrap:break-word;text-align:center;">
                        <b>
                            <asp:Label runat="server" Text="RM "></asp:Label>
                            <asp:Label ID="lblPricehd" runat="server" Text='<%# Eval("price") %>'>
                            </asp:Label>
                        </b>
                    </td>
                    <td style="width:100px;max-width:100px;overflow-wrap:break-word">
                        <asp:Button ID="rmWishlist" runat="server" Text="Remove" CommandName="remove" style="font-weight:600;"/>
                    </td>
                    </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>

    
    
</asp:Content>
