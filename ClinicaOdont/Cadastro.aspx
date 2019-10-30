<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        h2{
            font-family: 'Roboto', sans-serif;
            margin-top: 20px;
          }
        body,html{
            color: white;
            height: 100%;
            margin: 0;
        }
        .fundo{
            background-image: url(../imgs/FundoClinica.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 100%;
            /*filter: blur(2px);
            -webkit-filter: blur(2px);*/
        }     

        form{
           background: rgba(0,0,0,0.6);
           transform: translate(-50%,-50%);
           position: absolute;
           box-sizing: border-box;
           top: 50%;
           left: 50%;
           width: 60%;
           height: 550px;
       }
       .Info{
           width: 50%;
           position: relative;
       }
       .Info2{
           margin-left: 40%;
           width: 50%;
           position: relative;
           bottom: 40px;
       }
       .I1{
           display: inline-block;
           margin-left: 30%;
           height: 40px;
           border: none;
           border-bottom: 1px solid #fff;
           background: transparent;
           outline: none;
           color: #fff;
           font-size: 16px;
           width: 60%;
           transition: 0.4s;
       }
       .I2{
           position: relative;
           margin-left: 30%;
           height: 40px;
           border: none;
           border-bottom: 1px solid #fff;
           background: transparent;
           outline: none;
           color: #fff;
           font-size: 16px;
           width: 60%;
           transition: 0.4s;
       }
       #ConfSenha{
           bottom: 50px;
       }
       .I1 ~ .focus-border,
       .I2 ~ .focus-border{
       margin-left: 30%;
       position: absolute;
       bottom: 0;
       left: 0;
       width: 60%;
       height: 2px;
       z-index: 99;
       }
       .I1 ~ .focus-border:before,
       .I1 ~ .focus-border:after,
       .I2 ~ .focus-border:before,
       .I2 ~ .focus-border:after{
       content: "";
       position: absolute;
       bottom: 0;
       left: 0;
       width: 0;
       height: 100%;
       background-color: deepskyblue;
       transition: 0.4s;}
       .I1 ~ .focus-border:after,
       .I2 ~ .focus-border:after{
           left: auto;
           right: 0;
       }
       .I1:focus ~ .focus-border:before,
       .I1:focus ~ .focus-border:after,
       .I2:focus ~ .focus-border:before,
       .I2:focus ~ .focus-border:after{
           width: 50%;
           transition: 0.4s;
       }
    
    </style>
   <link href="https://fonts.googleapis.com/css?family=Mansalva|Montserrat&display=swap" rel="stylesheet">
</head>
<body>
    <div class="fundo"></div>
    <form id="form1" runat="server">
        <h2 align="center">Cadastro</h2>
        <div class ="Info">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="I1" placeholder="Nome"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <div class ="Info2">
            <asp:TextBox ID="Email" runat="server" CssClass="I1" placeholder="Email"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <br />
        <div class ="Info">
            <asp:TextBox ID="Senha" runat="server" CssClass="I2" placeholder="Senha"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <br />
        <div class ="Info2">
            <asp:TextBox ID="ConfSenha" runat="server" CssClass="I2" placeholder="Confirme sua Senha"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <br />
        <a href="Default.aspx">Já possui cadastro?</a><br/> <br/>
        <asp:Button ID="Cadastrar" runat="server"  type="button" class="btn btn-info" Text="Cadastrar" />
    </form>
</body>
</html>

