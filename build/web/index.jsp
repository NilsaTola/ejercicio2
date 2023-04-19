<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.ejer2_usocookies.Tarea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("Tareas") == null)
    {
        ArrayList<Tarea> lisTareas = new ArrayList<Tarea>();
        session.setAttribute("Tareas", lisTareas);
    }
    ArrayList<Tarea> tareas = (ArrayList<Tarea>)session.getAttribute("Tareas");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <link rel="stylesheet" href="estilos.css">
    </head>
    <body>
        <div class="container">
                    <h1>Gestor de Tareas</h1>
                    <h6>Nombre: Nilsa Emily Tola Tola</h6>
        <a href="ServletTarea?op=nuevo">Nuevo</a>
        <br><br>
        <table border="2" >
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
            </tr>
            <%
                if(tareas !=null)
                {
                    for(Tarea T : tareas){
             
            %>
            <tr>
                <td><%=T.getId() %></td>
                <td><%=T.getDescripcion()%></td>
                 <td><input type="checkbox"></td>
                <td><button><a href="ServletTarea?op=editar&id=<%=T.getId()%>">Editar</a></button></td>            
                <td><button><a href="ServletTarea?op=eliminar&id=<%=T.getId()%>">Eliminar</a></button></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>