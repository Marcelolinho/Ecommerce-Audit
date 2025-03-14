package scripts

import com.zaxxer.hikari.HikariDataSource
import groovy.sql.GroovyRowResult
import groovy.sql.Sql
import utils.Banco

//TODO entender como chamar outros arquivos em groovy
HikariDataSource dbSeta = Banco.hikariConfig('jdbc:postgresql://localhost:5432/erp', 'admin', 'marcelo123')

def query = new Sql(dbSeta)

List<GroovyRowResult> hubStock = query.rows("""select p.codigo     as codigo_produto,
                                                          sku.codigo   as sku_codigo,
                                                          skua.saldo   as stock
                                                 from mpp_produto p
                                                 join mpp_produto_sku sku on p.id = sku.id_mpp_produto
                                                 join mpp_produto_sku_armazem skua on sku.id = skua.id_mpp_produto_sku
                                                 join mkr_seller_center_produto scp on p.id = scp.id_mpp_produto""")

println result

HikariDataSource dbHub = Banco.hikariConfig('jdbc:postgresql://localhost:5432/hub', 'admin', 'marcelo321')