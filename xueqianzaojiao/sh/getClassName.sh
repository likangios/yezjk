#!/bin/sh
CONFUSE_FILE="$PROJECT_DIR/$PROJECT_NAME/Module/*"
END_FILE="$PROJECT_DIR/$PROJECT_NAME/End.list"

export LC_CTYPE=C

#grep -h -r -I  "@end" $CONFUSE_FILE  --include '*.[h]' > $END_FILE

#files=$(ls $CONFUSE_FILE)
#for filename in $files
#do
#echo $filename | awk -F "/" '{print $NF}' | sed  "s/[.h.m]//g" | sort | uniq  $END_FILE
#
#done

#str=${filename//\// }
#echo str:$str

ls  $CONFUSE_FILE | awk -F "/" '{print $NF}'| awk '{split($0,b,"."); print b[1]; }'| sort | uniq > $END_FILE


#ls  $CONFUSE_FILE | sed  "s/[.h.m]//g" | awk '{split($0,b,"/"); print b[9]; }'| sort | uniq > $END_FILE


#ls  $CONFUSE_FILE | sed  "s/[.h.m]//g" |awk '{split($0,b,"/"); print b[${#b[*]}-1]; }'| sort | uniq > $END_FILE
