package edu.upec.episen.si.ing2.web.tp.gestionclient.controller;

import java.io.*;
import java.util.Map;

import edu.upec.episen.si.ing2.web.tp.gestionclient.model.Client;
import edu.upec.episen.si.ing2.web.tp.gestionclient.service.ClientService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "client", value = "/create-client")
public class ClientServlet extends HttpServlet {

    private ClientService clientService;

    @Override
    public void init() throws ServletException {
        this.clientService = new ClientService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/nouveau-client.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        Client client = new Client();
        client.setNom(request.getParameter("nom"));
        client.setPrenom(request.getParameter("prenom"));
        client.setEmail(request.getParameter("email"));
        client.setTelephone(request.getParameter("telephone"));
        client.setAdresse(request.getParameter("adresse"));
        client.setCodePostal(request.getParameter("code_postal"));
        client.setVille(request.getParameter("ville"));
        client.setPays(request.getParameter("pays"));

        // Validation des données
        Map<String, String> errors = clientService.validateClient(client);

        if (!errors.isEmpty()) {
            // En cas d'erreurs
            request.setAttribute("errors", errors);
            request.setAttribute("client", client);
            request.getRequestDispatcher("views/nouveau-client.jsp")
                    .forward(request, response);
            return;
        }

        // Sauvegarde du client si tout est valide
        try {
            clientService.saveClient(client);
            request.setAttribute("client", client);
            request.getRequestDispatcher("views/fiche-client.jsp")
                    .forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "Une erreur est survenue lors de la création du client");
            request.setAttribute("client", client);
            request.getRequestDispatcher("views/nouveau-client.jsp")
                    .forward(request, response);
        }
    }
}