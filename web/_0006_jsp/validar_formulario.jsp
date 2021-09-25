<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String codigo = "";
    String nombre = "";
    String estatura = "";
    String edad = "";

    String mcodigo = "";
    String mnombre = "";
    String mestatura = "";
    String medad = "";
%>

<%
    if (request.getParameter("accion") != null) {
        int cod = 0;
        String nom = "";
        double est = 0.0;
        int eda = 0;

        codigo = request.getParameter("txtCodigo");
        nombre = request.getParameter("txtNombre");
        estatura = request.getParameter("txtEstatura");
        edad = request.getParameter("txtEdad");

        String erc = "[0-9]+";
        boolean codigoValido = codigo.matches(erc);
        if (codigoValido) {
            cod = Integer.parseInt(codigo);
            mcodigo = "OK";
        } else {
            mcodigo = "Error";
        }

        String ern = "[a-z,A-Z]+";
        boolean nombreValido = nombre.matches(ern);
        if (nombreValido) {
            nom = nombre;
            mnombre = "OK";
        } else {
            mnombre = "Error";
        }

        String ere = "([0-9]{1}|[0-9]\\.[0-9]{2})";
        boolean estaturaValido = estatura.matches(ere);
        if (estaturaValido) {
            est = Double.parseDouble(estatura);
            mestatura = "OK";
        } else {
            mestatura = "Error";
        }

        String erx = "[0-9]+";
        boolean edadValido = edad.matches(erx);
        if (edadValido) {
            eda = Integer.parseInt(edad);
            medad = "OK";
        } else {
            medad = "Error";
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="">
            <pre>
            Codigo?   <input type="text" name="txtCodigo"   value="<%=codigo%>"   />  <%=mcodigo%>
            Nombre?   <input type="text" name="txtNombre"   value="<%=nombre%>"   />  <%=mnombre%>
            Estatura? <input type="text" name="txtEstatura" value="<%=estatura%>" />  <%=mestatura%>
            Edad?     <input type="text" name="txtEdad"     value="<%=edad%>"     />  <%=medad%>
            <input type="submit" value="Enviar" name="accion" />
            </pre>
        </form>
    </body>
</html>


