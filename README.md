# Auditoria Teste #

Para criar os containers dos bancos utilize:
```bash
    sudo docker compose up --build
```

Para rodar os containers:
```bash
    sudo docker compose up
```

Pra baixar as bibliotecas, rode os seguintes comandos

```bash
    cd src/main/groovy
    mkdir -p lib
    wget https://repo1.maven.org/maven2/org/codehaus/groovy/groovy-sql/3.0.9/groovy-sql-3.0.9.jar
    wget https://repo1.maven.org/maven2/com/zaxxer/HikariCP/5.0.1/HikariCP-5.0.1.jar
    wget https://repo1.maven.org/maven2/org/postgresql/postgresql/42.3.3/postgresql-42.3.3.jar
```