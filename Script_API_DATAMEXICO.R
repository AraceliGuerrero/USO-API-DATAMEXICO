 # Laboratorio 32 - Uso de la API de DATAM�XICO.

 # Hecho para pr�ctica de laboratorio por Araceli Guerrero Herrera (ZuRy) :3

 # Paso 1. Instalar la paqueter�a de jsonlite.
 install.packages("jsonlite")

 # Paso 2. Ejecutar la librer�a de jsonlite.
 library(jsonlite)
 
 # Paso 3. Ubicar el archivo de "records" descargado de DATAM�XICO.
 file.choose()

 # Paso 4. Copiar la ubicaci�n del archivo que aparece en la consola y pegarla en el siguiente c�digo para visualizarlos en el entorno de variables.
 datos_api2 <- fromJSON("C:\\Users\\Araceli Guerrero\\Documents\\Laboratorios de R\\LAB32\\Municipality-Year-records.json")

 # Paso 5. Visualizar la clase de los datos.
 class(datos_api2)
 
 # Paso 6. Visualizar los nombres de la lista.
 names(datos_api2)

 # Paso 7. Abrir los datos para verificar su estructura de lista.
 View(datos_api2[["data"]])
 
 # Paso 8. Transformar la lista en un dataframe.
 final_API <- as.data.frame((datos_api2[["data"]]))
 
 # Paso 9.Visualizar de nuevo la clase de los datos.
 class(final_API)
 
 # Paso 10. Exportar dataframe en formato .cvs.
 write.csv(final_API, file = "final_API.CSV")
 