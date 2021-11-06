<?php
// fonction qui permet d'envoyer des requête à l'API Riot
function apiRequest($url, $method = 'GET', $data = null)
{
    $curl = curl_init();

    $httpheader[] = "Content-Type:application/json";

    switch ($method) {
        case "POST":
            curl_setopt($curl, CURLOPT_POST, 1);

            if ($data) {
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data); // mets les données dans le corps de la requête si il y en a
            }
            break;

        case "PUT":
            curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'PUT');

            if ($data) {
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            }
            break;

        default:
            if ($data) {
                // par défaut, mets les paramètres dans l'URL et la formate
                $url = sprintf("%s?%s", $url, http_build_query($data));
            }
    }

    /**
     * https://www.php.net/manual/fr/function.curl-setopt.php
     * CURLOPT_URL = cible de la requête
     * CURLOP_RETURNTRANSFER = si true, curl_exec renverra la réponse de la requête au lieu de l'afficher et renvoyer un bool
     * CURLOP_HTTPHEADER = array qui contient les headers http
     */
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $httpheader);

    $result = curl_exec($curl);
    curl_close($curl);

    return $result;
} // fin apiRequest

// fonction qui permet de trier les éléments d'un tableau associatif par clé
function record_sort($records, $field, $reverse = false)
{
    $hash = array();

    foreach ($records as $key => $record) {
        $hash[$record[$field] . $key] = $record;
    }

    ($reverse) ? krsort($hash) : ksort($hash);

    $records = array();

    foreach ($hash as $record) {
        $records[] = $record;
    }

    return $records;
}// fin record_sort
