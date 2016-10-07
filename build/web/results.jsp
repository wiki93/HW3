<%-- 
    Document   : results
    Created on : Oct 4, 2016, 1:01:26 PM
    Author     : Dylan Green
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="./style.css" />
    </head>
    
    <%
        
        double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTax = Double.parseDouble(request.getParameter("preTax"));
        double postTax = Double.parseDouble(request.getParameter("postTax"));
        double overtimeHours;
        double grossPay;
        double totalHours = hoursWorked;
        double overtimeRate = hourlyPay * 1.5;
        double pretaxPay;
        double taxAmount;
        double postTaxPay;
        double netPay;
        //determine if employee worked overtime
        if(hoursWorked>40){
            overtimeHours = hoursWorked - 40;
            hoursWorked = hoursWorked - overtimeHours;
            totalHours = hoursWorked + overtimeHours;
        }
        else{
            overtimeHours = 0;
        }
        //calculate gross pay bassed on overtime
        grossPay = hoursWorked*hourlyPay + overtimeHours * overtimeRate;
        //determine if employee used a pre tax deduction
        if(preTax>0){
            pretaxPay = grossPay - preTax;
        }
        else{
            pretaxPay = grossPay;
        }
        //determine employees tax bracket
        if(grossPay>500){
            taxAmount = .22 * pretaxPay;
            netPay = pretaxPay - taxAmount;
        }
        else{
            taxAmount = .18 * pretaxPay;
            netPay = pretaxPay - taxAmount;
        }
        //set postTaxPay equal too net pay calculated in previous step
        postTaxPay = netPay;
        //determine if employee used postTax deduction
        if(postTax>0){
            netPay = netPay - postTax;
        }
      
        %>
    
    <body>
        <h1>User Information</h1>
        
        <table class ="results" border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= totalHours %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= overtimeHours %></td
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtimeRate %></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTax %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretaxPay %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTax %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
