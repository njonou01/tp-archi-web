<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 3:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${param.title} - ClientPro</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body { font-family: 'Inter', sans-serif; }
        .gradient-bg {
            background: linear-gradient(135deg, #0284c7 0%, #1e3a8a 100%);
        }
    </style>
</head>
<body class="bg-gray-50">
<div class="min-h-screen flex flex-col">
    <!-- Header -->
    <jsp:include page="/includes/header.jsp" />

    <!-- Contenu principal -->
    <jsp:include page="${param.content}" />

    <!-- Footer -->
    <jsp:include page="/includes/footer.jsp" />
</div>
</body>
</html>