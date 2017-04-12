<%-- 
    Document   : welcome
    Created on : Apr 12, 2017, 10:33:27 AM
    Author     : edwin < edwinkun at gmail dot com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sudah Berhasil Login di Halaman Admin</title>
    </head>
    <body>
        <!-- ambil isi session dari dalam jsp -->
        <h1>Hello <%= session.getAttribute("nama") %> !</h1>
        
        <br />
        <br />
        
        <a href="/JWP04/admin/protected.jsp"> Halaman Protected </a>
        
        <br />
        <br />
        
        <a href="/JWP04/admin/LogoutServlet"> Logout </a>
    </body>
</html>
