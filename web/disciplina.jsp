<%-- 
    Document   : disciplina
    Created on : 30 de set de 2020, 20:47:57
    Author     : cassio

Sigla	Disciplina
IAL205	Internet das Coisas
IBD002	Banco de Dados
IES300	Engenharia de Software III
ILP007	Programação Orientada a Objetos
ILP512	Linguagem de Programação IV
ISO200	Sistemas Operacionais II
TTG001	Metodologia da Pesquisa Científico-Tecnológica
TTG003	Trabalho de Graduação I
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Pacote.Disciplina"%>
<%@include file="WEB-INF/menu.jspf" %>

<% 
    ArrayList<Disciplina> disciplinas = (ArrayList) application.getAttribute("disciplinas");
    if(disciplinas == null){
        disciplinas = new ArrayList();
        disciplinas.add(new Disciplina("IAL205", "","4" )); 
        disciplinas.add(new Disciplina("IBD002", "","4" )); 
        disciplinas.add(new Disciplina("IES300", "", "4")); 
        disciplinas.add(new Disciplina("ILP007", "", "4")); 
        disciplinas.add(new Disciplina("ILP512", "", "4")); 
        disciplinas.add(new Disciplina("ISO200", "", "4")); 
        disciplinas.add(new Disciplina("TTG001", "", "4")); 
        disciplinas.add(new Disciplina("TTG003", "", "4")); 
        application.setAttribute("disciplinas", disciplinas);
    
    
    for(int j=0; j<disciplinas.size(); j++){
        disciplinas.get(j).setNota(Float.parseFloat("0.0"));
    }
    }
    if(request.getParameter("enviar")!=null){
        int t = Integer.parseInt(request.getParameter("indice"));
        
        disciplinas.get(t).setNota(Float.parseFloat(request.getParameter("nota")));
    }

%>
<!DOCTYPE html>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align ="center">
        <h1>Disciplinas Cursadas no Semestre</h1>
        <div class="container">
  
              
  <table class="table table-dark table-striped">
    <thead>
            <tr>
                <th> NOME</th>
                <th> EMENTA</th>
                <th> CICLO</th>
                <th> NOTA</th>
            </tr>
    </thead>
    <tbody>
            <% for(int i=0; i<disciplinas.size(); i++){%>
            <% Disciplina disciplina = disciplinas.get(i);%>
            <tr><td><%=disciplina.getNome()%></td>
            <td><%=disciplina.getEmenta()%></td>
            <td><%=disciplina.getCiclo()%></td>
            <td>
                <form>
                  <input type="text" name="nota" value="<%=disciplina.getNota()%>">
                  <input type="hidden" name="indice" value="<%=i%>" />
                  <td><input type="submit" name="enviar" value="modificar" /></td>
                </form>
            </td>
             <%} %>
            </tr>
    </tbody>
        </table>
        </div> 
    </body>
</html>
