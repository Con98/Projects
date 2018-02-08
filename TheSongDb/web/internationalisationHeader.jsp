<%-- 
    Document   : internationalisationHeader
    Created on : 03-Dec-2017, 22:17:10
    Author     : tadas
--%>

<%@page import="java.util.Locale"%>
<%@page import="java.util.ResourceBundle"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    // Retrieve the appropriate Locale - check if it's already been set within the site
    Locale cLocale = (Locale) session.getAttribute("currentLocale");

    // If there was no locale already set -- it's their first time here or their session timed out
    if(cLocale == null){
        // Get the locale for the client's browser (that is what's stored in the request)
        cLocale = request.getLocale();
        // Save it as the currently selected locale
        session.setAttribute("currentLocale", cLocale);
    }
%>

<!-- create a form to change the language based on changing the drop down selection -->
<form action="FrontController" method="post">
    <!-- When the value of the drop down changes, 
    submit the form and send the value to the controller -->
    <select name="language" onchange="this.form.submit()">
        <%            //Retrieve the resource bundle from the session
            ResourceBundle dataBundle = (ResourceBundle) session.getAttribute("dataBundle");

            //If there is no bundle stored
            if (dataBundle == null) {
                //Create a resource bundle based on the client's current locale settings
                dataBundle = ResourceBundle.getBundle("properties.TheSongDb", cLocale);

                
                //Store this resource bundle for future use
                session.setAttribute("dataBundle", dataBundle);
            }
       
        
            String language = (String) session.getAttribute("language");
            if(language == null || language.equals("en")){
                
        %>
        
            <option value="en" selected><%=dataBundle.getString("option_en")%></option>
            <option value="lt"><%=dataBundle.getString("option_lt")%></option>
        <%
            }else{
        %>
            <option value="en"><%=dataBundle.getString("option_en")%></option>
            <option value="lt" selected><%=dataBundle.getString("option_lt")%></option>
        <%        
            }
        %>
    </select>
    <input type="hidden" name="action" value="changeLanguage"/>
</form>
