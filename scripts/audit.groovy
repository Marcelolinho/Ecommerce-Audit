

def bancoErp = new DbConnection().hikariConfig()

bancoErp.withCloseable { ds ->
    ds.connection.withCloseable { conn ->
        def sql = conn.prepareStatement("SELECT * FROM produtos")
        sql.withCloseable { stmt ->
            def rs = stmt.executeQuery()
            while (rs.next()) {
                println("Produto: ${rs.getString('descricao')}, Preço: ${rs.getDouble('preco')}")
            }
        }
    }
}