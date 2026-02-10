# 🐳 Microservices Docker - Spring Boot

Uma arquitetura moderna de **Microsserviços** utilizando **Docker**, **Spring Boot** e **Docker Compose**, seguindo as melhores práticas internacionais de desenvolvimento, deployment e escalabilidade.

## 📋 Pré-requisitos

- Docker (v20.10+)
- Docker Compose (v2.0+)
- Java 17+
- Maven 3.8+
- Git
- Conhecimentos básicos em Linux, Docker e AWS (conforme descrito)

## 🏗️ Arquitetura do Projeto

```
microservices-docker/
├── docker-compose.yml          # Orquestração de containers
├── .dockerignore               # Arquivos ignorados no build
├── Makefile                    # Automação de tarefas
├── README.md                   # Este arquivo
├── docs/                       # Documentação
│   ├── ARCHITECTURE.md         # Arquitetura detalhada
│   ├── DEPLOYMENT.md           # Guia de deployment
│   └── AWS.md                  # Guia para AWS
├── scripts/                    # Scripts auxiliares
│   ├── setup.sh               # Setup inicial
│   ├── build.sh               # Build de todos os serviços
│   └── deploy.sh              # Deploy em produção
├── api-gateway/               # API Gateway (Spring Cloud Gateway)
│   ├── src/
│   ├── pom.xml
│   └── Dockerfile
├── user-service/              # Serviço de Usuários
│   ├── src/
│   ├── pom.xml
│   └── Dockerfile
├── product-service/           # Serviço de Produtos
│   ├── src/
│   ├── pom.xml
│   └── Dockerfile
└── order-service/             # Serviço de Pedidos
    ├── src/
    ├── pom.xml
    └── Dockerfile
```

## 🚀 Serviços Incluídos

### 1. **API Gateway** (Port: 8080)
- Spring Cloud Gateway
- Roteamento inteligente
- Autenticação e autorização
- Rate limiting

### 2. **User Service** (Port: 8081)
- Gerenciamento de usuários
- Autenticação
- Perfil e permissões

### 3. **Product Service** (Port: 8082)
- Catálogo de produtos
- Gerenciamento de inventário
- Busca e filtros

### 4. **Order Service** (Port: 8083)
- Processamento de pedidos
- Histórico de compras
- Comunicação com outros serviços

## 🔧 Configuração Rápida

### 1. Clone o repositório
```bash
git clone https://github.com/abghajkb24/microservices-docker.git
cd microservices-docker
```

### 2. Execute o setup inicial
```bash
chmod +x scripts/setup.sh
./scripts/setup.sh
```

### 3. Inicie os containers
```bash
docker-compose up -d
```

### 4. Verifique o status
```bash
docker-compose ps
```

## 📡 Endpoints Principais

| Serviço | Endpoint | Descrição |
|---------|----------|-----------|
| API Gateway | http://localhost:8080 | Gateway principal |
| User Service | http://localhost:8081 | Gerenciamento de usuários |
| Product Service | http://localhost:8082 | Catálogo de produtos |
| Order Service | http://localhost:8083 | Processamento de pedidos |

## 🧪 Testando a Aplicação

```bash
# Criar um novo usuário
curl -X POST http://localhost:8080/api/users \
  -H "Content-Type: application/json" \
  -d '{"name":"João","email":"joao@example.com"}'

# Listar produtos
curl http://localhost:8080/api/products

# Criar pedido
curl -X POST http://localhost:8080/api/orders \
  -H "Content-Type: application/json" \
  -d '{"userId":1,"productId":1,"quantity":2}'
```

## 🛠️ Comandos Úteis

```bash
# Build de todos os serviços
make build

# Iniciar ambiente de desenvolvimento
make up

# Parar todos os containers
make down

# Visualizar logs
make logs

# Acessar um serviço específico
docker-compose exec api-gateway bash

# Remover volumes (dados)
make clean
```

## 📚 Documentação Adicional

- [Arquitetura Detalhada](./docs/ARCHITECTURE.md)
- [Guia de Deployment](./docs/DEPLOYMENT.md)
- [Guia AWS](./docs/AWS.md)
- [Melhores Práticas](./docs/BEST_PRACTICES.md)

## 🔐 Segurança

- Isolamento de networks no Docker Compose
- Variáveis de ambiente para configurações sensíveis
- Health checks configurados
- Limitação de recursos por container

## 📈 Escalabilidade

A arquitetura suporta:
- Horizontal scaling com Kubernetes
- Load balancing automático
- Message queues (RabbitMQ, Kafka)
- Database replication

## 🌐 Deployment em AWS

Este projeto está preparado para deployment em:
- **ECS (Elastic Container Service)**
- **EKS (Elastic Kubernetes Service)**
- **EC2 com Docker Swarm**
- **Fargate (Serverless Containers)**

Veja [AWS.md](./docs/AWS.md) para instruções detalhadas.

## 📝 Stack Utilizado

- **Spring Boot 3.x**
- **Spring Cloud Gateway**
- **Spring Data JPA**
- **PostgreSQL** (Database)
- **Docker & Docker Compose**
- **Maven**
- **Lombok**
- **Micrometer** (Métricas)

## 🤝 Contribuindo

1. Crie uma branch (`git checkout -b feature/AmazingFeature`)
2. Commit suas mudanças (`git commit -m 'Add AmazingFeature'`)
3. Push para a branch (`git push origin feature/AmazingFeature`)
4. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT.

## 👨‍💻 Autor

**abghajkb24** - Microsserviços Docker com Spring Boot

---

**Desenvolvido com ❤️ seguindo as melhores práticas internacionais**