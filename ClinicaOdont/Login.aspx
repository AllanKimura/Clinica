<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Heebo:700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <style type="text/css">
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
           width: 40%;
           height: 400px;
       }
       .login{
           width: 50%;
           position: relative;
       }
       #Email{
           margin-left: 50%;
           height: 40px;
           border: none;
           padding: 7px 0;
           border-bottom: 1px solid #fff;
           background: transparent;
           outline: none;
           color: #fff;
           font-size: 16px;
           width: 100%;
           transition: 0.4s;
       }
       #Email ~ .focus-border, #Senha ~ .focus-border{
       margin-left: 50%;
       position: absolute;
       bottom: 0;
       left: 0;
       width: 100%;
       height: 2px;
       z-index: 99;

       }
       #Email ~ .focus-border:before,
       #Senha ~ .focus-border:before,
       #Email ~ .focus-border:after,
       #Senha ~ .focus-border:after{
       content: "";
       position: absolute;
       bottom: 0;
       left: 0;
       width: 0;
       height: 100%;
       background-color: deepskyblue;
       transition: 0.4s;}
       #Email ~ .focus-border:after,
       #Senha ~ .focus-border:after{
           left: auto;
           right: 0;
       }
       #Email:focus ~ .focus-border:before, 
       #Senha:focus ~ .focus-border:before,
       #Email:focus ~ .focus-border:after,
       #Senha:focus ~ .focus-border:after{
           width: 50%;
           transition: 0.4s;
       }
       /*#Email:focus{
           transition: 0.5s;
           border-bottom: 1px solid deepskyblue;
           width: 55%;
       }*/
       #Senha{
           margin-left: 50%;
           height: 40px;
           border: none;
           border-bottom: 1px solid #fff;
           padding: 7px 0;
           background: transparent;
           outline: none;
           color: #fff;
           font-size: 16px;
           width: 100%;
           transition: 0.4s;
       }
       #Voltar{
           display: inline-block;
           border-radius: 0;
           color: #fff !important;
           text-transform: uppercase;
           text-decoration: none;
           background: none;
           border: 3px solid #fff !important;
           transition: all 0.4s ease 0s;
           margin-top: 20px;
           margin-left: 25%;
           width: 23%;
           height: 40px;
           border: none;
           color: #fff;
           font-size: 16px;
           font-family: 'Heebo', sans-serif;
       }
       #Voltar:hover, #Voltar:focus, #Voltar:active{
           color: #ffffff !important;
           background-color: #8f4426 !important;
           border-color: #8f4426 !important;
           transition: all 0.4s ease 0s;
       }
       #Entrar{
           display: inline-block;
           border-radius: 0;
           color: #fff !important;
           text-transform: uppercase;
           text-decoration: none;
           background: none;
           border: 3px solid #fff !important;
           transition: all 0.4s ease 0s;
           margin-top: 20px;
           margin-left: 10px;
           width: 25%;
           height: 40px;
           border: none;
           color: #fff;
           font-size: 16px;
           font-family: 'Heebo', sans-serif;
       }
       #Entrar:hover, #Entrar:focus, #Entrar:active{
           color: darkslategray !important;
           background-color: #61f2f5 !important;
           border-color: #61f2f5 !important;
           transition: all 0.4s ease 0s;
       }
       .nao{
           display: inline-block;
           margin-top: 40px;
           text-decoration: none;
           color: lightgreen;
           font-family: 'Roboto', sans-serif;
           transition: 0.5s;
       }
       .nao:hover{
           transition: 0.5s;
           text-decoration: none;
           color: #fff;
       }

    </style>
   <link href="https://fonts.googleapis.com/css?family=Mansalva|Montserrat&display=swap" rel="stylesheet">
</head>
<body>
    <div class="fundo"></div>
    <form id="form1" runat="server" method="post">
        <h2 align="center">LOGIN:</h2>
            <p>&nbsp;</p>
        <div class ="login">
            <asp:TextBox ID="Email" placeholder="Email" runat="server"></asp:TextBox>
            <span class="focus-border"></span>
            </div>
        <br />
        <div class ="login">
            <asp:TextBox ID="Senha" placeholder="Senha" runat="server"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <br />
        <asp:Button ID="Voltar" runat="server" TextAlignment="center"  type="button" class="btn btn-info" Text="Voltar" />
        <asp:Button ID="Entrar" runat="server"  type="button" class="btn btn-info" Text="Entrar" /> <br />
        <p align="center"><a class="nao" href="Cadastro.aspx">Não possui cadastro?</a></p>
    </form></body>
</html>
