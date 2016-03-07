mysql -u burgoonl -p toxcast < getting_toxcast_data_out.sql > toxcast_data.txt
mongoimport -v --host localhost:27017 --db aopxplorer-dev --collection data_toxcast_l5 --ignoreBlanks --type tsv --file toxcast_data.txt --headerline --stopOnError --drop
#run this from mongodb console or robomongo: db.getCollection('data_toxcast_l5').update({}, {$set: {source: "toxcast"}}, {multi: true})

mysql -u burgoonl -p toxcast < getting_toxcast_raw_data_out.sql > toxcast_data_raw.txt
