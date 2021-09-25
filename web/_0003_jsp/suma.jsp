<%@page import="java.util.Date"%>
<html>
    <head>
        <title></title>
    </head>

    <%@ page language="java" %>

    <%!
        public String tnumero1;
        public String tnumero2;
        public String tresultado;
    %>

    <%
        tnumero1 = "";
        tnumero2 = "";
        tresultado = "";

        if (request.getParameter("bto_aceptar") != null) {
            try {
                tnumero1 = request.getParameter("txt_numero1");
                tnumero2 = request.getParameter("txt_numero2");
                double r = Double.parseDouble(tnumero1) + Double.parseDouble(tnumero2);
                tresultado = String.valueOf(r);
            } catch (Exception e) {
                out.println("<script>alert('" + "SE PRODUJO UN ERROR GRAVE POR INCONSISTENCIA CON LOS DATOS DE ENTRADA" + "')</script>");
            }
        };
    %>  

    <BODY>
    <CENTER>
        <TABLE ALIGN=center BORDER=0 WIDTH='100%' HEIGHT='100%'>
            <TR ALIGN=center>
                <TD ALIGN=center>

                    <FORM ACTION=sumar.jsp METHOD=post>
                        <TABLE BORDER=0 ALIGN=center BGCOLOR=#bbbbbb CELLPADDING=5 CELLSPACING=0>
                            <TR><TD COLSPAN=3><CENTER><H2>SUMAR 2 NUMEROS REALES</H2></CENTER></TD></TR>

                            <TR><TD COLSPAN=3 ALIGN=center><PRE>Numero 1 ?  <INPUT STYLE=text-align:center TYPE=text SIZE=13 NAME=txt_numero1 VALUE='<%= tnumero1%>'></PRE></TD></TR>
  <TR><TD COLSPAN=3 ALIGN=center><PRE>Numero 2 ?  <INPUT STYLE=text-align:center TYPE=text SIZE=13 NAME=txt_numero2 VALUE='<%= tnumero2%>'></PRE></TD></TR>
  <TR><TD COLSPAN=3 ALIGN=center><PRE>Suma     :  <INPUT STYLE=text-align:center TYPE=text SIZE=13 NAME=txt_resultado VALUE='<%= tresultado%>' onFocus=blur();></PRE></TD></TR>

  <TR><TD ALIGN=center><INPUT TYPE=submit NAME=bto_aceptar VALUE='    Aceptar    '></TD></TR> 
</TABLE>
</FORM>

</TD>
</TR>
<TR><TD> <%= "Fecha : " + new Date()%> </TD></TR>
</TABLE>
</CENTER>

</BODY>
</HTML>  
