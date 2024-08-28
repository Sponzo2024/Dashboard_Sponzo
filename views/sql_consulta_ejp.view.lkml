
view: sql_consulta_ejp {
  derived_table: {
    sql: SELECT
          eventos.Evento  AS eventos_evento,
          patrocinadores.Patrocinador2  AS patrocinadores_patrocinador2
      FROM `Prueba.Eventos`  AS eventos
      LEFT JOIN `Prueba.Patrocinadores`  AS patrocinadores ON eventos.ID_Evento = (patrocinadores.`ID evento`)
      GROUP BY
          1,
          2
      ORDER BY
          1
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: eventos_evento {
    type: string
    sql: ${TABLE}.eventos_evento ;;
  }

  dimension: patrocinadores_patrocinador2 {
    type: string
    sql: ${TABLE}.patrocinadores_patrocinador2 ;;
  }

  set: detail {
    fields: [
        eventos_evento,
	patrocinadores_patrocinador2
    ]
  }
}
