# OptimaBuild
## Cliente
Un jugador habitual de World Of Warcraft Clásico con tiempo o conocimientos limitados

![tarjeta_de_rol](./docs/rolCliente.jpg)

## Descripción del problema
Muchos jugadores de WoW Classic inician una partida con una clase en mente, pero cuando llega el momento de subir de nivel y elegir una habilidad de las que hay, la cosa se complica: que si esta es buena, que si la otra es mejor pero en casos concretos, que si esta me da beneficios instantáneos... , un comedero de cabeza en general.

En este juego, cada una de las 9 clases a elegir tiene un árbol de habilidades dividido en 3 ramas dependiendo del rol que tomes de esa clase. Los jugadores reciben 1 punto de habilidad desde el nivel 10 hasta el 60, otorgando un total finito de 51 puntos, además de que el árbol impone restricciones como haber invertido 5 puntos en una rama para desbloquear la siguiente fila o haber aprendido previamente una habilidad concreta. Esto hace que la mayoría de jugadores se vean abrumados por la cantidad de talentos y reglas, y se vean obligados a escoger sin saber muy bien que hacen, llegando a veces a no poder seguir avanzando en el juego por haber elegido mal las habilidades y encontrarse con un bloqueo de progresión, optando al final por dejar de jugarlo o reiniciar otra partida y haber perdido todo ese tiempo.

Teniendo en cuenta que un jugador promedio dedica entre 7 y 10 horas semanales y que el bloqueo se suele detectar entre las 20 y 30 primeras horas, el problema representa la pérdida directa de unas 3 semanas completas de su tiempo. 

Para poder evaluar las combinaciones y calcular la ruta óptima sin que el usuario introduzca listas de habilidades o datos manualmente, la información sobre la estructura del árbol así como el contenido, las dependencias y las relaciones de los nodos se obtienen de volcados de datos en formato JSON extraídos de la versión 1.12 oficial del juego que se encuentran en repositorios públicos de GitHub.

## Lógica de negocio
El problema radica en la necesidad de determinar con antelación la ruta de puntos de habilidades óptima para una clase y un subrol en concreto, calculando y evaluando secuencias de progresión que maximicen el rendimiento del personaje según el presupuesto de niveles disponible sin atravesar valles críticos de debilidad que desemboquen en un bloqueo para el jugador.

## Documentación adicional
La configuración establecida para este objetivo se encuentra en este [enlace](./docs/configuracion.md)