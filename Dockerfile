# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]
