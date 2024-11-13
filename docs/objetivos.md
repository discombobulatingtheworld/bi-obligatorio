# Diseño

## Pilotos con más carreras

- Dimensiones:
    - Piloto
- Hechos:
    - Carrera

## Pilotos con más carreras ganadas en un período de tiempo

- Dimensiones:
    - Piloto
    - Fecha
    - Carrera
- Hechos:
    - Standings de Conductores

## Pilotos con más paradas en un período de tiempo

- Dimensiones:
    - Piloto
    - Fecha
- Hechos:
    - Parada

## Comparación de paradas vs carreras ganadas

- Dimensiones:
    - Piloto
    - Constructores
- Hechos
    - Standings de Conductores
    - Paradas

## Resultados finales de campeonatos

- Dimensiones
    - Temporada
    - Carrera
- Hechos:
    - Standings de Constructores
    - Standings de Conductores

## Resultados de constructores

- Dimensiones:
    - Constructor
    - Fecha
    - Carrera ?
- Hechos:
    - Standings de Constructores

## Si fuera el director de equipo y debe planificar las estrategias de parada, ¿cuál sería la mejor estrategia para cada circuito?

- Dimensiones:
    - Carrera
    - Circuito
- Hechos:
    - Parada
    - Resultados ?

## Análisis que permita decidir cuestiones del estilo "Aquellos pilotos que siempre ganaron en Canadá, han terminado ganando el campeonato mundial", o más complejo "Aquellos pilotos que han ganado en Canadá, San Marino y Nürburgring, pero no en Hockenheim, han ganado el campeonato mundial"

- Dimensiones:
    - Piloto
    - Carrera
    - Temporada
    - Circuito
- Hechos:
    - Standings de Conductores

## Los pilotos con mejor tiempo, ¿terminaron ganando la carrera? ¿terminan en el top 3?

- Dimensiones
    - Piloto
    - Carrera
- Hechos
    - Resultados
    - Standing de Conductores

## Dividiendo las vueltas de una carrera en tercios, ¿en que tercio se da la mayoría de los récords de vuelta?

- Dimensiones
    - Carrera
- Hechos
    - Clasificatorias

## Dentro de los pilotos que no clasificaron en las primeras 3 posiciones y terminaron la carrera en las primeras 3 posiciones, ¿en qué posición de récord de vuelta estuvo?

- Dimensiones
    - Piloto
    - Carrera
- Hechos
    - Clasificatorias
    - Resultados

## Si fuera director de equipo, ¿de qué nacionalidad buscaría sus pilotos para la próxima temporada?

- Dimensiones
    - Piloto
    - Nacionalidad
- Hechos
    - Standings de Conductores

## Alguno más que les resulte interesante

- 