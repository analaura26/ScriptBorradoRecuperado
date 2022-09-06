#!/usr/bin/env bash

#Mostrar los archivos que se han enviado a la papelera
echo "Estos son los archivos eliminados"
	ls .papelera

#Pedir el nombre del archivo a recuperar
echo "Ingresa el nombre del archivo a recuperar"
	#lee la entrada, que es el nombre del archivo
	read nomArch

#Me dirijo a la carpeta papelera
papelera=$(pwd)
cd $papelera/.papelera
#cd /home/ana/TareaScrip/.papelera

#Se verifica si el archivo se encuentra en la papelera 
if [ -f $nomArch ]
then
	echo "El archivo a sido recuperado"
	mv $nomArch ../
else
	echo "El archivo no existe"
fi
