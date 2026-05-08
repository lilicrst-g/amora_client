# 🍓 Amora

Aplicação fullstack para gerenciamento de pedidos de cestas, composta por uma API REST em Java com Spring Boot e um aplicativo mobile desenvolvido em Flutter.

---

## 📦 Repositórios

| Repositório | Descrição |
|---|---|
| [`amora_api`](https://github.com/lilicrst-g/amora_api) | Backend — API REST em Java com Spring Boot |
| [`amora_client`](https://github.com/lilicrst-g/amora_client) | Frontend — Aplicativo mobile em Flutter |

---

## 🗂️ Sobre o Projeto

O **Amora** é um sistema de pedidos de cestas que permite que usuários realizem pedidos, informem endereço de entrega e acompanhem o status dos seus pedidos. O projeto foi desenvolvido como parte da disciplina de Programação Orientada a Objetos (POO) na UERN (Universidade do Estado do Rio Grande do Norte).

---

## 🛠️ Tecnologias Utilizadas

### Backend (`amora_api`)
- **Java 21**
- **Spring Boot 3.5**
  - Spring Web
  - Spring Data JPA
  - Spring Security
- **PostgreSQL** — banco de dados principal
- **H2** — banco de dados em memória para testes
- **JWT** (`com.auth0:java-jwt`) — autenticação stateless
- **Lombok** — redução de boilerplate
- **ModelMapper** — mapeamento entre entidades e DTOs
- **SpringDoc OpenAPI** — documentação automática da API (Swagger UI)
- **Docker / Docker Compose** — containerização
- **Maven** — gerenciamento de dependências e build

### Frontend (`amora_client`)
- **Flutter** (Dart)
- Suporte a Android e Web

---

## 🗄️ Modelo de Dados

O sistema é composto pelas seguintes entidades:

- **User** — usuário do sistema (nome, telefone, e-mail)
- **Address** — endereço de entrega vinculado ao usuário (cidade, bairro, rua, número, complemento)
- **Basket** — cesta disponível para pedido (nome, preço, descrição, foto)
- **Order** — pedido realizado pelo usuário (status, data do pedido, data de entrega, endereço e usuário associados)
- **Order_Basket** — relação entre pedidos e cestas (tabela de junção)

---

## 🚀 Como Executar

### Pré-requisitos
- Java 21+
- Docker e Docker Compose
- Flutter SDK
- Maven

### Backend

```bash
# Clone o repositório
git clone https://github.com/lilicrst-g/amora_api.git
cd amora_api

# Suba o banco de dados com Docker
docker-compose up -d

# Execute a aplicação
./mvnw spring-boot:run
```

A API ficará disponível em `http://localhost:8080`.

A documentação Swagger estará acessível em `http://localhost:8080/swagger-ui.html`.

### Frontend

```bash
# Clone o repositório
git clone https://github.com/lilicrst-g/amora_client.git
cd amora_client

# Instale as dependências
flutter pub get

# Execute o aplicativo
flutter run
```

---

## 🔐 Autenticação

A API utiliza **JWT (JSON Web Token)** para autenticação. É necessário realizar login para obter o token e incluí-lo no cabeçalho das requisições protegidas:

```
Authorization: Bearer <token>
```

---

## 📁 Estrutura do Projeto

```
amora_api/
├── src/
│   └── main/java/...   # Código-fonte Java (controllers, services, repositories, entities)
├── docker-compose.yml  # Configuração do banco de dados em container
├── pom.xml             # Dependências Maven
└── classdiagram.plantuml  # Diagrama de classes do sistema

amora_client/
├── lib/                # Código-fonte Dart/Flutter
├── android/            # Configurações Android
├── assets/             # Recursos estáticos
└── pubspec.yaml        # Dependências Flutter
```

---

## 👩‍💻 Autores

Desenvolvido por [lilicrst-g](https://github.com/lilicrst-g) e colaboradores.
