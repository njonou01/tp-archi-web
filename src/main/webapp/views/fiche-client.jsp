<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 4:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ClientPro - Fiche Client</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gradient-to-br from-gray-50 to-blue-50 min-h-screen">
<div class="container mx-auto max-w-4xl px-4 py-12">
    <header class="flex justify-between items-center mb-8">
        <div class="flex items-center space-x-6">
            <div class="w-14 h-14 bg-gradient-to-br from-blue-600 to-blue-700 text-white rounded-2xl flex items-center justify-center font-bold shadow-lg shadow-blue-200">
                <span class="text-xl">CP</span>
            </div>
            <div>
                <h1 class="text-3xl font-bold text-gray-800">Fiche Client</h1>
                <p class="text-gray-500 mt-1">Détails du client</p>
            </div>
        </div>
        <a href="${pageContext.request.contextPath}/create-client"
           class="flex items-center gap-2 px-4 py-2 bg-blue-50 text-blue-600 rounded-xl hover:bg-blue-100 transition-colors">
            <i class="fas fa-plus"></i>
            <span>Nouveau Client</span>
        </a>
    </header>

    <div class="mb-6 p-4 bg-green-50 border border-green-200 rounded-xl text-green-700 flex items-center space-x-3">
        <i class="fas fa-check-circle text-xl"></i>
        <p>Le client a été créé avec succès !</p>
    </div>

    <main class="bg-white rounded-2xl shadow-xl shadow-blue-100">
        <div class="p-8">
            <div class="grid md:grid-cols-2 gap-8">
                <section class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-user text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Informations Personnelles</h2>
                    </div>

                    <div class="space-y-6">
                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Nom</p>
                            <p class="text-gray-900 font-medium">${client.nom}</p>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Prénom</p>
                            <p class="text-gray-900 font-medium">${client.prenom}</p>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Email</p>
                            <a href="mailto:${client.email}" class="text-blue-600 hover:text-blue-800 font-medium flex items-center gap-2">
                                <i class="fas fa-envelope"></i>
                                ${client.email}
                            </a>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Téléphone</p>
                            <a href="tel:${client.telephone}" class="text-blue-600 hover:text-blue-800 font-medium flex items-center gap-2">
                                <i class="fas fa-phone"></i>
                                ${client.telephone}
                            </a>
                        </div>
                    </div>
                </section>

                <section class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-map-marker-alt text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Adresse</h2>
                    </div>

                    <div class="space-y-6">
                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Adresse</p>
                            <p class="text-gray-900 font-medium">${client.adresse}</p>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Code Postal</p>
                            <p class="text-gray-900 font-medium">${client.codePostal}</p>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Ville</p>
                            <p class="text-gray-900 font-medium">${client.ville}</p>
                        </div>

                        <div class="bg-gray-50 rounded-xl p-4">
                            <p class="text-sm font-medium text-gray-500 mb-1">Pays</p>
                            <p class="text-gray-900 font-medium">${client.pays}</p>
                        </div>

                        <div class="mt-6 pt-6 border-t border-gray-200">
                            <p class="text-sm font-medium text-gray-500 mb-1">Date de création</p>
                            <p class="text-gray-900 font-medium flex items-center gap-2">
                                <i class="far fa-calendar-alt text-blue-600"></i>
                                <%= ((edu.upec.episen.si.ing2.web.tp.gestionclient.model.Client)request.getAttribute("client")).getDateCreation().format(java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %>
                            </p>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <div class="p-8 mt-4 flex justify-end border-t border-gray-100">
            <a href="${pageContext.request.contextPath}/create-client"
               class="flex items-center gap-2 px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-xl hover:from-blue-700 hover:to-blue-800 transition-all shadow-lg shadow-blue-200">
                <i class="fas fa-plus"></i>
                <span>Créer un nouveau client</span>
            </a>
        </div>
    </main>
</div>
</body>
</html>