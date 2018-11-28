
#1) Quanto tempo de CPU, medidos em segundos, (divididos em sys e user) o usuário consumiu durante um mês; 

egrep -o '^[^ ]+ user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' output.log

awk 'BEGIN {system("egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s")}' output.log

Qual o mês em que mais jobs falharam?
awk '{print $1$2$3}' error.log | uniq | egrep -o '/[A-Za-z]{3}/[0-9]{4}' | uniq -c | sort | awk 'END {print $2}'
/Dec/2017

awk "{print $1; system(egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' output.log)}" output.log

egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' output.log

#2) um histograma da utilização de comandos pelo usuário (ou seja, quantas vezes cada comando foi usado em um mês).
