# Milestones
## Milestone 0: Modelado principal del problema
**Objetivo**

Establecer un vocabulario común (lenguaje ubicuo) mediante Domain-Driven Design (DDD) que traduzca el problema del jugador a una representación formal en código, sirviendo como infraestructura indispensable para que cualquier desarrollador pueda implementar la lógica de cálculo en los siguientes hitos.


**Qué se entrega (PMV Interno)**

* Entidades y Objetos Valor: Clases base del dominio modeladas a partir de los conceptos de [HU001] (Clase, Árbol/Rama de talentos, Nodo/Habilidad y Restricciones de dependencia).
* Cargador e ingesta de datos: Módulo responsable de leer y transformar los datos estructurados de un archivo en formato JSON en las estructuras del dominio, garantizando la integridad de tipos.
* Alcance delimitado: El código todavía no ejecuta optimizaciones, cálculos de rutas ni lógica de negocio; su función se limita a proveer la estructura tipada y validada necesaria para el desarrollo posterior.


**Criterio de validez**

El hito se considera válido porque:
* El paquete se instala en el entorno de desarrollo sin dependencias de infraestructura externa.
* Todo concepto modelado en el código tiene trazabilidad directa y justificada con [HU001].
* Se verifica que la ingesta genera las instancias del dominio sin errores de tipo, campos vacíos ni inconsistencias en los prerrequisitos entre nodos.

##

## Milestone 1: Implementación de primera lógica
**Objetivo**

Demostrar que el modelo de dominio construido en el hito anterior permite ejecutar y validar de principio a fin la primera lógica de negocio del sistema, comprobando de forma automatizada las restricciones de viabilidad de una selección de talentos según los requisitos de [HU002].


**Qué se entrega**

* Lógica de negocio verificable: Módulo que implementa la lógica mínima necesaria para evaluar un conjunto de talentos asignados frente a las reglas del juego:
  - Validación del umbral de puntos acumulados por rama.
  - Validación de dependencias de habilidades predecesoras.
  - Identificación de los nodos que quedan legalmente elegibles para el siguiente paso.
* Batería de pruebas automatizadas: Suite de tests unitarios que comprueban de forma determinista el comportamiento de la lógica sobre casos límite (asignaciones legales, intentos de saltar filas sin puntos suficientes y rutas que omiten talentos requeridos).


**Criterio de validez**

El hito se considera válido porque:
* Resuelve de extremo a extremo el flujo funcional asociado a [HU002] utilizando exclusivamente las entidades del dominio creadas en el Milestone 0.
* Todas las pruebas automatizadas se ejecutan de manera satisfactoria sin dependencias de red ni servicios externos, validando la lógica contra datos estructurados de prueba.
