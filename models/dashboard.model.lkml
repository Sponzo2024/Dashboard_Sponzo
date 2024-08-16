connection: "dash_sponzo"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dashboard_default_datagroup

explore: eventos {}

explore: ticket {}

explore: patrocinadores {}

explore: generos {}

explore: venues {}

