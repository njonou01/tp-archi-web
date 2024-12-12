<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="bg-white shadow-sm">
    <div class="container mx-auto px-4 py-4 flex justify-between items-center">
        <div class="flex items-center space-x-4">
            <div class="w-10 h-10 bg-blue-600 text-white rounded-xl flex items-center justify-center font-bold">
                CP
            </div>
            <h1 class="text-xl font-semibold text-gray-800">ClientPro</h1>
        </div>
        <div class="space-x-4">
            <a href="${pageContext.request.contextPath}/clients" class="text-blue-600 hover:text-blue-800 px-3 py-2">Clients</a>
            <a href="${pageContext.request.contextPath}/commandes" class="text-blue-600 hover:text-blue-800 px-3 py-2">Commandes</a>
        </div>
    </div>
</nav>