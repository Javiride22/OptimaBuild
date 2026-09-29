# Planificación y User-Journey
## Descripción de usuarios
David es un universitario que juega habitualmente al World of Warcraft Classic en su ordenador de casa unas 10h semanales aprovechando el tiempo libre que tiene, ya ha alcanzado nivel 30 con la clase de mago y quiere saber si las habilidades que ha escogido le sirven para no atascarse en la progresión o tener que gastar la moneda del juego para reiniciar talentos.

Alejandro es un estudiante y jugador novato que comienza por primera vez una clase en World of Warcraft Classic. Al llegar al nivel 10 y desbloquear su primer punto de talento, se encuentra abrumado por la cantidad de opciones repartidas en 3 árboles y filas jerárquicas. Desconoce las sinergias del juego y necesita una guía clara nivel a nivel para no cometer errores tempranos que le obliguen a abandonar el personaje.

## User-journey
David se conecta a jugar con su mago nivel 30, lleva 21 puntos ya asignados y no sabe si lo que ha elegido le permitirá desempeñar su rol correctamente o si ya no puede hacer nada para conseguirlo, introduce en la herramienta su clase, su nivel y los talentos que lleva invertidos, la aplicación analiza la estructura y le confirma que su combinación es legal y coherente con las dependencias del árbol, le indica cuáles son las habilidades inmediatamente disponibles para los próximos niveles, David cierra la aplicación y continúa su partida con seguridad.

Alejandro se conecta a jugar con su clase a nivel 10, no sabe que escoger para no estancarse en un futuro, usa la aplicación e introduce su nivel, su clase y su rol objetivo (daño, tanque, healer, support, ...), la herramienta evalua las dependencias y requisitos con los datos que obtiene del JSON del juego, obtiene el resultado más viable para el objetivo propuesto y los pasos a seguir, Alejandro aplica los puntos según se lo indica y consigue jugar con la tranquilidad de no tener problemas con el avance del juego.

## Milestones
### Milestone 0: Modelado principal del problema
**Objetivo**

Establecer un vocabulario común (lenguaje ubicuo) mediante Domain-Driven Design (DDD) que traduzca el problema del jugador a una representación formal en código, sirviendo como infraestructura indispensable para que cualquier desarrollador pueda implementar la lógica de cálculo en los siguientes hitos.


**Qué se entrega (PMV Interno)**

* Entidades y Objetos Valor: Clases base del dominio modeladas a partir de los conceptos de [HU001] (Clase, Árbol/Rama de talentos, Nodo/Habilidad y Restricciones de dependencia).
* Cargador e ingesta de datos: Módulo responsable de leer y transformar los datos estructurados de un archivo en formato JSON en las estructuras del dominio, garantizando la integridad de tipos.
* Documentación del diseño: Documento en docs/ que justifica el modelo de dominio elegido, la separación entre entidades y objetos valor, y cómo cada concepto emana estrictamente del problema expresado en [HU001].
* Alcance delimitado: El código todavía no ejecuta optimizaciones, cálculos de rutas ni lógica de negocio; su función se limita a proveer la estructura tipada y validada necesaria para el desarrollo posterior.


**Criterio de validez**

El hito se considera válido porque:
* El paquete se instala en el entorno de desarrollo sin dependencias de infraestructura externa.
* Todo concepto modelado en el código tiene trazabilidad directa y justificada con [HU001].
* Se verifica que la ingesta genera las instancias del dominio sin errores de tipo, campos vacíos ni inconsistencias en los prerrequisitos entre nodos.

##

### Milestone 1: Implementación de primera lógica
**Objetivo**

Demostrar que el modelo de dominio construido en el hito anterior permite ejecutar y validar de principio a fin la primera lógica de negocio del sistema, comprobando de forma automatizada las restricciones de viabilidad de una selección de talentos según los requisitos de [HU001].


**Qué se entrega**

* Lógica de negocio verificable: Módulo que implementa la lógica mínima necesaria para evaluar un conjunto de talentos asignados frente a las reglas del juego:
  - Validación del umbral de puntos acumulados por rama.
  - Validación de dependencias de habilidades predecesoras.
  - Identificación de los nodos que quedan legalmente elegibles para el siguiente paso.
* Batería de pruebas automatizadas: Suite de tests unitarios que comprueban de forma determinista el comportamiento de la lógica sobre casos límite (asignaciones legales, intentos de saltar filas sin puntos suficientes y rutas que omiten talentos requeridos).
* Documentación técnica: Justificación del caso de uso implementado, las aserciones probadas y las instrucciones para ejecutar los tests en local.


**Criterio de validez**

El hito se considera válido porque:
* Resuelve de extremo a extremo el flujo funcional asociado a [HU001] utilizando exclusivamente las entidades del dominio creadas en el Milestone 0.
* Todas las pruebas automatizadas se ejecutan de manera satisfactoria sin dependencias de red ni servicios externos, validando la lógica contra datos estructurados de prueba.

