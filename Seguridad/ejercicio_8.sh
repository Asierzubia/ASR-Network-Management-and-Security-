#introducir este comando
sudo visudo
#anadir la siguiente linea
usuario ALL=(ALL:ALL) ALL
#alternativa
sudo usermod -aG sudo usuario
#Es tan simple como meter al usuario en el grupo de sudo

