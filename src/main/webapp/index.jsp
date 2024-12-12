<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ClientPro - Tableau de Bord</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
        body { font-family: 'Inter', sans-serif; }
    </style>
</head>
<body class="bg-gradient-to-br from-gray-50 to-blue-50 min-h-screen">
<nav class="bg-white shadow-lg shadow-blue-100">
    <div class="container mx-auto px-4 py-4">
        <div class="flex justify-between items-center">
            <div class="flex items-center space-x-4">
                <div class="w-12 h-12 bg-gradient-to-br from-blue-600 to-blue-700 text-white rounded-2xl flex items-center justify-center font-bold shadow-lg shadow-blue-200">
                    <span class="text-xl">CP</span>
                </div>
                <div>
                    <h1 class="text-2xl font-bold text-gray-800">ClientPro</h1>
                    <p class="text-sm text-gray-500">Application de Gestion</p>
                </div>
            </div>
            <div class="space-x-4">
                <a href="${pageContext.request.contextPath}/create-client"
                   class="px-4 py-2 text-gray-600 hover:text-blue-600 transition-colors flex items-center gap-2">
                    <i class="fas fa-users"></i>
                    <span>Clients</span>
                </a>
                <a href="${pageContext.request.contextPath}/create-command"
                   class="px-4 py-2 text-gray-600 hover:text-blue-600 transition-colors flex items-center gap-2">
                    <i class="fas fa-shopping-cart"></i>
                    <span>Commandes</span>
                </a>
            </div>
        </div>
    </div>
</nav>

<main class="container mx-auto px-4 py-16">
    <div class="grid md:grid-cols-2 gap-16 items-start">
        <div class="space-y-8">
            <div>
                <h2 class="text-4xl font-bold text-gray-800 leading-tight">
                    TP <br>
                    <span class="text-blue-600">Archi Web </span>
                </h2>
                <p class="text-gray-600 mt-4 text-lg">
                    Une application Java EE pour la création des clients et des commandes.
                </p>
            </div>

            <div class="bg-white p-6 rounded-xl border border-gray-100 space-y-4">
                <h3 class="text-lg font-semibold text-gray-800">Description du Projet</h3>
                <p class="text-gray-600">
                    Ce projet est un TP d'application web développé en Java EE, utilisant une architecture MVC.
                    Il permet la création et la visualisation de fiches clients et de commandes avec une gestion
                    complète des erreurs et des validations.
                </p>
                <div class="space-y-3">
                    <div class="flex items-start gap-2">
                        <i class="fas fa-check-circle text-blue-600 mt-1"></i>
                        <p class="text-gray-600">
                            <span class="font-medium">Architecture MVC :</span> Utilisation de Beans, Servlets et JSP
                            pour une séparation claire des responsabilités
                        </p>
                    </div>
                    <div class="flex items-start gap-2">
                        <i class="fas fa-check-circle text-blue-600 mt-1"></i>
                        <p class="text-gray-600">
                            <span class="font-medium">Validation des données :</span> Gestion complète des erreurs avec
                            messages personnalisés et conservation des données
                        </p>
                    </div>
                    <div class="flex items-start gap-2">
                        <i class="fas fa-check-circle text-blue-600 mt-1"></i>
                        <p class="text-gray-600">
                            <span class="font-medium">Interface moderne :</span> Design responsive avec Tailwind CSS
                            pour une expérience utilisateur optimale
                        </p>
                    </div>
                </div>
            </div>

            <div class="flex flex-col sm:flex-row gap-4">
                <a href="${pageContext.request.contextPath}/create-client"
                   class="flex items-center justify-center gap-2 px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-xl hover:from-blue-700 hover:to-blue-800 transition-all shadow-lg shadow-blue-200 group">
                    <i class="fas fa-user-plus group-hover:scale-110 transition-transform"></i>
                    <span>Créer un client</span>
                </a>
                <a href="${pageContext.request.contextPath}/create-command"
                   class="flex items-center justify-center gap-2 px-6 py-3 bg-white border-2 border-blue-600 text-blue-600 rounded-xl hover:bg-blue-50 transition-all group">
                    <i class="fas fa-shopping-cart group-hover:scale-110 transition-transform"></i>
                    <span>Créer une commande</span>
                </a>
            </div>
        </div>

        <div class="space-y-6">
            <div class="bg-white p-8 rounded-2xl shadow-xl shadow-blue-100">
                <div class="space-y-6">
                    <div class="p-4 bg-blue-50 rounded-xl">
                        <div class="flex items-center gap-4">
                            <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center text-blue-600">
                                <i class="fas fa-users text-xl"></i>
                            </div>
                            <div class="flex-1">
                                <h3 class="font-semibold text-gray-800">Gestion des clients</h3>
                                <p class="text-sm text-gray-600">
                                    Création de fiches clients avec validation des champs et affichage des informations détaillées
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="p-4 bg-blue-50 rounded-xl">
                        <div class="flex items-center gap-4">
                            <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center text-blue-600">
                                <i class="fas fa-shopping-cart text-xl"></i>
                            </div>
                            <div class="flex-1">
                                <h3 class="font-semibold text-gray-800">Gestion des commandes</h3>
                                <p class="text-sm text-gray-600">
                                    Système de commande complet avec calcul automatique et gestion des états
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="p-4 bg-blue-50 rounded-xl">
                        <div class="flex items-center gap-4">
                            <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center text-blue-600">
                                <i class="fas fa-check-circle text-xl"></i>
                            </div>
                            <div class="flex-1">
                                <h3 class="font-semibold text-gray-800">Validation des données</h3>
                                <p class="text-sm text-gray-600">
                                    Système complet de validation avec gestion des erreurs et messages personnalisés
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="p-4 bg-blue-50 rounded-xl">
                        <div class="flex items-center gap-4">
                            <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center text-blue-600">
                                <i class="fas fa-code text-xl"></i>
                            </div>
                            <div class="flex-1">
                                <h3 class="font-semibold text-gray-800">Technologies utilisées</h3>
                                <p class="text-sm text-gray-600">
                                    Java EE (Servlets & JSP), Beans, HTML5, Tailwind CSS
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<footer class="mt-auto py-6 text-center text-gray-600">
    <div class="container mx-auto px-4">
        © 2024 ClientPro • EPISEN ING2 Gaby
    </div>
</footer>
</body>
</html>