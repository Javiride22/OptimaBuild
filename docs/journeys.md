# User-journeys
## Jornada 1: Alejandro quiere planificar sus habilidades desde el principio
* **Usuario:** Alejandro, estudiante y jugador novato.
* **Frecuencia:** Ocasional (al alcanzar el nivel 10 o al planificar un nuevo personaje).
* **Dispositivo:** Teléfono móvil junto a su pantalla de juego.
* **Contexto:** Acaba de llegar al nivel 10 con su personaje y desbloquea el árbol de talentos. Desconoce las sinergias y busca una secuencia clara nivel a nivel para no cometer fallos irreversibles.
* **Que hace:**
  1. Accede a OptimaBuild.
  2. Introduce su clase, nivel inicial (10) y la especialización/rol deseado.
  3. La herramienta analiza el catálogo del juego y genera una ruta secuencial ordenada nivel a nivel (del 10 al 60) que garantiza que pueda avanzar en el juego sin llegar a valles de debilidad en ningún momento.
  4. Alejandro consulta el talento asignado para su nivel actual, lo aplica en el juego y guarda la referencia para sus siguientes niveles.

## Jornada 2: David quiere comprobar si su personaje es viable para continuar
* **Usuario:** David, universitario aficionado a World of Warcraft Classic.
* **Frecuencia:** Semanal (cada primera sesión de juego de la semana).
* **Dispositivo:** Navegador web en el ordenador de sobremesa que usa para jugar.
* **Contexto:** Tiene un Mago a nivel 30 con 21 puntos ya invertidos entre varias ramas. Teme haber tomado decisiones que le impidan alcanzar los talentos clave de nivel 40 o que le obliguen a gastar oro del juego en reiniciar talentos.
* **Que hace:**
  1. Accede a OptimaBuild desde su navegador.
  2. Selecciona su clase (Mago) e introduce su nivel actual (30) junto con los talentos que lleva invertidos.
  3. La aplicación valida contra `data/talent-data.json` que la selección cumple los requisitos de 5 puntos acumulados por fila y prerrequisitos de nodos previos.
  4. La herramienta confirma que su combinación es coherente y le muestra qué habilidades tiene legalmente disponibles para seleccionar a continuación.
  5. David cierra la aplicación y reanuda su partida con la certeza de que su progreso es viable.