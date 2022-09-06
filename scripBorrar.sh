#!/usr/bin/env bash

#Mostrar todos los archivos que estan en ese directorio
echo "Estos son los archivos dentro del directorio"
	archivos=$(pwd)
	#Muestra los archivos del directorio actual
	ls $archivos

#Pide el nombre del archivo a borrar
echo "Ingresa el nombre del  archivo a borrar"
	#Lee la entrada, que es el nombre del archivo a borrar
	read archBorrar

#Creamos una carpeta oculta y se verifica si existe (.papelera)
if [ ! -d .papelera ]
then
	mkdir .papelera
else 
	echo	""
fi

#Verificamos si el archivo a borrar existe
if [ -f $archBorrar ]
then 
	echo "El archivo ha sido borrado"
	#Mueve el archivo que se quiere borrar a la papelera
	mv $archBorrar  $archivos/.papelera
else
	echo "El archivo no existe"
fi
