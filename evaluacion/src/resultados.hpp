#ifndef DP_RESULTADOS_H
#define DP_RESULTADOS_H

#include <iostream>
#include <string>
#include <vector>
//#include <iostream>
#include <opencv2/core/core.hpp>


// Estructura de resultados. Versión 1.0
// Contiene información referida a una detección de persona en una imagen
// determinada. Usar un objeto por cada detección. Se supone que el detector
// entrega un rectángulo que contiene a la persona detectada.
struct struct_resultados
{
public:
	std::string set = "set_sin_nombre";		// Set al que corresponde la imagen
	unsigned int img = 1;		// Número de imagen
	unsigned int prof = 1;		// Profundidad [ 16 / 8 ]
	unsigned int comp = 0;		// Si está la persona completa o no [ 1 / 0 ]
	float tiempo = 0;			// Tiempo que tardó en detectarse, en milisegundos
	unsigned int arr_izq_x = 0;	// Coordenadas de la esquina superior izquierda [px]
	unsigned int arr_izq_y = 0;	//
	unsigned int arr_der_x = 0;	// Coordenadas de la esquina superior derecha
	unsigned int arr_der_y = 0;	//
	unsigned int aba_izq_x = 0;	// Coordenadas de la esquina inferior izquierda
	unsigned int aba_izq_y = 0;	//
	unsigned int aba_der_x = 0;	// Coordenadas de la esquina inferior derecha
	unsigned int aba_der_y = 0;	//

	struct_resultados() {};

	// Calcula centros y medidas del elemento
	void calcular();

	//friend bool operator==(const struct_resultados& a, const struct_resultados& b);

	// Se calculan con el método calcular
	float centro_x = 0;				//
	float centro_y = 0;
	float ancho = 0;
	float alto = 0;

//private:

};

// Escena: cada frame, con sus personas reales y estimadas.
class Frame
{
public:
	unsigned int id = 0;

	std::vector<struct_resultados> reales;
	std::vector<struct_resultados> estimados;

	unsigned int falsos_positivos;
	unsigned int falsos_negativos;
	unsigned int verdaderos_positivos;

private:
};

// Función de escritura struct_resultados
std::ostream& operator<<( std::ostream& os, const struct_resultados& res );


// Función para convertir cv::Rect a struct_resultados
void rect_a_struct_resultados(const cv::Rect& rect, struct_resultados& res);

// Función para convertir struct_resultados a cv::Rect
void struct_resultados_a_rect(const struct_resultados& res, cv::Rect& rect);

// Comparación
bool operator==(const struct_resultados& a, const struct_resultados& b);

#endif // DP_RESULTADOS_H
