#!/bin/bash

echo "Preparando laboratorio de usuarios y permisos..."

sudo groupadd equipo_rojo 2>/dev/null || true
sudo groupadd equipo_azul 2>/dev/null || true

sudo useradd -m ana 2>/dev/null || true
sudo useradd -m bruno 2>/dev/null || true
sudo useradd -m carla 2>/dev/null || true

sudo usermod -aG equipo_rojo ana
sudo usermod -aG equipo_rojo bruno
sudo usermod -aG equipo_azul carla

mkdir -p laboratorio/{publico,confidencial,equipo,secreto}
echo "Mensaje público" > laboratorio/publico/info.txt
echo "Plan del equipo" > laboratorio/equipo/plan.txt
echo "Clave ficticia de práctica" > laboratorio/secreto/clave.txt
echo "Documento confidencial" > laboratorio/confidencial/reporte.txt

chmod -R 755 laboratorio
chmod 777 laboratorio/secreto
chmod 644 laboratorio/secreto/clave.txt

echo "Laboratorio listo."
