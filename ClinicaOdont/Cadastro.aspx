<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Heebo:700&display=swap" rel="stylesheet">
    <title>Cadastro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <style type="text/css">
        /*Eu não lembro pra que isso aqui serve mas não apague por favor*/
        .auto-style1 {
            width: 100%;
        }
        h2{
            font-family: 'Roboto', sans-serif;
            margin-top: 40px;
            padding-bottom: 20px;
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
        /*Tamanho e posição do formulário de login*/
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
        /*Todos os info são gambiarra pra posicionar os inputs corretamente, não mexa por favor*/
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
       .Info3{
           margin-left: 30%;
           width: 50%;
           position: relative;
           bottom: 40px;
       }
       .Info4{
           margin-left: 62%;
           width: 45%;
           position: relative;
           bottom: 80px;
       }
       /*Input tipo 1*/
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
       /*Input tipo 2*/
       .I2{
           display: inline-block;
           position: relative;
           margin-left: 30%;
           height: 40px;
           border: none;
           border-bottom: 1px solid #fff;
           background: transparent;
           outline: none;
           color: #fff;
           font-size: 16px;
           width: 50%;
           transition: 0.4s;
       }
       /*Posicionando o span azul embaixo dos input*/
       .I1 ~ .focus-border{
       margin-left: 30%;
       position: absolute;
       bottom: 0;
       left: 0;
       width: 60%;
       height: 2px;
       z-index: 99;
       }
       .I2 ~ .focus-border{
       margin-left: 30%;
       position: absolute;
       bottom: 0;
       left: 0;
       width: 50%;
       height: 2px;
       z-index: 99;
       }
       /*Efeito de animação do span azul q fica embaixo dos input*/
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

       /*Posicionando a terceira linha q tem tres inputs, pequena gambiarra*/
        .tres {
            margin-left: 2%;
            width: 85%;
        }
              /*Remove o botão*/
        input[type="date"]::-webkit-clear-button {
            display: none;
        }

        /* Remove o outro botão kkk */
        input[type="date"]::-webkit-inner-spin-button { 
            display: none;
        }

        /* Remove o drop down do calendário */
        input[type="date"]::-webkit-calendar-picker-indicator {
            display: none;
        }
               /*texto "Ja possui cadastro?" */
       .ja{
           text-decoration: none;
           color: lightgreen;
           font-family: 'Roboto', sans-serif;
           transition: 0.5s;
       }
       .ja:hover{
           transition: 0.5s;
           text-decoration: none;
           color: #fff;
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
        /*Efeito do botão voltar*/
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
       /*Efeito do botão de cadastro*/
       #Entrar:hover, #Entrar:focus, #Entrar:active{
           color: darkslategray !important;
           background-color: #61f2f5 !important;
           border-color: #61f2f5 !important;
           transition: all 0.4s ease 0s;
       }
       a{
           text-decoration: none;
           outline: none;
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
        <div class ="Info">
            <asp:TextBox ID="Senha" runat="server" CssClass="I1" placeholder="Senha"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <div class ="Info2">
            <asp:TextBox ID="ConfSenha" runat="server" CssClass="I1" placeholder="Confirme sua Senha"></asp:TextBox>
            <span class="focus-border"></span>
        </div>
        <div class="tres">
            <div class ="Info">
                <asp:TextBox ID="RG" runat="server" CssClass="I2" placeholder="RG"></asp:TextBox>
                <span class="focus-border"></span>
            </div>
            <div class ="Info3">
                <input ID="DataNasc" class="I2" type="date" />
                <span class="focus-border"></span>
            </div>
            <div class ="Info4">
                <asp:TextBox ID="CPF" runat="server" CssClass="I2" placeholder="CPF"></asp:TextBox>
                <span class="focus-border"></span>
            </div>
        </div>
        <div class="final">
            <p align="center"><a class="ja" href="Login.aspx">Já possui cadastro?</a></p>
            <a href="Default.aspx"><asp:Button ID="Voltar" runat="server" TextAlignment="center"  type="button" class="btn btn-info" Text="Voltar" /></a>
            <asp:Button ID="Entrar" runat="server"  type="button" class="btn btn-info" Text="Cadastrar" />
        </div>
    </form>
</body>
</html>

