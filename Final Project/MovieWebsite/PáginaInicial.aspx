<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial.master" AutoEventWireup="true" CodeFile="PáginaInicial.aspx.cs" Inherits="FrontOffice_PáginaInicial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body {
            background: url('/imagens/fundo.jpeg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-color: transparent;
            font-family: "Arial Narrow";
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
        }
        .fundo{
            background:white;
        opacity: 0.7; 
        filter:alpha(opacity=70); 
        zoom:1;
        
        }

        .auto-style4 {
            background: white;
            opacity: 0.8;
            filter: alpha(opacity=70);
            zoom: 1;
            width: 762px;
            height: 124px;
            padding: 20px;
            margin: 58px auto 59px auto;
        font-size: x-large;
    }

        .auto-style5 {
            font-size: x-large;
            text-align: center;
        }

    .auto-style7 {
        text-align: center;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        
        &nbsp;</p>
    <div class="auto-style4" >
        <p class="auto-style7">
        
            <strong>Bem-Vindo a um dos melhores sites de filmes!</p>
    <p class="auto-style5">
        
        <strong>Crie a sua conta e Desfrute dos Filmes Online Grátis!</strong></p>
    </div>
    <p class="auto-style2">
        
        &nbsp;</p>
    <br />

    <br />
    <br />


</asp:Content>

