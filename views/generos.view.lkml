view: generos {
  sql_table_name: `Prueba.Generos` ;;

  dimension: genero {
    type: string
    sql: ${TABLE}.G__nero ;;
  }
  dimension: id_evento {
    type: number
    sql: ${TABLE}.ID_Evento ;;
  }
  measure: count {
    type: count
  }
}
