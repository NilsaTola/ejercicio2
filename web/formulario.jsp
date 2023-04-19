<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                  <h1>Ingrese una Nueva Actividad </h1>
            <form action="ServletTarea" method="POST">
        <table>
            <tr>
                <td>ID </td>
                <td><input type="text" placeholder=" " name="id"></td>
            </tr>
            <tr>
                <td>Tarea </td>
                <td><input type="text" placeholder=" " name="descripcion"></td>
            </tr>    
        </table>
                <br><br>
            <button type="submit">
                Registrar La Tarea
            </button>
        <br><br>
        </form>
        <a href="index.jsp"> Volver </a>
        </div>
    </body>
</html>
