<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String numero1 = "";
    String numero2 = "";
    String resultado = "";
    String mensaje = "";
    String opcion = "";
%>

<%
    if ((opcion = request.getParameter("accion")) != null) {
        double n1_d = 0.0;
        double n2_d = 0.0;
        double r = 0.0;

        String n1_s = "";
        String n2_s = "";

        try {
            n1_s = request.getParameter("txtN1");
            n2_s = request.getParameter("txtN2");
            numero1 = n1_s;
            numero2 = n2_s;

            n1_d = Double.parseDouble(n1_s);
            n2_d = Double.parseDouble(n2_s);
            r = 0.0;
            switch (opcion) {
                case "Sumar":
                    r = n1_d + n2_d;
                    break;
                case "Restar":
                    r = n1_d - n2_d;
                    break;
                case "Multiplicar":
                    r = n1_d * n2_d;
                    break;
                case "Dividir":
                    r = n1_d / n2_d;
                    break;
            }

            resultado = String.valueOf(r);
            mensaje = "OK";
        } catch (Exception e) {
            mensaje = "ENTRADA INCORRECTA";
        }
    }
%>

<form action="">
    <pre>
            Número 1  ?  <input type="text" name="txtN1" value="<%=numero1%>"   />  
            Número 2  ?  <input type="text" name="txtN2" value="<%=numero2%>"   />  
            Resultado ?  <input type="text" name="txtR"  value="<%=resultado%>" /> 
            Mensajero ?  <input type="text" name="txtM"  value="<%=mensaje%>" /> 

            <input type="submit" value="Sumar" name="accion" /><input type="submit" value="Restar" name="accion" /><input type="submit" value="Multiplicar" name="accion" /><input type="submit" value="Dividir" name="accion" />
    </pre>
</form>
