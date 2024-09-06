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
  dimension: age_tier {
    type: tier
    tiers: [0,6,13,18]
    style: integer
    sql: ${edad_m__nima} ;;
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
    primary_key: yes
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
  #Ejercicio medidas y dimensiones creadas
  dimension: evento_google {
    sql: ${evento} ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Year"
      value: "year"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Week"
      value: "week"
    }
  }
  dimension: date {

    sql: {% if date_granularity._parameter_value == 'year' %}
          ${fecha_year}
        {% elsif date_granularity._parameter_value == 'month' %}
          ${fecha_month}
        {% elsif date_granularity._parameter_value == 'week' %}
          ${fecha_week}
        {% endif %} ;;
  }
  dimension: Categorizacion_de_edad{
    type: string
    sql: CASE
      WHEN ${edad_m__nima}>=18 then "Mayores de edad"
      when ${edad_m__nima}<18 then "Menores de edad"
      else "Indefinido"
      END ;;
  }

  measure: count {
    type: count
  }
  measure: count_evento {
    type: number
    sql: count(${evento});;
  }
  measure: count_patrocinio {
    type: number
    sql: count(${patrocinio});;
  }
  measure: count_distinct_evento {
    type: count_distinct
    sql: ${evento};;
  }
  measure: count_distinct_organizadores{
    type: count_distinct
    sql: ${organizadores};;
  }
  measure: count_distinct_tiquetera{
    type: count_distinct
    sql: ${tiquetera};;
  }

}
