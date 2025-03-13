package utils

import com.zaxxer.hikari.HikariConfig
import com.zaxxer.hikari.HikariDataSource


class Banco {
   static def hikariConfig(banco, usr, passwd) {
      def db = new HikariConfig()
      db.setJdbcUrl(banco)
      db.setUsername(usr)
      db.setPassword(passwd)
      db.setDriverClassName("org.postgresql.Driver")

      db.setMaximumPoolSize(10)
      db.setMinimumIdle(2)
      db.setConnectionTimeout(30000)
      db.setIdleTimeout(600000)
      db.setMaxLifetime(1800000)

      return new HikariDataSource(db)
   }
}