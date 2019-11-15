<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Smiley Odont</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans&display=swap" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body,html{
            background-image: url("./imagens/triangulos.png");
            background-repeat: repeat;
            background-attachment: fixed;
            height: 100%;
        }

        h2{
            display: block;
            margin-top: 40px;
            font-family: 'Roboto', sans-serif;
            font-size: 30px;
            margin-bottom: 20px;
        }

        ul{
           position:absolute;
           list-style-type: none;
           margin: 0;
           padding: 0;
           overflow: hidden;
           background-color: #333;
           top: 0;
           width: 100%;
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
            transition: 0.4s;
        }
        li a:hover {
          background-color: #4dd599;
          text-decoration: none;
          color: aqua; 
          transition: 0.4s;
        }
        .active{
            background-color: #18484e;
        }
        .banner{
            background-image: url("imagens/bemlindo.jpg");
            width: 100%;
            height: 100%;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
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
        .infotexto{
            font-family: 'Fira Sans', sans-serif;
            font-size: 18px;
            padding-top: 30px;
        }

        .auto-style1 {
            width: 2967px;
            height: 929px;
        }

        hr{
            margin-top: 15px;
            display: flex;
            width: 100%;
            opacity: 0.7;
            background-color: black;
            height: 1.5px;
            color: black;
        }
        .MissaoEsquerda{
            display: inline-block;
            float: left;
            width: 30%;
        }

        .VisaoCentro{
            display: inline-block;
            width: 30%;
        }

        .ValoresDireita{
            float: right;
            display: inline-block;
            width: 30%;
        }

        .imglado{
            height: 400px !important;
            width: 30%;
            float: right;
        }
        
        img{
            height: 400px;
            max-width: 100%;
            max-height: 100%;
        }
        
        .planos{
            margin-top: 30px;
            height: 400px;
            display: inline-flex;
        }
        
        .bloco1{
            width: 30%;
            margin-left: 2.5%;
            position:relative;
            height: 400px;
            display: inline-block;
        }

        .bloco2{
            width: 30%;
            position:relative;
            height: 400px;
            margin-left: 2.5%;
            display: inline-block;
        }
        
        .bloco3{
            width: 30%;
            position:relative;
            height: 400px;
            margin-left: 2.5%;
            display: inline-block;
        }
        .card-text{
            font-family: 'Fira Sans', sans-serif;
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
    
    <div id="info">
        <h2 class="" align="center">NOSSA CLÍNICA </h2>
        <img class="imglado" src="imagens/apresent.png" />
        <p class="infotexto">A SmileyOdont é uma rede de clínicas odontológicas completa e inovadora com atendimento em diversas áreas de forma moderna e informatizada. A marca tem parcerias com franquias como Empório MiTi Distribuidora, FFBOdonto Equipamentos e Soluções, Sancler Protético, e diversas outras importantes empresas dos mais diversos segmentos que garantem os melhores equipamentos para  o melhor atendimento e pelo melhor preço para você.</p>
<p class="infotexto">Desde sua fundação, a SmileyOdont se destaca pelas mudanças de comportamento e conscientização quanto à necessidade de se manter uma correta saúde bucal, da frequência aos consultórios dentários para a prevenção e, sobretudo, pelos resultados obtidos no restabelecimento dos sorrisos dos pacientes.</p>
<p class="infotexto">A marca é reconhecida em todo o Brasil por suas técnicas avançadas em Ortodontia, Dentística, Estética, Endodontia, Implantodontia e outros procedimentos que utilizam a mais alta tecnologia, com segurança e conforto, em todas as etapas de cada tratamento.</p>

    </div>
    <hr />
    <div id="local">
       <h2 align="center">Nossa Localização</h2><div style="overflow: hidden; width: 700px; position: center;">
          <iframe width="700" height="440" src="https://maps.google.com/maps?width=700&amp;height=440&amp;hl=en&amp;q=Etec%2C%20Mar%C3%ADlia%2C%20Brasil+(Etec%20-%20Antonio%20Devisate)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
          <div style="position: absolute; width: 80%; bottom: 10px; left: 10%; right: 0; margin-left: 10%; margin-right: 10%; color: #000; text-align: center;">        
          </div><style>#gmap_canvas img{max-width:none!important; background:none!important}</style>
        </div><br/>
    </div>
        <hr />
    <div class="MissaoEsquerda">
        <h2 >Missão</h2>
        <p>Promover a educação pública profissional e tecnológica dentro de referenciais de excelência, visando o desenvolvimento tecnológico, econômico e social do Estado de São Paulo.</p>
    </div>
    <div class="VisaoCentro">
        <h2 >Visão</h2>
        <p>Consolidar-se como referência nacional na formação e capacitação profissional, bem como na gestão educacional, estimulando a produtividade e competitividade da economia paulista.</p>
    </div>
    <div class="ValoresDireita">
        <h2>Valores</h2>
        <p>– Valorização e desenvolvimento humano<br />– Postura ética e comprometimento<br />– Respeito a diversidade e a pluralidade<br />– Compromisso com a gestão democrática e transparente<br />– Cordialidade nas relações de trabalho<br />– Responsabilidade e sustentabilidade<br />– Criatividade e inovação</p>
    </div>
    <br />
        <hr />
    <div class="planos">
        <div class="bloco1">
          <img src="imagens/basic.jpg"  class="card-img-top" alt="..."/>
          <div class="card-body">
            <h4 class="card-title">Plano Basic</h4>
            <p class="card-text">Mensal R$23,99</p>
<p class="card-text">Oferece a cobertura ideal para atender a diversas necessidades pelo preço de um único atendimento. De consultas e diagnósticos até restaurações e extrações.</p>
          </div>
       </div>
       <div class="bloco2">
          <img src="imagens/Advanced.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h4 class="card-title">Plano Advanced</h4>
            <p class="card-text">Mensal R$45,60</p>
<p class="card-text">Além de garantir o tratamento ideal para sua saúde bucal, o plano dental também oferece cobertura para mantenedor de espaço.
</p>
          </div>
        </div>
        <div class="bloco3">
          <img src="imagens/premium.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h4 class="card-title">Plano Premium</h4>
            <p class="card-text">Mensal R$115,00 </p>
<p class="card-text">Com este plano, a reabilitação bucal é garantida. A cobertura inclui cirurgias, documentação ortodôntica básica e simplificada.</p>
          </div>
         </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
