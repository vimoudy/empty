connection: "postgres"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: empty_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: empty_project_default_datagroup

explore: empty {}

# - explore: all_types

# - explore: link

# - explore: order_items
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${order_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: orders
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: pg_stat_statements
#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${pg_stat_statements.userid} = ${users.id}
#       relationship: many_to_one


# - explore: users
