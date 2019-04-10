---
layout: post
title: Documento de Arquitetura
tags: documento arquitetura mds
---

|Data|Versão|Descrição|Autor|
|:--:|:--:|:--:|:--:|
|28/03/2019| 1.0|Criação do documento e preenchendo os tópicos|Gabriela, André, Pedro, Iuri, Gustavo|
|09/04/2019|1.1|Adicionando tópicos 2 e 5 e arrumando a maneira de apresentar a arquitetura|Guilherme Marques|

# 1. Introdução
### 1.1 Finalidade

<p align="justify"> &emsp;&emsp;
Este documento oferece uma visão geral arquitetural abrangente do sistema e, desse modo, especifica decisões relevantes na produção e implementação do projeto Aix em relação ao assunto discorrido, explicitando como acontecerá a comunicação dos diversos serviços contidos no software como um todo. Para isso, serão empregues diversas características do projeto como casos de usos, restrições e requisitos, qualidade, desempenho dentre outros com a finalidade de fundamentar as decisões tomadas pela equipe de desenvolvimento no decorrer da estruturação do escopo.
</p>

<!--more-->

### 1.2 Escopo

<p align="justify"> &emsp;&emsp;
Serão documentados neste trabalho os componentes de software, padrões, plataformas de desenvolvimento e frameworks necessários para a composição do programa que se dedica ao aprendizado de seus usuários da linguagem python. Resumidamente, o software consiste em um bot disponibilizado dentro de um de um script em JavaScript que pode ser executado dentro da plataforma Jupyter Notebook que será disponibilizada online, e o bot visa ensinar o básico sobre Python para os usuários.</p>
<p align="justify"> &emsp;&emsp;
Neste artigo serão exploradas todas as informações relacionadas à arquitetura do projeto, como por exemplo diagramas de classes, casos de uso, entre outros.</p>

### 1.3 Referências
* [Receita Mais](https://github.com/fga-eps-mds/2017.2-Receita-Mais/wiki/Documento-de-Arquitetura#4)
* [Dulce](https://dulce-work-schedule.github.io/especificacao/arquitetura.html)
* [Kalkuli](https://fga-eps-mds.github.io/2018.2-Kalkuli/docs/docArquitetura)
* [IBM](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=2ahUKEwjl7cre9pjhAhUDErkGHb2eA_IQFjAAegQIARAC&url=https://www.dca.ufrn.br/~anderson/FTP/dca0120/modelodocarquiteturasoftware.doc&usg=AOvVaw2P9L4xfD4kcFo0YtBNmuu8)
* [Quero Mais Conversa](https://github.com/QueroMais/QueroMaisConversa/wiki/Casos-de-Uso)
* [Software Archiecture Document Template](https://sce.uhcl.edu/helm/RationalUnifiedProcess/webtmpl/templates/a_and_d/rup_sad.htm)

### 1.5 Visão Geral
Esta obra será segmentada da seguinte forma:
* **Introdução:** Apresentará a organização do documento, junto a uma breve finalidade do software.
* **Representação de Arquitetura:** Demonstra a arquitetura adotada no trabalho.
* **Restrições e Metas de Arquitetura:** Exibe os requisitos de usabilidade do software e os propósitos que influenciam a aplicação.
* **Visão de Casos de Uso:** Revela os casos de uso da aplicação.
* **Visão Lógica:** Exibe elementos importantes do programa segundo a arquitetura adotada e a modelagem do design.
<!-- * **Tamanho e Desempenho:** Detalha as especificações da aplicação que afetam o desempenho.
* **Qualidade:** Retrata a forma como a opção da arquitetura do software engrandece a aplicação.  -->

# 2. Representação de Arquitetura

### 2.1 Diagrama de Relações

<p align="justify">

</p>

### 2.2 Tecnologias
<p align="justify"> &emsp;&emsp;
A aplicação deverá sobrepor o iframe do Jupyter Notebook com outro iframe e para seu desenvolvimento serão usadas as seguintes tecnologias:</p>

* Flask: *microframework*, construído em python, para o desenvolvimento das API's do projeto. Será usado na versão 1.0.2.
* Docker: Ferramenta para gerar um ambiente isolado e construído especificamente para a equipe que será utilizado para facilitar o desenvolvimento do projeto. 
* Git: Ferramenta de versionamento que será usada em conjunto com o GitHub para salvar os dados do decorrer do projeto, possibilitando a hospedagem e a geração de backups do mesmo. Será usada a versão 2.7.4 ou maior.
* CodeClimate: Ferramenta para análise estática do código
* Rasa Core+NLU: Ferramenta para criação do ChatBot. Será usada na versão 0.14.6.
* Flake8: Ferramenta de análise estática de código. Será usada na versão 3.7.7.
* Rocket Chat: Ferramenta para visualização do chat.

<p align="justify">
O sistema deve garantir a privacidade dos dados inseridos em seu banco de dados, ele deve ser eficiente, conseguir responder às requisições em poucos segundos e ter alta disponibilidade, aproximandamente 99% do tempo. Ela também deverá atender aos requisitos não funcionais, como o estruturamento de código, para que assim seja garantida a manutenibilidade do sistema.
</p>

# 3. Metas e Restrições da Arquitetura 

São metas de de Arquitetura:
 - Disponibilizar ao usuário um fluxo constante de conversas para sanar a necessidade do usuário de aprender o básico sobre a linguagem Python.

São restrições de Arquitetura:
 - Conexão necessária com a internet.

# 4. Visão de Casos de Uso

### 4.1 Diagrama de casos de uso

 <img src="https://i.imgur.com/HLweYIR.png" alt="Smiley face">

### 4.2 Especificações dos casos de uso
|Casos de Uso|Ator|Descrição|
|---|---|------|
|UC01 - Iniciar conversa| Usuário | Este caso de uso ocorre quando inicializa o bot e manda uma mensagem inicial|
|UC02 - Enviar arquivo| Usuário| Este caso de uso permite que o usuário envie um arquivo de código para o bot|
|UC03 - Escrever código| Usuário | Este caso de uso ocorre quando usuário implementa o código em seu computador|
|UC04 - Compilação de códigos| - | Este caso de uso ocorre quando o sistema compila o código enviado pelo usuário|
|UC05 - Feedback da compilação dos códigos| - | Este caso de uso ocorre após a compilação de um código, onde o bot avisa o usuário de possíveis erros e warnings que aconteceram na ação pedida e os explica, para que possam ser consertados|
|UC06 - Salvar conversa| - | Esse caso de uso ocorre após o usuário fechar o programa. O bot automaticamente salva os dados da conversa para que num próximo uso seja possível rever os que já foi conversado|
|UC07 - Corrigir exercícios por um juíz online| Juíz online | Esse caso de uso fornece ao usuário a opção de encaminhar seu código diretamente ao um juíz online que efetuará a correção do mesmo|

# 5. Visão Lógica


<!-- # 6. Desempenho
<p align="justify"> &emsp;&emsp;
O desempenho do sistema será afetado por fatores como a velocidade da conexão do usuário com a internet e a quantidade de requisições sendo realizadas.
</p>


# 7. Qualidade
<p align="justify"> &emsp;&emsp;
A arquitetura baseada em microserviços é ideal neste projeto porque todos os serviços são independentes e por conta de tal independência é possível gerenciar o trafego de todos individualmente, de modo que fica mais fácil de replicar ou excluir containers quando o trafego aumenta consideravelmente.
Além de que, pelo fato de serem independentes é possível escalar todos os serviços, adicionar novas funcionalidades e remontar a arquitetura de maneira muito mais simples do que em um serviço monolítico
</p> -->

