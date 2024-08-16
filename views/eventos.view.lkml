view: eventos {
  sql_table_name: `Prueba.Eventos` ;;

  dimension: __patrocidores {
    type: number
    sql: ${TABLE}.__patrocidores ;;
  }
  dimension: aforo {
    type: string
    sql: ${TABLE}.Aforo ;;
  }
  dimension: d__as {
    type: number
    sql: ${TABLE}.D__as ;;
  }
  dimension: edad_m__nima {
    type: number
    sql: ${TABLE}.Edad_m__nima ;;
  }
  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }
  dimension: evento {
    type: string
    sql: ${TABLE}.Evento ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }
  dimension: id_artista {
    type: string
    sql: ${TABLE}.ID_artista ;;
  }
  dimension: id_evento {
    type: number
    sql: ${TABLE}.ID_Evento ;;
  }
  dimension: id_venue {
    type: string
    sql: ${TABLE}.ID_venue ;;
  }
  dimension: organizadores {
    type: string
    sql: ${TABLE}.Organizadores ;;
  }
  dimension: patrocinio {
    type: string
    sql: ${TABLE}.Patrocinio ;;
  }
  dimension: rango_edad {
    type: string
    sql: ${TABLE}.Rango_edad ;;
  }
  dimension: tipo_de_evento {
    type: string
    sql: ${TABLE}.Tipo_de_evento ;;
  }
  dimension: tiquetera {
    type: string
    sql: ${TABLE}.Tiquetera ;;
  }
  measure: count {
    type: count
  }
}
