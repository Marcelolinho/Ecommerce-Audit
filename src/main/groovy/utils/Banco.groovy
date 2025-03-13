package utils

import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource

static def hikariConfig() {
   def erp = new HikariConfig()
   erp.setJdbcUrl("jdbc:postgresql://localhost:5432/erp")
   erp.setUsername("admin")
   erp.setPassword("marcelo123")
   erp.setDriverClassName("org.postgresql.Driver")

   erp.setMaximumPoolSize(10)
   erp.setMinimumIdle(2)
   erp.setConnectionTimeout(30000)
   erp.setIdleTimeout(600000)
   erp.setMaxLifetime(1800000)

   return new HikariDataSource(erp)
}
