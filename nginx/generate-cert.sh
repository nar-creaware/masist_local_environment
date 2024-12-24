#!/bin/bash

# Sertifika ve anahtarın oluşturulacağı dizin
CERT_DIR="/etc/nginx/cert"
mkdir -p $CERT_DIR

# Self-signed sertifika ve anahtar dosyası oluştur
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout $CERT_DIR/selfsigned.key -out $CERT_DIR/selfsigned.crt \
  -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

echo "Self-signed SSL certificate created at $CERT_DIR"