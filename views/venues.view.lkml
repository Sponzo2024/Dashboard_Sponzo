view: venues {
  sql_table_name: `stately-lambda-421922.Prueba.Venues` ;;

  dimension: activo {
    type: string
    sql: ${TABLE}.Activo ;;
  }
  dimension: aforo {
    type: string
    sql: ${TABLE}.Aforo ;;
  }
  dimension: categoria_del_lugar {
    type: string
    sql: ${TABLE}.Categoria_del_lugar ;;
  }
  dimension: cielo_abierto {
    type: string
    sql: ${TABLE}.Cielo_abierto ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.Ciudad ;;
  }
  dimension: coordenadas {
    type: string
    sql: ${TABLE}.Coordenadas ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.Direccion ;;
  }
  dimension: id_venue {
    type: string
    sql: ${TABLE}.ID_Venue ;;
  }
  dimension: lugar {
    type: string
    sql: ${TABLE}.Lugar ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }
  measure: count {
    type: count
  }
}
