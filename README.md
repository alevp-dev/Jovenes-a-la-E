# Proyecto Jóvenes a la E - Gestión de Participación con Enfoque de Género

Este proyecto tiene como objetivo diseñar y poblar una base de datos que permita gestionar la información de los beneficiarios del programa **"Jóvenes a la E"**, con enfoque de género, desde una perspectiva territorial y académica.

---

## Contenido

- Modelo entidad-relación (ER) y modelo relacional
- Scripts de creación y poblamiento de la base de datos
- Inserción de datos desde Excel con Python
- Análisis de calidad de los datos
- Visualización Power BI

---

## Estructura de la base de datos

### Tablas principales:
- **localidad**: almacena las localidades de residencia
- **inst_edu_superior**: instituciones de educación superior
- **programa**: programas académicos ofertados
- **estudiante**: beneficiarios del programa
- **convocatoria**: cohortes de asignación por semestre
- **participacion**: relación entre estudiantes, convocatorias y programas

---

## Requisitos

- Python 3.9+
- MySQL Server
- Pandas
- mysql-connector-python
- Jupyter Notebook (opcional)

---

## Scripts disponibles

- `ddl_crear_base_de_datos.ipynb`: crea la estructura de la base de datos
- `dml_insertar_datos.ipynb`: inserta los datos desde Excel
- `dml_consultar_datos.ipynb`: incluye consultas útiles para el análisis

---

## Datos

Fuente: Archivo `je_conteo_20241231.xlsx`, con información de más de 36.000 beneficiarios potenciales, incluyendo:
- Edad, género, grupo étnico
- SISBEN, discapacidad, puntaje Saber 11
- Localidad, zona y sector del colegio
- Institución y programa académico

---

## Instrucciones de uso

1. Ejecutar el script de creación (`ddl_crear_base_de_datos.ipynb`)
2. Limpiar y cargar el archivo Excel (`je_conteo_20241231.xlsx`)
3. Ejecutar el script Python o notebook para poblar la base
4. Realizar análisis o visualizaciones según necesidad

---

## Autoría

Proyecto académico con enfoque en base de datos, participación social e inclusión con perspectiva de género.
Alejandra Villa
https://www.linkedin.com/in/alejandra-villa-posada-b4b698244/

Vanesa Paternina
https://www.linkedin.com/in/vanesa-paternina-zabala

Yuliana Gomez
https://www.linkedin.com/in/yulianagomez18

Valentina Suárez 
https://www.linkedin.com/in/valentina-suarez-bejarano-a2609b1a2/

---
