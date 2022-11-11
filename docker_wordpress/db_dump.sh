# sudo chmod 0444 mysqlconf/my.cnf
# sudo chown dipen:dipen mysqlconf/
# docker exec -it mysql bash
# mysql -p -e "show variables like '%max_allowed_packet%';"


docker exec -i mysql mysqldump -u root -proot --databases wp > $1.sql