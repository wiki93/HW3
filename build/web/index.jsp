<%-- 
    Document   : index
    Created on : Oct 4, 2016, 12:14:01 PM
    Author     : Dylan Green
    Notes      : Homework three software design and development
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    
    <body>
        <h1>Salary Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table id="table1">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTax" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTax" value="" size="50"></td>
                    </tr>
                    
                </tbody>
            </table>
            
            <div id="center">
                <input type="reset" value="Clear" id="clear">
                <input type="submit" value="Submit" id="submit">
            </div>
            
        </form>
        
    </body>
</html>
