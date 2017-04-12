<%-- 
    Document   : index
    Created on : Apr 12, 2017, 10:27:58 AM
    Author     : edwin < edwinkun at gmail dot com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login to My Page</title>
    </head>
    <body>
        <h1>Hari Ini Akan Belajar Login Page, Session dan Filtering</h1>
        <div>
            <form method="POST" action="/JWP04/ActionServlet">
                <table>
                    <tr>
                        <td colspan="2">Coba login, jika berhasil akan forward ke halaman baru dan diberikan session, jika gagal maka akan redirect ke halaman lain. Username yg benar : admin, password : admin.</td>
                    </tr>
                    
                    <% if(request.getParameter("error") != null && request.getParameter("error").equals("fail")) { %>
                    <tr>
                        <!-- tampilkan apabila gagal login -->
                        <td colspan="2" style="color: red;">Error, Anda gagal Login karena salah username dan password</td>
                    </tr>
                    <% } %>
                    
                    <% if(request.getParameter("error") != null && request.getParameter("error").equals("login")) { %>
                    <tr>
                        <!-- tampilkan apabila gagal login -->
                        <td colspan="2" style="color: red;">Error, Anda harus Login untuk mengakses resource tersebut</td>
                    </tr>
                    <% } %>
                    
                    <tr>
                        <td>Masukkan nama</td>
                        <td><input type="text" name="nama"></td>
                    </tr>
                    <tr>
                        <td>Masukkan password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="simpan"></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
