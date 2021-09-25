<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 2. DECLARACION --%>
<%!
    int contador = 0;
    LocalDate fecha = LocalDate.now();
%>


<%
    int diaSemana = fecha.getDayOfWeek().getValue();
    int diaMes = fecha.getDayOfMonth();
    int mes = fecha.getMonthValue();
    int diasAnio = fecha.getDayOfYear();
    int anio = fecha.getYear();
    
    out.println("<h1>Día del mes: "+diaMes+"</h1>");
    out.println("<h1>Mes: "+mes+"</h1>");
    out.println("<h1>Día de la Semana: "+diaSemana+"</h1>");
    out.println("<h1>Dia del Año: "+diasAnio+"</h1>");
    out.println("<h1>Año: "+anio+"</h1>");
    out.println("<h1>"+(contador++)+"</h1>");
%>
