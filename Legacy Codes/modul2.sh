#!/bin/bash
echo "masukan detik = "
read detik;
jam=3600
menit=60

if [ $detik -ge $jam ]
then
	let sisa1=$detik-$jam
	let sisa2=$sisa1-$menit
	let hasil1=$detik/$jam
	let hasil2=$sisa1/menit
	let sisa3=$hasil2*menit
	let sisa4=$sisa1-$sisa3
	echo $hasil1"jam" $hasil2"menit" $sisa4"detik"
elif [ $detik -ge $menit ]
then
	let sisa2=$detik-$menit
	let hasil2=$detik*$menit
	echo $hasil2 "menit" $sisa2 "detik"
else
	echo $detik "detik"
fi



