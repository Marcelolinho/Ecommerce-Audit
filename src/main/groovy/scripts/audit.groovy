package scripts

import groovy.sql.GroovyRowResult
import groovy.sql.Sql
import utils.*

import java.sql.Connection

//Conexão com o banco
JdbcGateway dbConfig = new JdbcGateway()
def dbSeta = dbConfig.hikariConfig()

def query = new Sql(dbSeta)

List<GroovyRowResult> result = query.rows("select * from produtos")

println result

//def dbHub = dbConfig.hikariConfig()