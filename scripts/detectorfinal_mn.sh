#!bin/bash

# PRUEBAS VARIANDO MIN NEIGHBORS

# Otros parámetros
DF_DIR_CASCADA=./../clasificadores/visionary.net_pedestrian_cascade_web_LBP.xml
DF_ESCALA_INICIAL=1
DF_CONVERTIR_A_GRIS=true
DF_ECUALIZAR_HISTOGRAMA=true
DF_SCALEFACTOR=1.1
#DF_MINNEIGHBORS=4
DF_USAR_PROFUNDIDAD=false

####################################################################################
#			PRUEBA 01
NOMBRE_RESULTADOS=01

DF_MINNEIGHBORS=1

funcion_detector_final


####################################################################################
#			PRUEBA 02
NOMBRE_RESULTADOS=02

DF_MINNEIGHBORS=2

funcion_detector_final


####################################################################################
#			PRUEBA 03
NOMBRE_RESULTADOS=03

DF_MINNEIGHBORS=3

funcion_detector_final


####################################################################################
#			PRUEBA 04
NOMBRE_RESULTADOS=02

DF_MINNEIGHBORS=4

funcion_detector_final


####################################################################################
#			PRUEBA 05
NOMBRE_RESULTADOS=05

DF_MINNEIGHBORS=5

funcion_detector_final


####################################################################################
#			PRUEBA 06
NOMBRE_RESULTADOS=06

DF_MINNEIGHBORS=6

funcion_detector_final


####################################################################################
#			PRUEBA 07
NOMBRE_RESULTADOS=06

DF_MINNEIGHBORS=7

funcion_detector_final


####################################################################################
#			PRUEBA 08
NOMBRE_RESULTADOS=06

DF_MINNEIGHBORS=8

funcion_detector_final