#!/bin/bash

#Aqui van los archivos a abrirse, separados por el espacio y en limit el numero de archivos a abrir
nombresArchIn=("arc1mb" "acr768kb" "arc512kb" "arc256kb")
limit=3

#Toma el tiempo y al terminar muestra cuanto demoro en milliseconds
for((i=0;$i<$limit;++i))
do
    T="$(date +%s%N)"
    ./br -i ${nombresArchIn[$i]} -o output
    T="$(($(date +%s%N)-T))"
    M="$((T/1000000))"
    echo "Archivo ${nombresArchIn[$i]} -- Tiempo en milisegundos: ${M}"
done


