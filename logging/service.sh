
#1) Quanto tempo de CPU, medidos em segundos, (divididos em sys e user) o usuário consumiu durante um mês; 
awk '{print $1; system(egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s output.log)}' output.log

egrep -o 'user [0-9]m[0-9].[0-9]+s sys [0-9]m[0-9].[0-9]+s' output.log 


#2) um histograma da utilização de comandos pelo usuário (ou seja, quantas vezes cada comando foi usado em um mês).
