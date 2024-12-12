package edu.upec.episen.si.ing2.web.tp.gestionclient.model;

import java.time.LocalDateTime;

public class Commande {
    private Long id;
    private String reference;
    private String nomClient;
    private String produit;
    private int quantite;
    private double prixUnitaire;
    private LocalDateTime dateCommande;
    private String adresseLivraison;
    private String modePaiement;
    private String statut;

    public Commande() {
        this.dateCommande = LocalDateTime.now();
        this.statut = "En attente";
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getReference() { return reference; }
    public void setReference(String reference) { this.reference = reference; }

    public String getNomClient() { return nomClient; }
    public void setNomClient(String nomClient) { this.nomClient = nomClient; }

    public String getProduit() { return produit; }
    public void setProduit(String produit) { this.produit = produit; }

    public int getQuantite() { return quantite; }
    public void setQuantite(int quantite) { this.quantite = quantite; }

    public double getPrixUnitaire() { return prixUnitaire; }
    public void setPrixUnitaire(double prixUnitaire) { this.prixUnitaire = prixUnitaire; }

    public LocalDateTime getDateCommande() { return dateCommande; }
    public void setDateCommande(LocalDateTime dateCommande) { this.dateCommande = dateCommande; }

    public String getAdresseLivraison() { return adresseLivraison; }
    public void setAdresseLivraison(String adresseLivraison) { this.adresseLivraison = adresseLivraison; }

    public String getModePaiement() { return modePaiement; }
    public void setModePaiement(String modePaiement) { this.modePaiement = modePaiement; }

    public String getStatut() { return statut; }
    public void setStatut(String statut) { this.statut = statut; }

    public double getTotal() {
        return quantite * prixUnitaire;
    }

    public boolean isValid() {
        return nomClient != null && !nomClient.trim().isEmpty()
                && produit != null && !produit.trim().isEmpty()
                && quantite > 0
                && prixUnitaire > 0
                && adresseLivraison != null && !adresseLivraison.trim().isEmpty()
                && modePaiement != null && !modePaiement.trim().isEmpty();
    }
}