#!/usr/bin/env sh
# Déclaration des valeurs encodées en base64
VAR1=${BASE64_AWS_KEY_PRIV}
VAR2=${BASE64_AWS_KEY_PUB}
VAR3=${BASE64_LETSENCRYPT_KEY_PUB}
VAR4=${BASE64_LETSENCRYPT_KEY_PRIV}
VAR5=${BASE64_LETSENCRYPT_DH_PARAMS}
# Chemins où les fichiers décodés seront enregistrés
FILE1=${ROOT}"/build/conf/.ssh/id_rsa"
FILE2=${ROOT}"/build/conf/.ssh/id_rsa.pub"
FILE3=${ROOT}"/build/conf/.ssl/monitor/letsencrypt/live/monitor.isinetwork.fr/fullchain.pem"
FILE4=${ROOT}"/build/conf/.ssl/monitor/letsencrypt/live/monitor.isinetwork.fr/privkey.pem"
FILE5=${ROOT}"/build/conf/.ssl/monitor/letsencrypt/ssl-dhparams.pem"

# Fonction pour décoder et enregistrer les valeurs
decode_and_save() {
  echo "$1" | base64 -d > "$2"
  chmod 0644 "$2"
}
# Appel de la fonction pour chaque variable
decode_and_save "$VAR1" "$FILE1"
decode_and_save "$VAR2" "$FILE2"
decode_and_save "$VAR3" "$FILE3"
decode_and_save "$VAR4" "$FILE4"
decode_and_save "$VAR5" "$FILE5"

echo "All variables have been decoded and saved to their respective files."