<%@page import="br.com.restaurante.model.Client"%>
<%@page language="java" contentType="text/html; charset-UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
Client cliente = (Client) request.getAttribute("cliente");
%>

<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva</title>
    <link rel="stylesheet" href="estilos/reserva.css">
</head>

<body>

 <header class="containerHeader">
            <div>
                <nav class="navCadastro">
                            <ul>
                                <%-- Verifica se o cliente está logado --%>
                                <% if (cliente != null) { %>
                                    <li class="LoginECadastro">Bem vindo! <%= cliente.getName() %> <%= cliente.getLastName() %></li>
                                    <li class="LoginECadastro">Acesse seu <a href="/perfil-cliente">perfil</a></li>
                                <% } else { %>
                                    <li class="LoginECadastro">Acesse seu <a href="login.jsp">Login</a></li>
                                    <li class="LoginECadastro">ou <a href="Cadastro.jsp">Cadastre-se</a></li>
                                <% } %>
                            </ul>
                        </nav>
                <nav class="navOpcoes">
                    <ul>
                        <li class="fonteCabecalho"><a href="/home">Home</a></li>
                        <li class="fonteCabecalho"><a href="Sobre.html">Sobre</a></li>
                        <li class="fonteCabecalho"><a href="Cardapio.html">Cardápio</a></li>
                        <li class="fonteCabecalho"><a href="Reserva.jsp">Reservas</a></li>

                    </ul>
                </nav>
                <nav class="reserva">
                    <ul>
                        <a href="home.jsp"><img class="logo" src="img/logo.png" alt="" srcset=""></a>
                    </ul>
                </nav>
            </div>
        </header>
<main>
<div class="fundo"></div>
    <div class="container mb-50">

        <div class="mr-100">
            <h2 class="lh-50">Realize aqui sua Reserva!</h2>
            <form action="/reserva" method="post">
                <label for="data">Selecione a data desejada:</label>
                <input class="center" type="date" id="data" name="data">
                <br>
                <label for="hora">Selecione o horário desejado:</label>
                <select class="center"  name="hora" id="hora">
                    <option>12:00</option>
                    <option>12:30</option>
                    <option>13:00</option>
                    <option>13:30</option>
                    <option>14:00</option>
                    <option>14:30</option>
                    <option>15:00</option>
                    <option>18:00</option>
                    <option>18:30</option>
                    <option>19:00</option>
                    <option>19:30</option>
                    <option>20:00</option>
                    <option>20:30</option>
                    <option>21:00</option>
                    <option>21:30</option>
                    <option>22:00</option>
                </select>
                <br>
                <label for="qntPessoas">Selecione a quantidade de Pessoas:</label>
                <select class="center" name="qntPessoas" id="qntPessoas">
                    <option>1 a 2</option>
                    <option>3 a 4</option>
                    <option>5 a 7</option>
                    <option>8 ou mais</option>
                </select>
                <br>
                <label for="ambiente">Selecione o Ambiente desejado:</label>
                <select class="center" name="ambiente" id="ambiente">
                    <option>Externo</option>
                    <option>Interno</option>
                    <option>Bar</option>
                </select>
                <br>
                <br>
                <label id="l1" for="extra">Deseja solicitar algo especial?</label><br>
                <textarea class="center" name="extra" id="extra" cols="50" rows="5"></textarea>
                <br><br>
                <input type="hidden" name="clienteId" value="<%= session.getAttribute("id") %>">
                <button class="button" type="submit">Solicitar Reserva</button>
            </form>
        </div>
        <div class="fila-de-espera">
            <h2 >Não encontrou a data e o horário desejado?</h2>
            <h2 class="mr-70">Entre na Fila de Espera!</h2><br><br>
            <button class="button">Entrar na Fila de Espera</button>
        </div>
    </div>
</main>
<footer class="Rodape">
    <h5>&copyTodos os direitos reservados</h5>
</footer>
</body>
</html>