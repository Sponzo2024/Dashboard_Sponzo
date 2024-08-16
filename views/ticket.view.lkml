view: ticket {
  sql_table_name: `Prueba.Ticket` ;;

  dimension: agotado {
    type: string
    sql: ${TABLE}.Agotado ;;
  }
  dimension: id_evento {
    type: number
    sql: ${TABLE}.`ID Evento` ;;
  }
  dimension: ticket_ms_barato {
    type: number
    sql: ${TABLE}.`Ticket más barato` ;;
  }
  dimension: ticket_ms_caro {
    type: number
    sql: ${TABLE}.`Ticket más caro` ;;
  }
  measure: count {
    type: count
  }
}
