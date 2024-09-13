view: patrocinadores {
  sql_table_name: `Prueba.Patrocinadores` ;;

  dimension: id_evento {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID_evento ;;
  }
  dimension: patrocinador2 {
    type: string
    sql: ${TABLE}.Patrocinador2 ;;
  }
  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }
  dimension: tipo_de_patrocinador {
    type: string
    sql: ${TABLE}.Tipo_de_patrocinador ;;
  }
  measure: count {
    type: count
  }
  measure: count_distinct_patrocinador {
    type: count_distinct
    sql: ${patrocinador2} ;;
  }
  measure: count_patrocinador {
    type: number
    sql: count(${patrocinador2}) ;;
  }
}
