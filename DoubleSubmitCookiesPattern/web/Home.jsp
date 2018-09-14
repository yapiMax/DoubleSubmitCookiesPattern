<%-- 
    Document   : Home
    Created on : Sep 12, 2018, 1:12:18 AM
    Author     : yapilk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <script>
            
            $(document).ready(function() {
		               
                var getCookiebyName = function(name) {
                    var getCookieValues = function(cookie) {
                        var cookieArray = cookie.split('=');
                        return cookieArray[1].trim();
                    };

                    var getCookieNames = function(cookie) {
                        var cookieArray = cookie.split('=');
                        return cookieArray[0].trim();
                    };

                    var cookies = document.cookie.split(';');
                    var cookieValue = cookies.map(getCookieValues)[cookies.map(getCookieNames).indexOf(name)];

                    return (cookieValue === undefined) ? null : cookieValue;
                };
                
                
		$("#csrf").val(getCookiebyName("csrftoken"));
            });
            
            
        </script>
    </head>
    <body>
        <form method="POST" action="HomeController">
            <input type="hidden" name="csrf" />
            
            <input type="submit" value="Submit"/>
            
        </form>
    </body>
</html>
