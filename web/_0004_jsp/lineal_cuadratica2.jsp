<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    input[type=text] {
        text-align: center;
        width: 100px;
        border: 2px dotted #ff0000;
        background : rgba(0,0,0,.1);
        color: blue;
    }

    input#texto[type=text] {
        text-align: center;
        width: 250px;
        border: 2px dotted #ff0000;
        background : rgba(0,0,0,.1);
        color: red;
    }
</style>

<%
    String numeroA = "0.0";
    String numeroB = "0.0";
    String numeroC = "0.0";
    String resultado1 = "0.0";
    String resultado2 = "0.0";
    String mensaje = "";
    String opcion = "";
    int formulario = 0;
%>

<form action="">
    <p>
    <h3>COMBO DE SELECCION SIMPLE. SELCCIONE EL TIPO DE ECUACION A RESOLVER</h3>
    <select name="cboEcuacion" size="1">
        <option selected>Seleccionar</option>
        <option value="Lineal">Lineal</option>
        <option value="Cuadratica">Cuadrática</option>
    </select>

    <input type="submit" name="accion" value="Enviar" />
</p>
</form>

<%
    if (request.getParameter("accion1") != null && request.getParameter("accion1").equalsIgnoreCase("Lineal")) {
        try {
            double a = Double.parseDouble(request.getParameter("txtA"));
            double b = Double.parseDouble(request.getParameter("txtB"));
            numeroA = String.valueOf(a);
            numeroB = String.valueOf(b);
            if (a != 0) {
                double x1 = -b / a;
                resultado1 = String.valueOf(x1);
                mensaje = "OK";
            } else {
                mensaje = "NO ES UNA ECUACION LINEAL";
            }
        } catch (Exception e) {
            mensaje = "ENTRADA INCORRECTA";
        }
        formulario = 1;
    }
%>

<%
    if (request.getParameter("accion2") != null && request.getParameter("accion2").equalsIgnoreCase("Cuadratica")) {
        try {
            mensaje = "";
            double a = Double.parseDouble(request.getParameter("txtA"));
            double b = Double.parseDouble(request.getParameter("txtB"));
            double c = Double.parseDouble(request.getParameter("txtC"));
            numeroA = String.valueOf(a);
            numeroB = String.valueOf(b);
            numeroC = String.valueOf(c);
            if (a == 0) {
                mensaje = "NO ES UNA ECUACION CUADRATICA";
            } else {
                double discriminante = b * b - 4 * a * c;
                if (discriminante < 0) {
                    mensaje = "SOLUCION IMAGINARIA";
                } else {
                    if (discriminante > 0) {
                        double x1 = (-b + Math.sqrt(discriminante)) / (2 * a);
                        double x2 = (-b - Math.sqrt(discriminante)) / (2 * a);
                        resultado1 = String.valueOf(x1);
                        resultado2 = String.valueOf(x2);
                        mensaje = "OK(2)";
                    } else {
                        double x1 = (-b + Math.sqrt(discriminante)) / (2 * a);
                        resultado1 = String.valueOf(x1);
                        resultado2 = String.valueOf(x1);
                        mensaje = "OK(1)";
                    }
                }
            }
        } catch (Exception e) {
            mensaje = "ENTRADA INCORRECTA";
        }
        formulario = 2;
    }
%>

<%-- SELECCION: COMBO --%>
<%    if (request.getParameter("accion") != null) {
        opcion = request.getParameter("cboEcuacion");
        if (opcion.equalsIgnoreCase("Lineal")) {
            formulario = 1;
        } else {
            formulario = 2;
        }
    }
%>

<%-- SELECCION 1: LINEAL --%>
<%
    if (formulario == 1) {
%>

<h3>ECUACION LINEAL</h3>
<form action="">
    A<input type="text" name="txtA" value="<%=numeroA%>" />
    B<input type="text" name="txtB" value="<%=numeroB%>" />
    X<input type="text" name="txtX" value="<%=resultado1%>" disabled />
    <input id="texto" type="text" name="txtMensaje" value="<%=mensaje%>" disabled />
    <input type="submit" name="accion1" value="Lineal" />
</form>

<%
    }
%>

<%-- SELECCION 2: CUADRATICA --%>
<%
    if (formulario == 2) {
%>

<h3>ECUACION CUADRATICA</h3>
<form action="">
    A<input type="text" name="txtA" value="<%=numeroA%>" />
    B<input type="text" name="txtB" value="<%=numeroB%>" />
    C<input type="text" name="txtC" value="<%=numeroC%>" />
    X1<input type="text" name="txtX1" value="<%=resultado1%>" disabled />
    X2<input type="text" name="txtX2" value="<%=resultado2%>" disabled />
    <input id="texto" type="text" name="txtMensaje" value="<%=mensaje%>" disabled />
    <input type="submit" name="accion2" value="Cuadratica" />
</form>

<%
    }
%>

<%
    //0  5  6    No ecuación cuadratica  
    //1  0  9    Imaginaria
    //1 10  5    Solución real 2
    //1  2  1    Solución real 1
    //fadfas     Entrada incorrecta
    //0 5        No ecuación lineal
    //4 8        Solución real 1
    //dfasdf     Entrada incorrecta
%>




