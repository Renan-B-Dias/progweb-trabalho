# Star Professors
## Trabalho ProgWeb 1.0 - Web

# URL: https://star-professors.herokuapp.com

## Instalação do Projeto
------------------------

### Dependências

 - Ruby v2.4.1
     - Caso não tenha Ruby intalado em sua máquina, recomendamos o uso do [RVM](https://rvm.io/) para a instalação do mesmo.
 - Rails v5.0.3
 - MySQL e/ou Postgres
 - ImageMagick. Comando Ubuntu: `sudo apt-get install imagemagick libmagickwand-dev`
 - MySQL
 - Git e Git Flow

**Download**

Acesse via terminal o local dos seus projetos e faça o download do repositório.
```bash
$ git clone 
```

Para utilização do ambiente de desenvolvimento configure o Git Flow.
```bash
$ sudo apt-get install git-flow
$ git flow init
```
Pressione Enter para todas as opções que serão exibidas. Depois disso você já estara na branch de development.

Caso opte por não utilizar Git Flow, é necessário fazer o download da branch `develop` remota.

**Configuração do Gemset**

Dentro da pasta do projeto, crie os arquivos `.ruby-version` e `.ruby-gemset` e depois entre novamente na pasta para carregar as novas configurações.
```bash
$ echo "ruby-2.4.1" > .ruby-version && echo "trabalho_progweb" > .ruby-gemset
$ cd .
```

**Instalação das dependências**

A ferramenta `bundle` instalará todas as gems que foram definidas no Gemset do projeto.
```bash
$ gem install bundle
$ bundle install
```

**Configuração do banco de dados**

Primeiramente é necessário criar o arquivo de setup de banco: `config/database.yml`. Para isso copie o arquivo de exemplo e modifique os campos corretos:
```bash
$ cp config/database.example.yml config/database.yml
```

Depois copie o conteúdo do arquivo de exemplo `config/database.example.yml`, cole no novo arquivo e altere o usuário e senha de acordo com seu MySQL local.

Por fim, crie o banco de dados, rode as migrations e popule o mesmo.

```bash
$ rake db:create db:migrate
```

**Start do servidor**
```bash
$ rails s
```
