#!/usr/bin/perl

#Fichero especializado para la ejecucion en lotes ejecutables

$Path="/home/mguerrero/Universidad/2021-3/Arquitectura de Computadores/Parcial03/C++";
@Ejecutables=("MMcpp");

@VectorSize= ("200","400","600","800","1000");
$repeticiones=30;

 foreach $exe (@Ejecutables)
 {
   foreach $ves (@VectorSize)
   {
          $file = "$Path/"."$exe"."-Size"."$ves"."-core";
          print "$file \n"; #este es el nombre del archivo vale!! 
          for($i=0; $i<$repeticiones;  $i++)
          {
                #system("$Path/BIN/$InFile 100 1 0 0 ");
                system("'$Path/$exe' $ves >> '$file'");
                #print "'$Path/$exe' $ves \n";
          }    

   }
 }
