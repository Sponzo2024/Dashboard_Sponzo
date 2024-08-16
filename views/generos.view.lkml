view: generos {
  sql_table_name: `Prueba.Generos` ;;

  dimension: gnero {
    type: string
    sql: ${TABLE}.`Género` ;;
  }
  dimension: id_evento {
    type: number
    sql: ${TABLE}.`ID Evento` ;;
  }
  measure: count {
    type: count
  }
}
