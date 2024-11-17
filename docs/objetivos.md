# Diseño

## Preguntas

### Pilotos con más carreras

- Dimensiones:
    - Piloto
    - Carrera
- Hechos:
    - Resultado

### Pilotos con más carreras ganadas en un período de tiempo

- Dimensiones:
    - Piloto
    - Fecha
    - Carrera
- Hechos:
    - Resultados de Conductores

### Pilotos con más paradas en un período de tiempo

- Dimensiones:
    - Piloto
    - Fecha
- Hechos:
    - Parada

### Comparación de paradas vs carreras ganadas

- Dimensiones:
    - Piloto
    - Constructores
- Hechos
    - Resultados de Constructores
    - Resultados de Conductores
    - Paradas

### Resultados finales de campeonatos

- Dimensiones
    - Temporada
    - Carrera
- Hechos:
    - Resultados de Constructores
    - Resultados de Conductores

### Resultados de constructores

- Dimensiones:
    - Constructor
    - Fecha
    - Carrera
- Hechos:
    - Resultados de Constructores

### Si fuera el director de equipo y debe planificar las estrategias de parada, ¿cuál sería la mejor estrategia para cada circuito?

- Dimensiones:
    - Carrera
    - Circuito
- Hechos:
    - Parada
    - Resultados de Constructores / Conductores ?

### Análisis que permita decidir cuestiones del estilo "Aquellos pilotos que siempre ganaron en Canadá, han terminado ganando el campeonato mundial", o más complejo "Aquellos pilotos que han ganado en Canadá, San Marino y Nürburgring, pero no en Hockenheim, han ganado el campeonato mundial"

- Dimensiones:
    - Piloto
    - Carrera
    - Temporada
    - Circuito
- Hechos:
    - Resultados de Conductores

### Los pilotos con mejor tiempo, ¿terminaron ganando la carrera? ¿terminan en el top 3?

- Dimensiones
    - Piloto
    - Carrera
- Hechos
    - Resultados

### Dividiendo las vueltas de una carrera en tercios, ¿en que tercio se da la mayoría de los récords de vuelta?

- Dimensiones
    - Carrera
- Hechos
    - Resultados de Conductores

### Dentro de los pilotos que no clasificaron en las primeras 3 posiciones y terminaron la carrera en las primeras 3 posiciones, ¿en qué posición de récord de vuelta estuvo?

- Dimensiones
    - Piloto
    - Carrera
- Hechos
    - Clasificatorias
    - Resultados

### Si fuera director de equipo, ¿de qué nacionalidad buscaría sus pilotos para la próxima temporada?

- Dimensiones
    - Piloto
    - Nacionalidad
- Hechos
    - Resultados de Conductores

### Alguno más que les resulte interesante

## Tablas

### Dimensiones

- Piloto
    - driverId
    - forname
    - surname
    - nationality
- Fecha
    - isoCode
    - year
    - month
    - day
- Carrera
    - raceId
    - date
    - year
    - name
    - circuitId
- Constructores
    - constructorId
    - name
    - nationality
- Temporada
    - year
- Circuito
    - circuitId
    - name
    - country

### Hechos

- Parada
    - raceId
    - driverId
    - time
    - lap
    - milliseconds
- Resultados de Conductores
    - resultId
    - raceId
    - driverId
    - points
    - position
    - milliseconds
    - laps
    - fastestLap
- Resultados de Constructores
    - constructorResultsId
    - raceId
    - constructorId
    - points
- Clasificatorias
    - qualifyId
    - raceId
    - driverId
    - position
