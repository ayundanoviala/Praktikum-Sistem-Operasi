#!/bin/bash
w=0
opsi=0

input(){
	let w=$w+1
	echo "Nama Mahasiswa : "
	read nama[$w]
	echo "Tempat Lahir : "
	read tempat[$w]
	echo "Tanggal Lahir : "
	read tanggal[$w]
	echo "Kota Asal : "
	read kota[$w]
	echo "NPM : "
	read npm[$w]
	echo "Program Studi : "
	read prodi[$w]
	echo "Jenis Kelamin : "
	read jenis[$w]
	echo "Hobby : "
	read hobby[$w]
	echo "Cita Cita : "
	read cita[$w]
	echo "Nama Ayah : "
	read ayah[$w]
	echo "Nama Ibu :"
	read ibu[$w]
	echo "Pekerjaan Ayah : "
	read kerjaayah[$w]
	echo "Pekerjaan Ibu : "
	read kerjaibu[$w]
}


view(){
	for(( a = 1 ; a <= w ; a++ ))
	do
	echo ""
	echo "=============================="
	echo "=======DATA MAHASISWA========="
	echo "=============================="
	echo ""
	echo "Nama Mahasiswa : ${nama[$a]}"
	echo "Tempat Lahir	: ${tempat[$a]}"
	echo "Tanggal lahir	: ${tanggal[$a]}"
	echo "Kota Asal : ${kota[$a]}"
	echo "NPM \t\t\t: ${npm[$a]}"
	echo "Program Studi	: ${prodi[$a]}"
	echo "Jenis Kelamin	: ${jenis[$a]}"
	echo "Hobby	: ${hobby[$a]}"
	echo "Cita Cita	: ${cita[$a]}"
	echo "Nama Ayah	: ${ayah[$a]}"
	echo "Nama Ibu	: ${ibu[$a]}"
	echo "Pekerjaan Ayah : ${kerjaayah[$a]}"
	echo "Pekerjaan Ibu : ${kerjaibu[$a]}"
	echo ""
	done
}


search(){
	echo "Masukan Nama Mahasiswa :"
	read find
	a=0
	b=0
	while [ $a -le $w ] && [ $b == 0 ]
	do
		let a=$a+1
		if [ ${nama[a]} == $find ]
		then
			b=1
		fi
	done
}

delete(){
	search
	if [ $a -gt $w ]
	then
		echo "Data Tidak Ada"
	else
		while [ $a -lt $w ]
		do
			let b=$a+1
			nama[$a]=${nama[$b]}
			tempat[$a]=${tempat[$b]}
			tanggal[$a]=${tanggal[$b]}
			kota[$a]=${kota[$b]}
			npm[$a]=${npm[$b]}
			prodi[$a]=${prodi[$b]}
			jenis[$a]=${npm[$b]}
			hobby[$a]=${hobby[$b]}
			cita[$a]=${cita[$b]}
			ayah[$a]=${ayah[$b]}
			ibu[$a]=${ibu[$b]}
			kerjaayah[$a]=${kerjaayah[$b]}
			kerjaibu[$a]=${kerjaibu[$b]}
	let a=$a+1
done
let w=$w-1
echo "Data Berhasil dihapus"
fi
}

aplikasi(){
	libreoffice --writer
 bash ayunda2.sh
 exit
}

update(){
	search
	if [ $a -le $w ]
		then
			echo "Nama Mahasiswa : ${nama[$a]}"
			echo "Tempat Lahir	: ${tempat[$a]}"
			echo "Tanggal lahir	: ${tanggal[$a]}"
			echo "Kota Asal : ${kota[$a]}"
			echo "NPM : ${npm[$a]}"
			echo "Program Studi	: ${prodi[$a]}"
			echo "Jenis Kelamin	: ${jenis[$a]}"
			echo "Hobby	: ${hobby[$a]}"
			echo "Cita Cita	: ${cita[$a]}"
			echo "Nama Ayah	: ${ayah[$a]}"
			echo "Nama Ibu	: ${ibu[$a]}"
			echo "Pekerjaan Ayah : ${kerjaayah[$a]}"
			echo "Pekerjaan Ibu : ${kerjaibu[$a]}"
			echo "======================================================"
			echo "Nama Mahasiswa : "
			read nama[$a]
			echo "Tempat Lahir : "
			read tempat[$a]
			echo "Tanggal Lahir : "
			read tanggal[$a]
			echo "Kota Asal : "
			read kota[$a]
			echo "NPM : "
			read npm[$a]
			echo "Program Studi : "
			read prodi[$a]
			echo "Jenis Kelamin : "
			read jenis[$a]
			echo "Hobby : "
			read hobby[$a]
			echo "Cita Cita : "
			read cita[$a]
			echo "Nama Ayah : "
			read ayah[$a]
			echo "Nama Ibu : "
			read ibu[$a]
			echo "Pekerjaan Ayah : "
			read kerjaayah[$a]
			echo "Pekerjaan Ibu : "
			read kerjaibu[$a]
	else
			echo "TIDAK ADA DATA"
	fi
}


cetak(){
search
if [ $a -le $w ]
then
	echo "Nama Mahasiswa : ${nama[$a]}"
	echo "Tempat Lahir	: ${tempat[$a]}"
	echo "Tanggal lahir	: ${tanggal[$a]}"
	echo "Kota Asal : ${kota[$a]}"
	echo "NPM : ${npm[$a]}"
	echo "Program Studi	: ${prodi[$a]}"
	echo "Jenis Kelamin	: ${jenis[$a]}"
	echo "Hobby	: ${hobby[$a]}"
	echo "Cita Cita	: ${cita[$a]}"
	echo "Nama Ayah	: ${ayah[$a]}"
	echo "Nama Ibu	: ${ibu[$a]}"
	echo "Pekerjaan Ayah : ${kerjaayah[$a]}"
	echo "Pekerjaan Ibu : ${kerjaibu[$a]}"
else
	echo "TIDAK ADA DATA "
fi
}

while [ $opsi != 7 ]
do
	echo ""
	echo "=============MENU================="
	echo "========DATA MAHASISWA============"
	echo "=================================="
	echo "==========18081010025============="
	echo "|				|"
	echo "| Pilihan Menu : 		|"
	echo "| 1. Input Data			|"
	echo "| 2. View Data			|"
	echo "| 3. Search Data		|"
	echo "| 4. Delete Data		|"
	echo "| 5. Update Data		|"
	echo "| 6. buka LibreOffice writer	|"
	echo "| 7. Exit			|"
	echo "================================="
	echo "Pilihan : "
	read opsi
	if [ $opsi -eq 1 ]
	then
		input
	elif [ $opsi -eq 2 ]
	then
		if [ $w -lt 1 ]
			then
				echo "TIDAK ADA DATA"
		else
			view
		fi
	elif [ $opsi -eq 3 ]
	then
		cetak
	elif [ $opsi -eq 4 ]
	then
		delete
	elif [ $opsi -eq 5 ]
	then
		update
	elif [ $opsi -eq 6 ]
	then
		aplikasi
	elif [ $opsi -eq 7 ]
	then
		echo "exit"
	fi
	echo " "
done
