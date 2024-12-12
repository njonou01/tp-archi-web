package edu.upec.episen.si.ing2.web.tp.gestionclient.service;

import edu.upec.episen.si.ing2.web.tp.gestionclient.model.Client;

import java.util.HashMap;
import java.util.Map;

public class ClientService {

    public Map<String, String> validateClient(Client client) {
        Map<String, String> errors = new HashMap<>();

        if (client.getNom() == null || client.getNom().trim().isEmpty()) {
            errors.put("nom", "Le nom est obligatoire");
        }

        if (client.getPrenom() == null || client.getPrenom().trim().isEmpty()) {
            errors.put("prenom", "Le prénom est obligatoire");
        }

        if (client.getEmail() == null || !client.getEmail().matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errors.put("email", "L'email n'est pas valide");
        }

        if (client.getTelephone() == null ||
                !client.getTelephone().matches("^(?:(?:\\+|00)33|0)\\s*[1-9](?:[\\s.-]*\\d{2}){4}$")) {
            errors.put("telephone", "Le numéro de téléphone n'est pas valide");
        }

        if (client.getCodePostal() == null || !client.getCodePostal().matches("^[0-9]{5}$")) {
            errors.put("code_postal", "Le code postal doit contenir 5 chiffres");
        }

        if (client.getAdresse() == null || client.getAdresse().trim().isEmpty()) {
            errors.put("adresse", "L'adresse est obligatoire");
        }

        if (client.getVille() == null || client.getVille().trim().isEmpty()) {
            errors.put("ville", "La ville est obligatoire");
        }

        return errors;
    }

    //  ToDo : si  j'ai le tempsje le le ferais
    public void saveClient(Client client) {
        client.setId(System.currentTimeMillis());
        // ToDO : bd
    }
}