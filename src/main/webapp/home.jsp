<jsp:include page="templates/header.jsp"></jsp:include>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.company.entities.NewsEntity" %>

<div class="wrapper">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


<%--statement--%>
    <%
    ArrayList<NewsEntity> l = (ArrayList)request.getAttribute("newsList");
    for(NewsEntity e: l) {
    %>
        <div>

    <div class="card">
        <div class="card-header">
            Liverpool
        </div>
        <div class="card-body">
            <%--expression--%>
            <h3><%= e.getTitle() %></h3>
            <p><%= e.getBody() %></p>
            <a href="<%= request.getContextPath() %>/view?v=<%= e.getId() %>">click</a>
                <div class="card-footer">
                    <small class="text-muted">Last updated  mins ago</small>
                </div>
        </div>
    </div>

                <hr>
        </div>
    <% } %>
</div>
<jsp:include page="templates/footer.jsp"></jsp:include>
