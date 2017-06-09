#!/bin/bash      
APP="./app"
MODULO=$1
CONTROLADOR_FOLDER="controllers"
CONTROLLER=$2
CONTROLADOR=${2^}'.php'

VIEWS_FOLDER="views"
THEME_FOLDER="views/theme"
VISTA=$3
METODO=$3

MODELS_FOLDER="models"
MODELO=${2^}'Model.php'

x=1
while [ $x -le 4 ]
do
	#MODULO
	if [ -d $APP/$MODULO ];
	then
		#CARPETA CONTROLLERS
		if [ -d $APP/$MODULO/$CONTROLADOR_FOLDER ];
		then
			#CONTROLLADOR
			if [ -f $APP/$MODULO/$CONTROLADOR_FOLDER/$CONTROLADOR ];
			then
				echo "Sí, sí existe app/"$MODULO/'controllers/'$CONTROLADOR
			else
			echo "Creado app/"$MODULO/'controllers/'$CONTROLADOR
			touch $APP/$MODULO/$CONTROLADOR_FOLDER/$CONTROLADOR
			./cli/generator/make/makeController.sh $MODULO $CONTROLLER $VISTA
			fi
		else
		echo "Creado existe app/"$MODULO/'controllers/'
		mkdir -m 777 $APP/$MODULO/'controllers'
		fi

		#CARPETA MODELS
		if [ -d $APP/$MODULO/$MODELS_FOLDER ];
		then
			#CONTROLLADOR
			if [ -f $APP/$MODULO/$MODELS_FOLDER/$MODELO ];
			then
				echo "Sí, sí existe app/"$MODULO/'controllers/'$MODELO
			else
			echo "Creado app/"$MODULO/'models/'$MODELO
			touch $APP/$MODULO/$MODELS_FOLDER/$MODELO
			./cli/generator/make/makeModel.sh $MODULO $CONTROLLER $VISTA
			fi
		else
		echo "Creado app/"$MODULO/'models/'
		mkdir -m 777 $APP/$MODULO/'models'
		fi

		#CARPETA VIEWS/
		if [ -d $APP/$MODULO/$VIEWS_FOLDER ];
		then
			#CARPETA VIEWS/CONTROLLER
			if [ -d $APP/$MODULO/$VIEWS_FOLDER/$CONTROLLER ];
			then
				mkdir -m 777 $APP/$MODULO/'views/theme'
				touch $APP/$MODULO/'views/theme/'$MODULO'.php'
				./cli/generator/make/makeTheme.sh $MODULO $CONTROLLER $VISTA
				if [ -f $APP/$MODULO/$VIEWS_FOLDER/$CONTROLLER/$VISTA ];
				then
					echo "Sí, sí existe app/"$MODULO/$VIEWS_FOLDER/$CONTROLLER/$VISTA
				else
				echo "Creado app/"$MODULO/$VIEWS_FOLDER/$CONTROLLER/$VISTA
				touch $APP/$MODULO/$VIEWS_FOLDER/$CONTROLLER/$VISTA'.php'
				./cli/generator/make/makeVista.sh $MODULO $CONTROLLER $VISTA
				#./generator.sh $MODULO $CONTROLADOR $VISTA
				fi
			else
			echo "Creado app/"$MODULO/'views/'$CONTROLLER
			mkdir -m 777 $APP/$MODULO/'views'/$CONTROLLER
			fi
		else
			echo "Creado app/"$MODULO/'views/'
			mkdir -m 777 $APP/$MODULO/'views'
		fi
	else
	#echo "Creado app/"$MODULO/"models/"
	mkdir -m 777 $APP/$MODULO
	fi
  x=$(( $x + 1 ))
done

#volvemos a crear el road map para autocargar los nuevos controladores
composer dump-autoload -o

#comando para abrir la vista recien creada en el explorador pero solo si es la vista index para no 
#sobre poblaar el explorador con pestañas y porque no se ha logrado insertar public function() en el
#controlador de forma dinamica hasta entonces esto quedara asi para la creacion de vistas individuales.
if [ "index" = $3 ]; then
	bash -c "xdg-open http://localhost/"${PWD##*/}"/"$1"/"$2"/"$3 2> /dev/null
fi


