<p align="center">
  <a href="https://rubyonrails.org" target="blank"><img src="https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/ruby-on-rails-512.png" width="200" alt="Rails Logo" /></a>
</p>

<p align="center">
  <a href="#-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-projeto">Projeto</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-como-executar">Como executar</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-licença">Licença</a>
</p>

<p align="center">
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=8257E5&labelColor=000000">
</p>

<br>

<a id="-tecnologias"></a>

## ✨ Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![SASS](https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white)
![Bulma](https://img.shields.io/badge/bulma-00D0B1?style=for-the-badge&logo=bulma&logoColor=white)

<a id="-projeto"></a>

## 💻 Projeto

O projeto JobBoard é uma ideia de aplicação desenvolvida para recrutadores e pessoas que procuram uma vaga de emprego, a plataforma tem como objetivo facilitar essa ação.

<p align="center">
  <img alt="Home Page" src=".github/media/home.png" width="100%">
</p>

<p align="center">
    <img alt="Job Page" src=".github/media/job.png" width="100%">
</p>

<p align="center">
  <img alt="Vaga Page" src=".github/media/create.png" width="100%">
</p>

<a id="-como-executar"></a>

## 🚀 Como executar

### 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:

- Você instalou a versão mais recente de `< Docker & Ruby>`

- Você tem uma máquina `< Windows / Linux / Mac >`.

- Você possui um `< Editor de código ou IDE / Gerenciador de banco de dados >`.

## Serviços necessários antes de rodar a aplicação:

Lembre-se de pegar as suas chaves de API nos serviços da API de pagamentos **[Stripe](https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwijlrD54oX3AhUvQUgAHQb7CAsYABAAGgJjZQ&ohost=www.google.com&cid=CAASJeRopwqWu91WWsvPhM4UKeVdBrRdLP22hWD2ajMnUqih0kZrdnc&sig=AOD64_0Ww0E5pwd2EtlWshd1Y1RIipL_mg&q&adurl&ved=2ahUKEwiutan54oX3AhUNjZUCHaMFAqsQ0Qx6BAgDEAE).**

## ☕ Pequena ajuda

Preencha o arquivo `.env.example` com as informações cobradas e depois renomeie para `.env`.

```env
DATABASE_NAME=
DATABASE_USER=
DATABASE_PASSWORD=
DATABASE_HOST=
```

## Configurando o rails antes de iniciar :gear:

Primeiro, instale todas as Gems que são cobradas no GemFile:

```bash
bundle install
# se estiver configurado como produção
bundle install --without development test
```

Gere sua `master.key` para você não ter problemas de credenciais no rails:

```bash
rails credentials:edit
```

Agora, execute o comando abaixo para gerar o arquivo de configuração:

```bash
bundle exec figaro install
```

O arquivo será criado em `config/application.yml`, nesse arquivo siga o template abaixo para configurar as suas chaves de API

```yml
development:
  stripe_api_key: SUA_CHAVE_SECRETA_DO_STRIPE
  stripe_publishable_key: SUA_CHAVE_PUBLICA_DO_STRIPE

production:
  stripe_api_key: SUA_CHAVE_SECRETA_DO_STRIPE
  stripe_publishable_key: SUA_CHAVE_PUBLICA_DO_STRIPE
```

Agora, você tem o arquivo necessário para fazer o rails rodar com suporte ao stripe 😻

### Se lembre de ter o Docker rodando :ocean:

E então, rode o comando `docker-compose up --build -V`.

Se você quiser rodar o container em ambiente de produção `docker-compose -f ./docker-compose.prod.yml up --build -V`

Agora você pode acessar [localhost:3000](localhost:3000) do seu navegador.

<a id="licença"></a>

## 📄 Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](../LICENSE.md) para mais detalhes.

---

#### _Sinta-se livre para colaborar, toda ajuda é bem vinda ;)_
