# Projeto de Exemplo
Este projeto contém códigos de exemplo relacionados à construção e implantação de um aplicativo Flask em um cluster Kubernetes, usando Docker, GitHub Actions e Amazon Elastic Kubernetes Service (EKS).

##Flask App
O arquivo app.py contém o código para um aplicativo Flask básico que retorna a mensagem "Olá, mundo!" quando a URL raiz é acessada.

Executando o aplicativo Flask localmente.

1° Certifique-se de ter o Flask instalado. Você pode instalá-lo usando o pip:
`pip install flask`

2° Salve o código em um arquivo Python, por exemplo, app.py.

3° Abra um terminal ou prompt de comando e navegue até o diretório onde você salvou o arquivo app.py.

4° Execute o aplicativo Flask digitando o seguinte comando:

python app.py

5° O Flask iniciará o servidor de desenvolvimento e você verá uma saída semelhante a esta:
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)

6° O servidor está agora em execução e você pode acessar o aplicativo Flask abrindo um navegador da web e navegando até http://localhost:5000/. Você verá a mensagem "Olá, mundo!" sendo exibida no navegador.

## Docker
O arquivo Dockerfile define as etapas para criar uma imagem Docker do aplicativo Flask.

Executando o aplicativo Flask usando Docker.

1° Certifique-se de ter o Docker instalado e em execução em sua máquina.

2° Salve o código fornecido anteriormente em um arquivo chamado Dockerfile.

3° Abra um terminal ou prompt de comando e navegue até o diretório onde você salvou o arquivo Dockerfile.

4° Execute o seguinte comando para construir a imagem Docker do aplicativo:

docker build -t myflaskapp .

5° Após a conclusão da construção da imagem, execute o seguinte comando para executar um contêiner baseado nessa imagem:

docker run -p 5000:5000 myflaskapp

6° O servidor do Flask estará em execução no contêiner Docker e você poderá acessá-lo abrindo um navegador e navegando até http://localhost:5000/. A mensagem "Olá, mundo! -- 01/07/2023" será exibida no navegador.

## Kubernetes
Os arquivos deployment.yaml e service.yaml são exemplos de manifestos Kubernetes para implantar o aplicativo Flask em um cluster Kubernetes.

Implantação do aplicativo no Kubernetes.

1° Certifique-se de ter o kubectl instalado e configurado corretamente para se conectar ao seu cluster Kubernetes.

2° Salve os códigos fornecidos anteriormente em arquivos YAML separados, por exemplo, deployment.yaml e service.yaml.

3° Abra um terminal ou prompt de comando e navegue até o diretório onde você salvou os arquivos YAML.

4° Execute o seguinte comando para aplicar o manifesto de implantação:
kubectl apply -f deployment.yaml

5° Em seguida, execute o seguinte comando para aplicar o manifesto do serviço:
kubectl apply -f service.yaml

6° O Kubernetes criará a implantação e o serviço para o aplicativo Flask. Você pode verificar o status da implantação e do serviço usando os seguintes comandos:
kubectl get deployments
kubectl get services

7° Após a criação do serviço, você poderá acessar o aplicativo Flask abrindo um navegador e navegando até o IP externo do serviço, que será fornecido pelo Kubernetes.

## GitHub Actions
O arquivo .github/workflows/main.yaml contém uma configuração do GitHub Actions para criar e implantar o aplicativo Flask em um cluster EKS usando as etapas anteriores.

Fluxo de trabalho do GitHub Actions

1° O fluxo de trabalho é acionado quando ocorre um push para o branch main.

2° O código é verificado e baixado do repositório.

3° O login é feito no Docker Hub usando as credenciais fornecidas como segredos no GitHub.

4° O commit SHA é obtido para a versão atual do código.

5° Uma imagem Docker é construída com base no commit SHA.

6° A imagem Docker é enviada para o Docker Hub.

7° As credenciais da AWS são configuradas usando as chaves de acesso fornecidas como segredos no GitHub.

## O Kustomize é configurado na versão especificada.

Os manifestos do Kubernetes são atualizados para usar a nova imagem Docker.

As alterações são confirmadas e enviadas para o repositório do GitHub.

O GitHub Actions realiza um push para o repositório.

Certifique-se de configurar os segredos necessários no GitHub (como DOCKERHUB_USERNAME, DOCKERHUB_TOKEN, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY e GITHUB_TOKEN).

Ajuste os passos e configurações conforme necessário para o seu ambiente específico.
