export FT_LINE1=8
export FT_LINE2=16

cat /etc/passwd | \
grep -v '^#' | \
awk 'NR>1 {print$0}' | \
cut -d':' -f1 | \
rev | \
awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]' | \
sort -r | \
tr '\n', ', ' | \
sed 's/,$/./' | \
cat -e
