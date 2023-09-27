# data "local_file" "sql_script" {
#   filename = "terraform/modules/aws_rds/create_tables.sql"
# }

# resource "null_resource" "db_setup" {
#   depends_on = [aws_db_instance.postgres-sql]
#   provisioner "local-exec" {
#     command = "psql --host=${aws_db_instance.postgres-sql.endpoint} --port=${var.port} --user=${var.username} --password=${var.password} --database=db_test < ${data.local_file.sql_script.content}"
#   }
# }