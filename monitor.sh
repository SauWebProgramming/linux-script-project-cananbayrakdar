#!/bin/bash

TARIH=$(date)
CPU=$(top -bn1 | awk '/Cpu/ {printf "%.1f", 100 - $8}')
RAM=$(free -m | awk '/Mem:/ {print $3 "MB / " $2 "MB"}')
DISK=$(df -h / | awk 'NR==2{print $3 " / " $2 " (" $5 ")"}')
USERS=$(who | wc -l)

echo "<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Sunucu Durum Paneli</title>
</head>

<body>

<h1>Sunucu Durum Paneli</h1>

<div class='panel'>
<p><b>Tarih ve Saat:</b> $TARIH</p>
<p><b>CPU Kullanımı:</b> %$CPU</p>
<p><b>RAM Durumu:</b> $RAM</p>
<p><b>Disk Alanı:</b> $DISK</p>
<p><b>Aktif Kullanıcı Sayısı:</b> $USERS</p>
</div>

</body>
</html>" > /var/www/html/index.html

