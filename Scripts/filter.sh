mkdir gpc
for file in *; do

        INFO=($(cat $file | grep -e p\ edge -e p\ col))
        N=${INFO[2]}
        M=750

        if [ $N -ge 750 ]; then mv $file gpc/; fi

done
