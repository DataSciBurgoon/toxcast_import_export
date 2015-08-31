#Download the ToxCast SQL File
Go to the [ToxCast Website][http://epa.gov/comptox/toxcast/data.html] and download the invitrodb_v1.sql file from the "Download MySQL Database Zip File" link (as of 31-Aug-2015 it was [here][http://epa.gov/comptox/toxcast/files/MySQL%20Database/MySQL_Database_v1.zip]).

#Importing ToxCast Into MySQL
Run this on the command line:

```
sudo mysql -u _username_ -p toxcast < invitrodb_v1.sql
```

#Importing ToxCast Level 5 Data From MySQL to MongoDB
Run this on the command line:

```
sh export_toxcast.sh
```

This will result in a toxcast_data.txt file being created. This is then read into MongoDB via the mongoimport utility.

#Exporting ToxCast Level 5 Data from MongoDB into JSON
Run this on the command line:

```
sh export_toxcast_from_mongo.sh
```

