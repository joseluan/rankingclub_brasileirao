<%-- 
    Document   : index
    Created on : 26/02/2017, 18:36:02
    Author     : Luan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="method.Method"%>
<%@page import="java.util.function.Function"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="firt page">
        <meta name="author" content="José Luan Silva do Nascimento">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Ranking of Clubes</title>
    </head>
    <body>
        <div id="principal">
            
            <div id="RankingLateral">
                
                <table border="0">
                    <center>
                        <h4>Ranking</h4>
                        <%  Method mt = new Method();
                            ResultSet rs = mt.selectAllClube();
                            int contador = 1;
                            while(rs.next()){
                        %>
                        <tr>
                            <td><%=contador%>°</td>
                            <td>&nbsp;<img width="25pxs" height="25px"  src="imagens/<%=rs.getString("nome_logo")%>"/>&nbsp;</td>
                            <td>&nbsp;<%=rs.getString("nome")%></td>
                        </tr>
                        <%
                            contador++;
                            }
                            contador = 1;
                        %>
                    </center>
                </table>
            </div>
                    <%  
                        rs = mt.selectRandomClube();
                        
                        if (request.getParameter("id") != null) {
                            mt.insertValue(request.getParameter("id"),request.getParameter("num"));
                            mt.deleteValue(request.getParameter("id2"),request.getParameter("num"));
                            rs = mt.selectRandomClube();
                        }
                        
                        String[] clube1 = new String[4];
                        String[] clube2 = new String[4];
                        
                        while(rs.next()){
                            if(contador == 1){ 
                                clube1[0] = rs.getString("nome");
                                clube1[1] = rs.getString("nome_logo");
                                clube1[2] = rs.getString("id");
                                clube1[3] = rs.getString("valor");
                            }else{ 
                                clube2[0] = rs.getString("nome");
                                clube2[1] = rs.getString("nome_logo");
                                clube2[2] = rs.getString("id");
                                clube2[3] = rs.getString("valor");
                            } 
                            contador++;
                        }
                        rs.close();
                        mt.close();
                     %>
            <div id="VotacaoCenter">
                <center>
                    <h1 id="title">Ranking of clubs</h1>
                    <table border="0" id="principal">
                        <tr>              
                            <td>
                                <div id="clube2">
                                    <form action="index.jsp" method="post">
                                        <center>
                                            <h2 class="subtitle"><%=clube1[0]%></h2>
                                            <input class="image" width="250" type="image" src="imagens/<%=clube1[1]%>">
                                            <input type="hidden" name="id" id="id" value="<%=clube1[2]%>">
                                            <input type="hidden" name="id2" id="id2" value="<%=clube2[2]%>">
                                            <input type="hidden" name="num" id="id2" value="<%=clube2[3]%>">
                                        </center>
                                    </form>
                                </div>
                            </td>
                            <td><h2>VS</h2></td>
                            <td>
                                <div id="clube1">
                                    <form action="index.jsp" method="post">
                                        <center>
                                            <h2 class="subtitle"><%=clube2[0]%></h2>
                                            <input class="image" width="250" type="image" src="imagens/<%=clube2[1]%>">
                                            <input type="hidden" name="id" id="id" value="<%=clube2[2]%>">
                                            <input type="hidden" name="id2" id="id2" value="<%=clube1[2]%>">
                                            <input type="hidden" name="num" id="id2" value="<%=clube1[3]%>">
                                        </center>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
        </div>
    </body>
</html>
