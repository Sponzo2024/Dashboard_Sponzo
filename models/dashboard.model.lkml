connection: "dash_sponzo"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dashboard_default_datagroup

explore: eventos {

    join: patrocinadores {
      sql_on: ${eventos.id_evento} = ${patrocinadores.id_evento} ;;
      relationship: one_to_many # Could be excluded since many_to_one is the default
      type: left_outer
    }
    join: ticket {
      sql_on: ${eventos.id_evento} = ${ticket.id_evento} ;;
      relationship: one_to_many # Could be excluded since many_to_one is the default
      type: left_outer
    }
    join: generos {
      sql_on: ${eventos.id_evento} = ${generos.id_evento} ;;
      relationship: one_to_many
      type: left_outer
    }
    join: venues {
      sql_on: ${eventos.id_venue} = ${venues.id_venue} ;;
      relationship: one_to_many
      type: left_outer
  }
#  access_filter: {
 #   field: eventos.organizadores
  #  user_attribute: organizador
  #}
  }


explore: ticket {}

explore: patrocinadores {}

explore: generos {}

explore: venues {}

explore: sql_consulta_ejp {}
