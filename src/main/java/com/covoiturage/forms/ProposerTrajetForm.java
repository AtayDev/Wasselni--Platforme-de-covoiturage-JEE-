package com.covoiturage.forms;

import com.covoiturage.beans.Trajet;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class ProposerTrajetForm {

    /*
     * Définition des champs
     */

    private static final String CHAMP_DEPART = "depart";
    private static final String CHAMP_DESTINATION = "destination";
    private static final String CHAMP_DATE_TRAJET = "datetrajet";
    private static final String CHAMP_HEURE_DEPART = "heureDepart";
    private static final String CHAMP_MINUTES_DEPART = "minutesDepart";
    private static final String CHAMP_EFFECTIF = "effectif";
    private static final String CHAMP_PRIX = "prix";
    private static final String CHAMP_BAGAGE_AUTORISE = "bagageautorise";
    private static final String CHAMP_TYPE_VEHICULE = "typevehicule";
    private static final String CHAMP_MARQUE = "marque";
    private static final String CHAMP_MODEL = "model";
    private static final String CHAMP_CLIMATISATION = "climatisation";

    private String getValeurChamp(HttpServletRequest req, String champ) {
        String valeur = req.getParameter(champ);
        if (valeur == null || valeur.trim().length() == 0)
            return null;
        else
            return valeur.trim();
    }

    /*
     * Déclaration des erreurs à gérer par la suite
     */

    private Map<String, String> erreurs = new HashMap();

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    private void setErreurs(String champ, String message) {
        /*
         * Pour associér à chaque champ une erreur possible
         */
        erreurs.put(champ, message);
    }

    /*
     * Déclaration du résultat de la validation du formulaire
     */

    private String resultat;

    public String getResultat() {
        return resultat;
    }

    private void proposerTrajetPhase1(HttpServletRequest request){
        String depart = getValeurChamp( request, CHAMP_DEPART );
        String destination = getValeurChamp( request, CHAMP_DESTINATION );
        String heureDepart = getValeurChamp( request, CHAMP_HEURE_DEPART );
        String minutesDepart = getValeurChamp( request, CHAMP_MINUTES_DEPART );


    }

    public Trajet proposerTrajet(HttpServletRequest request) {
        /*
         * A implementer
         */


        return new Trajet();
    }

}