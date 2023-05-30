<%@page import="br.com.restaurante.model.Client"%>
<%@page import="br.com.restaurante.model.Reserva"%>
<%@page language="java" contentType="text/html; charset-UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
Client cliente = (Client) request.getAttribute("cliente");
ArrayList<Reserva> reservas = (ArrayList<Reserva>) request.getAttribute("reservas");
%>

<!DOCTYPE html>
    <html lang="PT-BR">

     <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Perfil</title>
           <link rel="stylesheet" href="estilos/perfil-cliente.css">
        </head>

        <body>
        <header class="containerHeader">
            <div>
                <nav class="navCadastro">
                    <ul>
                        <li class="LoginECadastro"> Acesse seu <a href="login.jsp">Login</a></li>
                        <li class="LoginECadastro"> ou <a href="Cadastro.html">Cadastre se</a></li>
                    </ul>
                </nav>
                <nav class="navOpcoes">
                    <ul>
                        <li class="fonteCabecalho"><a href="home.html">Home</a></li>
                        <li class="fonteCabecalho"><a href="Sobre.html">Sobre</a></li>
                        <li class="fonteCabecalho"><a href="Cardapio.html">Cardápio</a></li>
                        <li class="fonteCabecalho"><a href="Reserva.jsp">Reservas</a></li>
                    </ul>
                </nav>
                <nav class="reserva">
                    <ul>
                        <a href="home.html"><img class="logo" src="img/logo.png" alt="" srcset=""></a>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="fundo"></div>
        <main>
            <div class="containerMain">
 <div class="meuPerfil">
 <h1>Meu Perfil: </h1>
    <form  name="perfil" action="perfil-cliente" method="post" enctype="multipart/form-data">

                        <div class="itemDados">
                         <label for="id" type="text" class="campo">ID: <%= cliente.getId() %><br> </label>
                            <label for="name" type="text" class="campo">Nome: <%= cliente.getName() %> <%= cliente.getLastName() %><br></label>                           
                            <label for="cpf" type="text" class="campo">CPF: <%= cliente.getCpf() %><br></label>
                            <label for="email" type="text" class="campo">Email: <%= cliente.getEmail() %><br></label>
                            <div class="button-end">
                            <a href="/update-cliente?email=<%= cliente.getEmail() %>">Atualizar</a>
                        </div>
                        </div>
                        </form>
                        <div class="button-end">
                        <a class="button-end" href="logout">Logout</a>
                        </div>
</div>
<div class="minhaReserva">    
<h1>Minhas Reservas: </h1>
<% if (reservas != null) {  %>
<% for (Reserva reserva : reservas) {  %>
        <div class="itemDados2">
          <label for="id" type="text" class="campo">ID: <%=reserva.getId()%><br></label>
          <label for="data" type="text" class="campo">Data: <%=reserva.getData()%><br></label>
          <label for="hora" type="text" class="campo">Hora: <%=reserva.getHora()%><br></label>
          <label for="qntPessoas" type="text" class="campo">Quantidade de Pessoas: <%=reserva.getQntPessoas()%><br></label>
          <label for="ambiente" type="text" class="campo">Ambiente: <%=reserva.getAmbiente()%><br></label>
          <label for="obs" type="text" class="campo">Observações: <%=reserva.getObs()%><br></label>
          <label for="status" type="text" class="campo">Status: <%=reserva.getStatus()%><br></label>
           <form action = "/delete-reserva" method ="post">
           <input type="hidden" name="id" value="<%=reserva.getId()%>"/>
           <button class="button2" type="submit">Cancelar</button>
       </form>
       </div>
    </div>
</div>
<% } %>
<% } %>
</main>
<footer class="Rodape">
    <h5>&copyTodos os direitos reservados</h5>
</footer>
</body>
</html>






