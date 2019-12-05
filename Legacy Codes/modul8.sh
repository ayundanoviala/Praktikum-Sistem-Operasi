#!/bin/bash
#!/bin/ksh

declare -a array
i=0;

select menu in "1. luas kubus" "2. luas permukaan prisma segitiga" "3. luas permukaan limas persegi" "4. nilai tengah dari ketiga luas permukaan" "5. keluar"
do
 case $menu in
  "1. luas kubus")
   echo -n "masukan sisi ="
   read sisi;
   let lkubus=$sisi*$sisi*6;
   let array[$i]=$lkubus;
   echo ${array[$i]}
   let i=$i+1;
   ;;
   


  "2. luas permukaan prisma segitiga")
   echo -n "masukan panjang alas segitiga"
   read panjangalas3;
   echo -n "masukan tinggi alas"
   read tinggialas3;
   echo -n "masukan luas bidang tegak"
   read luasbidang;
 let luasalas3=$panjangalas3*$tinggialas3/2;
   let luasprisma3=2*$luasalas3+3*$luasbidang;
   let array[$i]=$luasprisma3;
   echo ${array[$i]}
   let i=$i+1;
   ;;

  "3. luas permukaan limas persegi")
    echo -n "masukan sisi "
    read sisilimas;
    echo -n "masukan tinggi limas "
    read tinggilimas;
    let luaslimas=$sisilimas*$sisilimas*$tinggilimas/3;
    let array[$i]=$luaslimas;  
    echo ${array[$i]}
    let i=$i+1;
    ;;


  "4. nilai tengah dari ketiga luas permukaan")
   
   echo ${array[@]}

   for((x=0;x<i-1;x++))
   do
    let small=${array[$x]};
    let index=$x;
   	for((y=x+1;y<i;y++))
   	do
   		if((array[$y]<small));
 		then
			let small=${array[$y]};
   			let index=$y;
  		fi
   	done
    let temp=${array[$x]};
    let array[$x]=${array[$index]};
    let array[$index]=$temp;
   done

    for ((x=0;x<$i;x++))
     do	
   	echo -n ${array[$x]} " "
     done
	
   let m=$i%2
   if(($m==0))
   then 
    let x=($i/2);
    let median=(${array[$x-1]}+${array[$x]})/2;
    echo ${array[$x-1]} ${array[$x]} ;
    echo $x;
   else 
    let x=$i/2;
    let median=${array[$x]};	
   fi 
   
   echo "median adalah "$median
    

   ;;

 "5. keluar")
   echo "terima kasih"
   exit 1
   ;;

 esac
done



