view: patrocinadores {
  sql_table_name: `Prueba.Patrocinadores` ;;

  dimension: id_evento {
    primary_key: yes
    type: number
    sql: ${TABLE}.`ID evento` ;;
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
    sql: ${TABLE}.`Tipo de patrocinador` ;;
  }
  measure: count {
    type: count
  }
}
