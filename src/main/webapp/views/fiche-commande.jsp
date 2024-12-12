<%--
  Created by IntelliJ IDEA.
  User: gaby
  Date: 12/12/24
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fiche Commande</title>
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
                <i class="fas fa-file-invoice text-xl"></i>
            </div>
            <div>
                <h1 class="text-3xl font-bold text-gray-800">Fiche Commande</h1>
                <p class="text-gray-500 mt-1">Détails de la commande</p>
            </div>
        </div>
        <a href="${pageContext.request.contextPath}/create-command"
           class="flex items-center gap-2 px-4 py-2 bg-blue-50 text-blue-600 rounded-xl hover:bg-blue-100 transition-colors">
            <i class="fas fa-plus-circle"></i>
            <span>Nouvelle commande</span>
        </a>
    </header>

    <div class="mb-6 p-4 bg-green-50 border border-green-200 rounded-xl text-green-700 flex items-center space-x-3">
        <i class="fas fa-check-circle text-xl"></i>
        <p>La commande a été créée avec succès !</p>
    </div>

    <main class="bg-white rounded-2xl shadow-xl shadow-blue-100 overflow-hidden">
        <div class="border-b border-gray-100 bg-gradient-to-r from-blue-50 to-transparent px-8 py-6">
            <div class="flex justify-between items-center">
                <div class="space-y-1">
                    <h2 class="text-xl font-bold text-gray-800">
                        Référence : ${commande.reference}
                    </h2>
                    <p class="text-gray-600 flex items-center gap-2">
                        <i class="far fa-calendar-alt"></i>
                        <span>Date : <%= ((edu.upec.episen.si.ing2.web.tp.gestionclient.model.Commande)request.getAttribute("commande")).getDateCommande().format(java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm")) %></span>
                    </p>
                </div>
                <div class="text-right">
                    <p class="text-sm text-gray-600 mb-1">Statut</p>
                    <span class="inline-flex items-center px-3 py-1 rounded-xl text-sm font-medium bg-green-100 text-green-800">
                        <i class="fas fa-clock mr-2"></i>${commande.statut}
                    </span>
                </div>
            </div>
        </div>

        <div class="p-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <section class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-user text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Informations client</h2>
                    </div>
                    <div class="space-y-6 bg-gray-50 rounded-xl p-6">
                        <div>
                            <p class="text-sm font-medium text-gray-500">Nom du client</p>
                            <p class="mt-2 text-gray-900 font-medium">${commande.nomClient}</p>
                        </div>
                        <div>
                            <p class="text-sm font-medium text-gray-500">Adresse de livraison</p>
                            <p class="mt-2 text-gray-900 whitespace-pre-line">${commande.adresseLivraison}</p>
                        </div>
                        <div>
                            <p class="text-sm font-medium text-gray-500">Mode de paiement</p>
                            <p class="mt-2 text-gray-900 flex items-center gap-2">
                                <i class="fas fa-credit-card text-blue-600"></i>
                                ${commande.modePaiement}
                            </p>
                        </div>
                    </div>
                </section>

                <section class="space-y-6">
                    <div class="flex items-center space-x-3 pb-2 border-b border-gray-100">
                        <div class="w-10 h-10 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600">
                            <i class="fas fa-shopping-cart text-lg"></i>
                        </div>
                        <h2 class="text-xl font-bold text-gray-800">Détails de la commande</h2>
                    </div>
                    <div class="bg-gray-50 rounded-xl p-6">
                        <div class="space-y-6">
                            <div>
                                <p class="text-sm font-medium text-gray-500">Produit</p>
                                <p class="mt-2 text-gray-900 font-medium">${commande.produit}</p>
                            </div>
                            <div class="grid grid-cols-2 gap-6">
                                <div>
                                    <p class="text-sm font-medium text-gray-500">Quantité</p>
                                    <p class="mt-2 text-gray-900 font-medium">${commande.quantite}</p>
                                </div>
                                <div>
                                    <p class="text-sm font-medium text-gray-500">Prix unitaire</p>
                                    <p class="mt-2 text-gray-900 font-medium">${commande.prixUnitaire} €</p>
                                </div>
                            </div>
                            <div class="pt-4 border-t border-gray-200">
                                <div class="flex justify-between items-center">
                                    <p class="text-sm font-medium text-gray-500">Total</p>
                                    <p class="text-2xl font-bold text-blue-600">${commande.total} €</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>

    <div class="mt-8 flex justify-between items-center">
        <a href="${pageContext.request.contextPath}/create-command"
           class="flex items-center gap-2 px-6 py-3 bg-gray-50 text-gray-700 rounded-xl hover:bg-gray-100 transition-all">
            <i class="fas fa-arrow-left"></i>
            <span>Retour au formulaire</span>
        </a>
        <button onclick="window.print()"
                class="flex items-center gap-2 px-6 py-3 bg-gradient-to-r from-blue-600 to-blue-700 text-white rounded-xl hover:from-blue-700 hover:to-blue-800 transition-all shadow-lg shadow-blue-200">
            <i class="fas fa-print"></i>
            <span>Imprimer la fiche</span>
        </button>
    </div>
</div>
</body>
</html>