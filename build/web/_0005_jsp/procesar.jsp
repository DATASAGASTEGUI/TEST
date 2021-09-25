<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    //RECOGIDA DE LOS VALORES DEL FORMUARIO
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

<%-- EXPRESIONES --%>

<table border="1">
    <thead>
        <tr>
            <th>CODIGO</th>
            <th>NOMBRE</th>
            <th>ESTATURA</th>
            <th>EDAD</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=codigo%> </td>
            <td><%=nombre%></td>
            <td><%=estatura%></td>
            <td><%=edad%></td>
        </tr>
        <tr>
            <td><%=mcodigo%> </td>
            <td><%=mnombre%></td>
            <td><%=mestatura%></td>
            <td><%=medad%></td>
        </tr>
    </tbody>
</table>





