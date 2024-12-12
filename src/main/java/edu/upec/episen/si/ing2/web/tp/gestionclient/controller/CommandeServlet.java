package edu.upec.episen.si.ing2.web.tp.gestionclient.controller;

import edu.upec.episen.si.ing2.web.tp.gestionclient.model.Commande;
import edu.upec.episen.si.ing2.web.tp.gestionclient.service.CommandeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "command", value = "/create-command")
public class CommandeServlet extends HttpServlet {
    final String NEW_COMMAND_JSP = "views/nouvelle-commande.jsp";
    final String VIEW_COMMANDES_JSP = "views/fiche-commande.jsp";
    private CommandeService commandeService;

    @Override
    public void init() throws ServletException {
        super.init();
        commandeService = new CommandeService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher(NEW_COMMAND_JSP)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Commande commande = new Commande();

        try {
            commande.setNomClient(request.getParameter("nomClient"));
            commande.setProduit(request.getParameter("produit"));
            commande.setQuantite(Integer.parseInt(request.getParameter("quantite")));
            commande.setPrixUnitaire(Double.parseDouble(request.getParameter("prixUnitaire")));
            commande.setAdresseLivraison(request.getParameter("adresseLivraison"));
            commande.setModePaiement(request.getParameter("modePaiement"));

        } catch (NumberFormatException e) {
            request.setAttribute("error", "Erreur de format dans les données numériques");
            request.setAttribute("commande", commande);
            request.getRequestDispatcher(NEW_COMMAND_JSP)
                    .forward(request, response);
            return;
        }

        Map<String, String> errors = commandeService.validateCommande(commande);

        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.setAttribute("commande", commande);
            request.getRequestDispatcher(NEW_COMMAND_JSP)
                    .forward(request, response);
            return;
        }

        commande = commandeService.createCommande(commande);

        request.setAttribute("commande", commande);
        request.getRequestDispatcher(VIEW_COMMANDES_JSP)
                .forward(request, response);
    }
}
