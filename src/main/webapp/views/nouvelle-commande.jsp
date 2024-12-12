<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nouvelle Commande</title>
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
                <i class="fas fa-shopping-cart text-xl"></i>
            </div>
            <div>
                <h1 class="text-3xl font-bold text-gray-800">Nouvelle Commande</h1>
                <p class="text-gray-500 mt-1">Création d'une nouvelle commande client</p>
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
        <form action="${pageContext.request.contextPath}/create-command" method="post" class="p-8">
            <div class="grid md:grid-cols-2 gap-12">
                <div class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-user text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Informations client</h2>
                    </div>
                    <div class="space-y-5">
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="nomClient">Nom du client <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="nomClient" name="nomClient" value="${commande.nomClient}" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("nomClient") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" placeholder="Nom complet du client">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("nomClient") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("nomClient") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="adresseLivraison">Adresse de livraison <span class="text-red-500 ml-1">*</span></label>
                            <textarea id="adresseLivraison" name="adresseLivraison" rows="3" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("adresseLivraison") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" placeholder="Adresse complète de livraison">${commande.adresseLivraison}</textarea>
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("adresseLivraison") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("adresseLivraison") %></p>
                            <% } %>
                        </div>
                    </div>
                </div>

                <div class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-box text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Détails de la commande</h2>
                    </div>
                    <div class="space-y-5">
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="produit">Produit <span class="text-red-500 ml-1">*</span></label>
                            <input type="text" id="produit" name="produit" value="${commande.produit}" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("produit") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all" placeholder="Nom du produit">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("produit") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("produit") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="quantite">Quantité <span class="text-red-500 ml-1">*</span></label>
                            <input type="number" id="quantite" name="quantite" value="${commande.quantite}" min="1" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("quantite") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("quantite") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("quantite") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="prixUnitaire">Prix unitaire (€) <span class="text-red-500 ml-1">*</span></label>
                            <input type="number" id="prixUnitaire" name="prixUnitaire" value="${commande.prixUnitaire}" min="0.01" step="0.01" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("prixUnitaire") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all">
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("prixUnitaire") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("prixUnitaire") %></p>
                            <% } %>
                        </div>
                        <div>
                            <label class="flex items-center text-gray-700 text-sm font-medium mb-2" for="modePaiement">Mode de paiement <span class="text-red-500 ml-1">*</span></label>
                            <select id="modePaiement" name="modePaiement" class="w-full px-4 py-3 bg-gray-50 border <%= (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("modePaiement") != null) ? "border-red-300" : "border-gray-200" %> rounded-xl focus:outline-none focus:ring-2 focus:ring-blue-500 focus:bg-white transition-all">
                                <option value="">Choisir un mode de paiement</option>
                                <option value="CB" ${commande.modePaiement == 'CB' ? 'selected' : ''}>Carte bancaire</option>
                                <option value="Virement" ${commande.modePaiement == 'Virement' ? 'selected' : ''}>Virement</option>
                                <option value="Chèque" ${commande.modePaiement == 'Chèque' ? 'selected' : ''}>Chèque</option>
                            </select>
                            <% if (request.getAttribute("errors") != null && ((java.util.Map)request.getAttribute("errors")).get("modePaiement") != null) { %>
                            <p class="mt-2 text-sm text-red-600 flex items-center"><i class="fas fa-exclamation-circle mr-2"></i><%= ((java.util.Map)request.getAttribute("errors")).get("modePaiement") %></p>
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
                    <span>Créer la commande</span>
                </button>
            </div>
        </form>
    </main>
</div>
</body>
</html>