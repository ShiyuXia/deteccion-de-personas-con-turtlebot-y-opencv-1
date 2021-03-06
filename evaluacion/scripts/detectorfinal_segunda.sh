#!/bin/bash

# Importamos el script base
source base.sh

# Elegimos set // Mejor hacerlo en llamartodos

###########################################################################################################
#			DETECTORFINAL
###########################################################################################################

# DetectorFinal direccion_a_cascada string escala_inicial float convertir_a_gris bool ecualizar_histograma bool scaleFactor float minNeighbors int usar_profundidad_altura bool

SUBCARPETA=detectorfinal
# Creamos la carpeta en caso de que no exista
mkdir -p $CARPETA_RESULTADOS/$SUBCARPETA

# Parámetros
DF_DIR_CASCADA=./../clasificadores/visionary.net_pedestrian_cascade_web_LBP.xml
DF_ESCALA_INICIAL=1.3
DF_CONVERTIR_A_GRIS=true
DF_ECUALIZAR_HISTOGRAMA=true
DF_SCALEFACTOR=1.1
DF_MINNEIGHBORS=4
DF_USAR_PROFUNDIDAD=false
DF_BLUREAR=true
DF_TAMANIO_BLUR=3
DF_FILTRO_ENFOQUE=false
DF_FILTRO_REPUJADO=false
DF_FILTRO_ENFOQUE_Y_REPUJADO=false
DF_FILTRO_REPUJADO_Y_ENFOQUE=false

# Función
funcion_detector_final ()
{
	# Detecciones
	$PRINCIPAL $CARPETA_RGB $CARPETA_PROFUNDIDAD $IMAGEN_INICIAL $IMAGEN_FINAL $CARPETA_RESULTADOS/$SUBCARPETA/$PREFIJO1\_$PREFIJO2\_$NOMBRE_RESULTADOS 0 DetectorFinal direccion_a_cascada $DF_DIR_CASCADA escala_inicial $DF_ESCALA_INICIAL convertir_a_gris $DF_CONVERTIR_A_GRIS ecualizar_histograma $DF_ECUALIZAR_HISTOGRAMA scaleFactor $DF_SCALEFACTOR minNeighbors $DF_MINNEIGHBORS usar_profundidad_altura $DF_USAR_PROFUNDIDAD blurear $DF_BLUREAR tamanio_blur $DF_TAMANIO_BLUR filtro_enfoque $DF_FILTRO_ENFOQUE filtro_repujado $DF_FILTRO_REPUJADO filtro_enfoque_y_repujado $DF_FILTRO_ENFOQUE_Y_REPUJADO filtro_repujado_y_enfoque $DF_FILTRO_REPUJADO_Y_ENFOQUE
	
	# Evaluación
	$RESULTADOS $CARPETA_RGB $CARPETA_RESULTADOS/$NOMBRE_REALES $CARPETA_RESULTADOS/$SUBCARPETA/$PREFIJO1\_$PREFIJO2\_$NOMBRE_RESULTADOS $CARPETA_RESULTADOS/$SUBCARPETA/R\_$PREFIJO1\_$PREFIJO2\_$NOMBRE_RESULTADOS.txt
	
}

# Prefijo de los nombres de archivos creados
PREFIJO1=DF


####################################################################################
#			PRUEBAS

# ei escala_inicial
# sf scaleFactor
# mn minNeighbors
# bl blurear
# cc direccion_a_cascada
# ff filtrado
#  filtro_enfoque
#  filtro_repujado
#  filtro_enfoque_y_repujado
#  filtro_repujado_y_enfoque
# xx otros
#  convertir_a_gris
#  ecualizar_histograma
#  usar_profundidad_altura
# zz combinaciones arbitrarias 


####################################################################################
#			zz - combinaciones arbitrarias
PREFIJO2=zz
source detectorfinal_zz2.sh



#exit