# Auditoria Teste #

Para criar a imagem do banco utilize:
```bash
    sudo docker build -t my-postgres-db .
```

Para rodar o container:
```bash
    sudo docker run -d --name my-postgres-db -p 5432:5432 my-postgres-db
```

