#/bin/bash
TABLES="RJ RNAL ROBA SAST SIFK SIFV PARTN ARTICLES BANKE CONTACTS CUSTOMS ELEMENTS KONTO OBJECTS"
TABLES_PREFIX="sif"
FMKDBPATH="/mnt/data/fmk_data/bout_2011/fmk_data/sigma/SIF1"
DBF2PG="/mnt/data/harbour/src/harbour-3.0.0/contrib/hbpgsql/tests/dbf2pg"
PSQLDB="test2"
PSQLUSER="postgres"
PSQLPWD="xxxxxxxxx"
PSQLHOST="localhost"

cd $FMKDBPATH
for table in $TABLES
do
$DBF2PG  -h $PSQLHOST -y 5432 -d $PSQLDB -u $PSQLUSER -p $PSQLPWD -e fmk -f "$table".DBF -t "$TABLES_PREFIX"_"$table" -c
done  

