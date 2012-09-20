FILE=$1
THRESHOLD=$2
csound -d -A -n --omacro:theFile=$FILE rms.csd 2>&1 | fgrep 'leftrms' | awk -F{ '{print  "{" $2}' | tee rms.txt | perl rms.pl | bash -x
bash make-movie.sh $FILE
