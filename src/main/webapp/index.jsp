<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Feedback Portal</title>
</head>
<body>
    <h2>Submit Your Feedback</h2>
    <form action="feedback" method="post">
        Rating:
        <select name="rating">
            <option>Excellent</option>
            <option>Good</option>
            <option>Average</option>
            <option>Poor</option>
        </select><br><br>
        Comment:<br>
        <textarea name="comment" rows="4" cols="40"></textarea><br><br>
        <input type="submit" value="Submit Feedback">
    </form>

    <hr>
    <h3>All Feedback</h3>
    <%
        List<String> feedbacks = (List<String>) request.getAttribute("feedbacks");
        if (feedbacks != null) {
            for (String fb : feedbacks) {
    %>
                <p><%= fb %></p>
    <%
            }
        }
    %>
</body>
</html>
