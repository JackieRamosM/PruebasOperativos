# PruebasOperativos
______________________________

#configuracion BashReduce

- debe tener habilitado ssh sin contraseña
- Lease https://github.com/erikfrey/bashreduce
- Para configuracion de multiples maquinas, lease: http://www.linuxproblem.org/art_9.html

#Para un PC y multiples cores
sudo nano /etc/br.hosts
	NOMBREDEEQUIPO NOMBREDEEQUIPO NOMBREDEEQUIPO NOMBREDEEQUIPO (si se repite 4 veces es porque usa 4 cores)

#Para dos PCs

sudo nano /etc/br.hosts
	NOMBREDEEQUIPO1 NOMBREDEEQUIPO2

chmod 777 /etc/br.hosts (Este comando debe ir en el equipo donde se haran las pruebas)


#Para ingresar a otro equipo

Desde user1@nombredeequipo1
	ssh user2@nombredeequipo2
	~ aqui se debe realizar el comando chmod
	~ aqui puedo correr comando de experimentos



# Comandos para Pruebas IO-Bound

time br -r "/path/to/separeString.sh" -i '/path/to/input' -o /path/to/output

#Comandos para pruebas CPU-Bound

time br -r "/path/to/cicloPrimos.sh" -i /path/to/numeros -o output 
time br -r "/path/to/cicloEuler.sh" -i /path/to/numeros -o output 
