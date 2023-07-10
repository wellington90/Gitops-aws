# Use a imagem base do Python
FROM python:3.9-slim

# Defina o diretório de trabalho no contêiner
WORKDIR /app
COPY . .

# Copie os arquivos do aplicativo Flask para o contêiner
COPY requirements.txt .

# Instale as dependências do aplicativo
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta do aplicativo Flask
EXPOSE 5000

# iniciar o aplicativo Flask
CMD ["python", "app.py"]
