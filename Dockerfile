# Utilisation de l'image officielle Python
FROM python:3.9

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers nécessaires
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du reste des fichiers de l'application
COPY . .

# Exposition du port utilisé par Flask
EXPOSE 5001

# Commande pour exécuter l'application
CMD ["python", "app.py"]
