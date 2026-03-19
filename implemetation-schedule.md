# Projeto 1: Sistema de Gestão de Estoque para Pequenas Empresas

## Cronograma de Implementação

**Projeto:** Sistema de Gestão de Estoque
**Duração estimada:** 3 semanas
**Carga total:** ~120h

--- 

## Semana 1 — Planejamento e Estrutura Base

**Objetivo:** definir arquitetura e iniciar o backend.

**Tempo estimado:** 40h

---

### Dia 1 — Levantamento de requisitos

****Tempo:**** 6h

Tarefas:

- Definir funcionalidades principais

- Criar backlog inicial

- Criar repositório GitHub

- Criar README inicial

- Definir stack tecnológica


Entrega:

- Documento de requisitos

- Estrutura inicial do projeto

---


### Dia 2 — Modelagem de dados

****Tempo:**** 8h

Tarefas:

- Definir entidades do sistema

Principais tabelas:

- usuários

- produtos

- categorias

- estoque_movimentacoes

- vendas

Criar:

- Diagrama ER

- migrations do Laravel

Entrega:

- Banco modelado

- migrations criadas

---

### Dia 3 — Configuração do projeto

****Tempo:**** 8h

Tarefas:

- Criar projeto Laravel

- Configurar banco MySQL

- Configurar Docker

- Configurar .env

- Instalar dependências

Extras:

- Laravel Breeze (autenticação)

- Tailwind CSS

Entrega:

- Projeto rodando localmente.

---

### Dia 4 — Autenticação e usuários

****Tempo:**** 8h

Tarefas:

Login

- Cadastro de usuário

- Sistema de roles

Perfis:

- Admin

- Operador

Entrega:

- Sistema de autenticação funcional.

---


### Dia 5 — CRUD de categorias

****Tempo:**** 10h

Tarefas:

Criar módulo de categorias:

- criar categoria

- editar

- excluir

- listar

Entrega:

 -CRUD funcional com interface.

---

## Semana  2 — Funcionalidades Principais

Objetivo: implementar lógica de estoque.

Tempo estimado: 40h

### Dia 6 — Cadastro de produtos

****Tempo:**** 8h

Campos:

nome

código

categoria

preço

estoque mínimo

Funcionalidades:

CRUD de produtos

validação de dados

Entrega:

Tela completa de produtos.

---

### Dia 7 — Movimentação de estoque

**Tempo:** 8h

Criar sistema de movimentações:

Tipos:

entrada

saída

ajuste

Cada operação deve gerar registro.

Entrega:

Histórico de movimentações.

---

### Dia 8 — Registro de vendas

**Tempo:** 8h

Funcionalidades:

registrar venda

selecionar produtos

atualizar estoque automaticamente

Entrega:

Fluxo de venda funcionando.

---

### Dia 9 — Alertas de estoque

**Tempo:** 8h

Funcionalidades:

identificar produtos abaixo do estoque mínimo

mostrar alertas no dashboard

Entrega:

Sistema de alerta implementado.

---

### Dia 10 — Histórico e auditoria

**Tempo:** 8h

Criar páginas para:

histórico de vendas

histórico de movimentações

filtros por data

Entrega:

Sistema auditável.

---

## Semana  3 — Dashboard, Testes e Deploy

Objetivo: finalizar o produto.

Tempo estimado: 40h

---

### Dia 11 — Dashboard

**Tempo:** 8h

Criar painel com:

Indicadores:

total de produtos

vendas do dia

produtos com estoque baixo

Gráficos:

vendas por período

Ferramentas:

Chart.js

Entrega:

Dashboard funcional.

---

### Dia 12 — Melhorias de interface

**Tempo:** 8h

Melhorias:

responsividade

UX

mensagens de erro

loading states

Entrega:

Interface refinada.

---

### Dia 13 — Testes

**Tempo:** 8h

Testes:

unitários

integração

Testar:

cadastro de produtos

vendas

estoque

Entrega:

Testes automatizados.

---

### Dia 14 — CI/CD

**Tempo:** 8h

Configurar:

GitHub Actions

pipeline de testes

build Docker

Entrega:

Deploy automatizado.

---

### Dia 15 — Deploy final

**Tempo:** 8h

Opções de deploy:

AWS

DigitalOcean

Railway

Render

Entrega:

Sistema online.

Estrutura final do repositório
estoque-app
│
├── app
├── database
│   ├── migrations
│   └── seeders
│
├── resources
│   ├── views
│   └── css
│
├── routes
│
├── tests
│
├── docker
│
├── README.md
├── docker-compose.yml
└── .github/workflows
Funcionalidades finais do sistema

✔ Login e autenticação
✔ Cadastro de produtos
✔ Controle de estoque
✔ Registro de vendas
✔ Histórico de movimentações
✔ Alertas de estoque
✔ Dashboard de indicadores
✔ API backend estruturada

💡 Resultado final:
um projeto completo de portfólio GitHub, com arquitetura real usada no mercado.