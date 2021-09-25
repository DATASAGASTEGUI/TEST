<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="procesar.jsp">
            <pre>
            <p>Codigo?   <input type="text" name="txtCodigo" /></p>
            <p>Nombre?   <input type="text" name="txtNombre" /></p>
            <p>Estatura? <input type="text" name="txtEstatura" /></p>
            <p>Edad?     <input type="text" name="txtEdad" /></p>

            <input type="submit" value="Enviar" name="accion" />
            </pre>
        </form>

    </body>
</html>
