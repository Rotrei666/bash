#!/bin/bash

echo "===== Bash: Conceptos Clave con Ejemplos Sencillos ====="

#####################################
# 1. TOKENISATION
#####################################
echo -e "\n🔹 1. Tokenisation (Separación de elementos por Bash)"
# Bash separa una línea en comandos y argumentos usando espacios

# Línea original
comando="echo Hola Mundo"
echo "Línea: $comando"

# Se ejecuta: echo -> comando, Hola y Mundo -> argumentos
echo Hola Mundo


#####################################
# 2. COMMAND IDENTIFICATION
#####################################
echo -e "\n🔹 2. Command Identification (Identificar el comando)"

# El primer token es el comando
mi_comando="echo"
$mi_comando "Bash ejecuta el primer token como comando."


#####################################
# 3. WORD SPLITTING
#####################################
echo -e "\n🔹 3. Word Splitting (Separar palabras sin comillas)"

frase="uno dos  tres"
echo "Texto original: $frase"
echo "Palabras separadas:"
for palabra in $frase; do
  echo "  $palabra"
done

# Entre comillas no hay separación
echo -e "\nTexto entre comillas:"
for palabra in "$frase"; do
  echo "  $palabra"
done


#####################################
# 4. GLOBBING
#####################################
echo -e "\n🔹 4. Globbing (Patrones para archivos)"

# Usamos * para buscar archivos
echo "Archivos que terminan en .sh:"
for archivo in *.sh; do
  echo "  $archivo"
done


#####################################
# 5. QUOTING
#####################################
echo -e "\n🔹 5. Quoting (Usar comillas para controlar la expansión)"

var="Hola Mundo"

# Sin comillas: se hace word splitting
echo Sin comillas:
for palabra in $var; do echo "  $palabra"; done

# Con comillas dobles: se mantiene como una sola palabra, se expande la variable
echo Con comillas dobles:
for palabra in "$var"; do echo "  $palabra"; done

# Con comillas simples: se mantiene todo como texto literal
echo Con comillas simples:
for palabra in '$var'; do echo "  $palabra"; done


#####################################
# 6. QUOTE REMOVAL
#####################################
echo -e "\n🔹 6. Quote Removal (Eliminar comillas después de expandir)"

dato="'Texto con comillas simples'"
echo "Original: $dato"
# Quitamos las comillas manualmente
echo "Sin comillas: ${dato:1:-1}"


#####################################
# 7. REDIRECTION
#####################################
echo -e "\n🔹 7. Redirection (Redirigir entrada/salida)"

# Redirigir salida estándar a un archivo
echo "Mensaje 1" > salida.txt
# Agregar salida a ese mismo archivo
echo "Mensaje 2" >> salida.txt

# Redirigir entrada desde un archivo
echo "Contenido de salida.txt:"
cat < salida.txt

# Redirigir errores (stderr)
ls archivo_que_no_existe 2> error.txt
echo "Mensaje de error redirigido a error.txt"


#####################################
# 8. METACARACTERES
#####################################
echo -e "\n🔹 8. Metacaracteres comunes"

echo -e "\n🛠️ Metacaracteres de control:"
echo "  ;    Ejecutar varios comandos: echo uno ; echo dos"
echo "  &&   Ejecutar el segundo solo si el primero funciona: true && echo OK"
echo "  ||   Ejecutar el segundo solo si el primero falla: false || echo Falló"
echo "  ( )  Ejecutar comandos en subshell: (cd /tmp && ls)"
echo "  { }  Agrupar comandos en el shell actual: { echo uno; echo dos; }"
echo "  &    Ejecutar en segundo plano: sleep 5 &"
echo "  #    Comentario: no se ejecuta"

echo -e "\n📤 Metacaracteres de redirección:"
echo "  >     Redirige salida estándar (sobrescribe archivo)"
echo "  >>    Redirige salida estándar (agrega al archivo)"
echo "  <     Redirige entrada desde un archivo"
echo "  2>    Redirige errores (stderr)"
echo "  2>>   Agrega errores al archivo"
echo "  &>    Redirige stdout y stderr juntos"
echo "  <<    Here document"
echo "  <<<   Here string (entrada rápida desde texto)"

echo -e "\n✅ Fin del script educativo."
