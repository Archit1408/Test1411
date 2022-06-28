umask 000
for i in {0..9}
do
echo $i\,  $(( $RANDOM % 50 + 1 )) 
done
