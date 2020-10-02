<%-- 
    Document   : index
    Created on : 30 de set de 2020, 19:07:12
    Author     : cassio
--%>

<%@page import="Pacote.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        
    <% 

        Disciplina disciplina = new Disciplina();

        ArrayList list = disciplina.getList(disciplinas);
        int discSize = list.size();

    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal POO</title>
    </head>
    <body>
        <div align ="center">
        <h1>Prova de P O O</h1>
        <br/><br/><br/><hr/>
        <h3>Cássio Félix de Moura</h3>
        <h3>RA: 1290481913009</h3>
        
        <%= discSize %>
        
        </div>
        
        
      
    </body>
</html>
