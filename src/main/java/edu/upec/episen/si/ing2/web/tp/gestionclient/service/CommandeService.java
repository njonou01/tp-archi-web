package edu.upec.episen.si.ing2.web.tp.gestionclient.service;
import edu.upec.episen.si.ing2.web.tp.gestionclient.model.Commande;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CommandeService {
    private static final List<Commande> commandes = new ArrayList<>();
    private static Long idCounter = 1L;

    public Commande createCommande(Commande commande) {
        // Génération de l'ID et de la référence
        commande.setId(idCounter++);
        if (commande.getReference() == null) {
            commande.setReference("CMD" + System.currentTimeMillis());
        }

        commandes.add(commande);
        return commande;
    }

    public Map<String, String> validateCommande(Commande commande) {
        Map<String, String> errors = new HashMap<>();

        if (commande.getNomClient() == null || commande.getNomClient().trim().isEmpty()) {
            errors.put("nomClient", "Le nom du client est obligatoire");
        } else if (commande.getNomClient().length() < 2) {
            errors.put("nomClient", "Le nom doit contenir au moins 2 caractères");
        }

        if (commande.getProduit() == null || commande.getProduit().trim().isEmpty()) {
            errors.put("produit", "Le produit est obligatoire");
        }

        if (commande.getQuantite() <= 0) {
            errors.put("quantite", "La quantité doit être supérieure à 0");
        } else if (commande.getQuantite() > 1000) {
            errors.put("quantite", "La quantité ne peut pas dépasser 1000");
        }

        if (commande.getPrixUnitaire() <= 0) {
            errors.put("prixUnitaire", "Le prix unitaire doit être supérieur à 0");
        }

        if (commande.getAdresseLivraison() == null || commande.getAdresseLivraison().trim().isEmpty()) {
            errors.put("adresseLivraison", "L'adresse de livraison est obligatoire");
        }

        if (commande.getModePaiement() == null || commande.getModePaiement().trim().isEmpty()) {
            errors.put("modePaiement", "Le mode de paiement est obligatoire");
        } else {
            List<String> modesPaiementValides = List.of("CB", "Virement", "Chèque");
            if (!modesPaiementValides.contains(commande.getModePaiement())) {
                errors.put("modePaiement", "Mode de paiement non valide");
            }
        }

        return errors;
    }

    public List<Commande> getCommandes() {
        return new ArrayList<>(commandes);
    }

    public Commande getCommandeById(Long id) {
        return commandes.stream()
                .filter(c -> c.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    public Commande getCommandeByReference(String reference) {
        return commandes.stream()
                .filter(c -> c.getReference().equals(reference))
                .findFirst()
                .orElse(null);
    }
}

