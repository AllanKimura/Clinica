<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seja Bem-vindo!!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" 
    crossorigin="anonymous"></script>

    <style>
        ul{
            position:absolute;
           list-style-type: none;
           margin: 0;
           padding: 0;
           overflow: hidden;
           background-color: #333;
           top: 0;
           width:100%;
        }
        li{
           float:left; 
        }

        li a{
            display: block;
            color: #E0FFFF;
            text-align: center;
            padding: 14px 25px;
            text-decoration: none;
        }
        li a:hover {
          background-color: #111;
          text-decoration: none;
          color: aqua; 
        }
        .active{
            background-color: #18484e;
        }
        .banner{
            background-image: url("imagens/bemlindo.jpg");
            height: 700px;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .BemVindo{
            position: absolute;
            width:50%;
            bottom: 45%;
            left: 27%;
            font-family:Arial, sans-serif;
            line-height:1em;
            color:#fff9d6;
            font-style:italic;
            font-size:68px;
            text-shadow:0px 0px 0 rgb(212,212,212),1px 1px 0
            rgb(179,179,179),2px 2px 0 rgb(146,146,146), 3px 3px 0
            rgb(113,113,113),4px 4px 3px rgba(0,0,0,0.6),4px 4px 1px
            rgba(0,0,0,0.5),0px 0px 3px rgba(0,0,0,.2);

        }
        .auto-style1 {
            width: 2967px;
            height: 929px;
        }
        .imglado{
            width: 30%;
            float: right;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="menu">
    <ul>
        <li><a class="" href="#home">Home</a></li>
        <li><a href="#info">Informação</a></li>
        <li><a href="#local">Localização</a></li>
        <li><a href="#obje">Objetivos</a></li>
        <li><a href="#plan">Planos</a></li>
        <li><a href="#assoc">Associe-se</a></li>
        <li style="float:right"><a class="active" href="Login.aspx">Login</a></li>
    </ul>
    </div>
    </form>
    <div class="banner"></div>
    <h1 class="BemVindo">Seja Bem-(V)Lindo!!!</h1>
    <h2>Informações:</h2>
     <img class="imglado" src="imagens/apresent.png" />
    <div>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in eros pulvinar, laoreet ipsum id, gravida lectus.<br /> Nullam mi nisl, commodo quis lorem nec, molestie facilisis ligula. Fusce gravida fermentum mi, vestibulum consequat nisl tristique a. Morbi nec blandit metus, eget posuere lorem. Nam accumsan posuere arcu non elementum. Sed ut purus interdum, commodo nibh vitae, porta enim.  In dictum est risus, eget sollicitudin ipsum bibendum at. Donec lobortis facilisis velit, non fermentum purus. Sed laoreet risus et mauris aliquam pretium.</p>
    <p>Nulla molestie tempus neque nec semper. Mauris lacinia consequat hendrerit. Etiam sodales ornare eleifend. Phasellus ut scelerisque lorem. Aenean porta ante arcu, id ullamcorper nulla ornare vel. Curabitur nec venenatis turpis. Nam tempor condimentum eleifend. Duis auctor, erat interdum porta condimentum, magna metus fringilla augue, sed maximus diam felis non augue. Mauris ut sollicitudin leo. In nec magna ex. Sed iaculis lorem id urna scelerisque elementum.</p>
    <p>Duis id fermentum est. Integer bibendum, lectus et ultricies accumsan, ipsum ligula pulvinar erat, vel volutpat ligula massa nec neque. Proin cursus, est feugiat elementum faucibus, magna ligula dapibus purus, a mattis tortor elit non ipsum. Phasellus sed consequat neque, vitae sodales enim. Mauris cursus magna vitae ligula mollis, et pellentesque purus consectetur. Mauris lacinia felis quis semper congue. Integer mattis vel urna ac auctor.</p>
    <p>Duis id fermentum est. Integer bibendum, lectus et ultricies accumsan, ipsum ligula pulvinar erat, vel volutpat ligula massa nec neque. Proin cursus, est feugiat elementum faucibus, magna ligula dapibus purus, a mattis tortor elit non ipsum. Phasellus sed consequat neque, vitae sodales enim. Mauris cursus magna vitae ligula mollis, et pellentesque purus consectetur. Mauris lacinia felis quis semper congue. Integer mattis vel urna ac auctor.</p>

    </div>
   

    <div class="card mb-3">
  <img src="imagens/basic.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Plano Basic</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
    <div class="card mb-3">
  <img src="imagens/Advanced.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Plano Advanced</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
 <div class="card mb-3">
  <img src="imagens/premium.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Plano Premium</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>

</body>
</html>
