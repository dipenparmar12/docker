# sudo chmod 0444 mysqlconf/my.cnf
# sudo chown dipen:dipen mysqlconf/
# docker exec -it mysql bash
# mysql -p -e "show variables like '%max_allowed_packet%';"

## 1st input argument as array
# echo "input string: '$1'"
delimiter=", " #  fields may be separated by either a comma or a space

IFS=$delimiter read -r -a array <<<$1
# echo "count: ${#array[@]}"

for element in "${array[@]}"; do
  # echo "$element"

  docker exec -i mysql mysqldump -u root -proot "$element" >"$element.sql"

  echo "Backup created $element.sql"
  echo ""
  echo ""
done
