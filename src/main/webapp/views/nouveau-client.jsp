<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ClientPro - Nouveau Client</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gradient-to-br from-gray-50 to-blue-50 min-h-screen">
<div class="container mx-auto max-w-4xl px-4 py-12">

    <header class="flex justify-between items-center mb-12">
        <div class="flex items-center space-x-6">
            <div class="w-14 h-14 bg-gradient-to-br from-blue-600 to-blue-700 text-white rounded-2xl flex items-center justify-center font-bold shadow-lg shadow-blue-200">
                <span class="text-xl">CP</span>
            </div>
            <div>
                <h1 class="text-3xl font-bold text-gray-800">Nouveau Client</h1>
                <p class="text-gray-500 mt-1">Remplissez les informations du client</p>
            </div>
        </div>
    </header>
    <div class="space-x-4">
        <a href="${pageContext.request.contextPath}/"
           class="flex items-center gap-2 px-4 py-2 bg-blue-50 text-blue-600 rounded-xl hover:bg-blue-100 transition-colors">
            <i class="fas fa-home"></i>
            <span>Accueil</span>
        </a>
    </div>
    <% if (request.getAttribute("error") != null) { %>
    <div class="mb-6 p-4 bg-red-50 border border-red-200 rounded-xl text-red-700 flex items-center space-x-3">
        <i class="fas fa-exclamation-circle text-xl"></i>
        <p><%= request.getAttribute("error") %></p>
    </div>
    <% } %>

    <main class="bg-white rounded-2xl shadow-xl shadow-blue-100">
        <form action="${pageContext.request.contextPath}/create-client" method="post" class="p-8">
            <div class="grid md:grid-cols-2 gap-12">
                <div class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-user text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Informations Personnelles</h2>
                    </div>
                    <div class="space-y-5">
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="nom">Nom <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="nom" name="nom" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("nom") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.nom}" placeholder="Entrez le nom">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("nom") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("nom") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="prenom">Prénom <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="prenom" name="prenom" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("prenom") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.prenom}" placeholder="Entrez le prénom">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("prenom") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("prenom") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="email">Email <span class="text-red-500 ml-1">*</span></label>
                            <input type="email" id="email" name="email" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("email") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.email}" placeholder="exemple@email.com">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("email") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("email") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="telephone">Téléphone <span class="text-red-500 ml-1">*</span></label>
                            <input type="tel" id="telephone" name="telephone" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("telephone") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.telephone}" placeholder="01 23 45 67 89">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("telephone") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("telephone") %></p>
                            <% } %>
                        </div>
                    </div>
                </div>

                <div class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-map-marker-alt text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Adresse</h2>
                    </div>
                    <div class="space-y-5">
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="adresse">Adresse <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="adresse" name="adresse" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("adresse") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.adresse}" placeholder="Numéro et nom de rue">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("adresse") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("adresse") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="code_postal">Code Postal <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="code_postal" name="code_postal" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("code_postal") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.codePostal}" placeholder="75001">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("code_postal") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("code_postal") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="ville">Ville <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="ville" name="ville" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("ville") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" value="${client.ville}" placeholder="Paris">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("ville") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("ville") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="pays">Pays <span class="text-red-500 ml-1">*</span></label>
                            <select id="pays" name="pays" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("pays") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all">
                                <option value="France">France</option>
                                <option value="Belgique">Belgique</option>
                                <option value="Suisse">Suisse</option>
                                <option value="Luxembourg">Luxembourg</option>
                                <option value="Autre">Autre</option>
                            </select>
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("pays") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("pays") %></p>
                            <% } %>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-12 flex justify-end space-x-4">
                <button type="reset" class="px-6 py-3 flex items-center justify-center gap-2 bg-gray-50 text-gray-700 rounded-xl hover:bg-gray-100 transition-all">
                    <i class="fas fa-undo"></i>
                    <span>Réinitialiser</span>
                </button>
                <button type="submit" class="px-6 py-3 flex items-center justify-center gap-2 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-xl hover:from-blue-700 hover:to-blue-800 transition-all shadow-lg shadow-blue-200">
                    <i class="fas fa-save"></i>
                    <span>Créer le Client</span>
                </button>
            </div>
        </form>
    </main>
</div>
</body>
</html>