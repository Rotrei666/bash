#!/bin/bash

echo "===== Cómo Bash Procesa una Línea de Comando ====="

#####################################
# 1. LECTURA DE LA LÍNEA
#####################################
echo -e "\n🔹 1. Lectura de la línea"
# Bash lee la línea ingresada, desde terminal o script.
echo "Ejemplo: echo Hola Mundo"


#####################################
# 2. TOKENISATION (Separación en tokens)
#####################################
echo -e "\n🔹 2. Tokenisation (Separación en tokens)"
comando="echo Hola Mundo"
echo "Línea original: $comando"
echo Hola Mundo


#####################################
# 3. EXPANSIONES (en orden)
#####################################

## a) Brace Expansion
echo -e "\n📦 a) Brace Expansion (Expansión de llaves)"
echo archivo_{1,2,3}.txt

## b) Tilde Expansion
echo -e "\n🏠 b) Tilde Expansion (Expansión del ~)"
echo "Tu home es: ~ (antes de expansión)"
echo "Después de expansión: $HOME"

## c) Variable Expansion
echo -e "\n📌 c) Variable Expansion (Expansión de variables)"
nombre="Rodrigo"
echo "Hola, $nombre"

## d) Arithmetic Expansion
echo -e "\n🧮 d) Arithmetic Expansion (Expansión aritmética)"
echo "2 + 3 = $((2 + 3))"

## e) Command Substitution
echo -e "\n🔁 e) Command Substitution (Sustitución de comando)"
echo "La fecha de hoy es: $(date +%Y-%m-%d)"

## f) Positional Parameters
echo -e "\n🧷 f) Parámetros posicionales (ej: \$1, \$@)"
echo "Este script se llama: $0"

#####################################
# 4. WORD SPLITTING
#####################################
echo -e "\n🔹 4. Word Splitting (Separación en palabras por espacios)"
frase="uno  dos   tres"
for palabra in $frase; do echo "  $palabra"; done

#####################################
# 5. GLOBBING (expansión de comodines)
#####################################
echo -e "\n🔹 5. Globbing (Expansión de comodines)"
echo "Archivos .sh:"
for archivo in *.sh; do
  echo "  $archivo"
done

#####################################
# 6. QUOTE REMOVAL
#####################################
echo -e "\n🔹 6. Quote Removal (Remoción de comillas)"
mensaje="'Hola Mundo'"
echo "Original: $mensaje"
echo "Sin comillas: ${mensaje:1:-1}"

#####################################
# 7. REDIRECCIONES
#####################################
echo -e "\n🔹 7. Redirecciones"
echo "Mensaje 1" > salida.txt
echo "Mensaje 2" >> salida.txt
echo "Contenido de salida.txt:"
cat < salida.txt
ls archivo_inexistente 2> errores.txt
echo "Error redirigido a errores.txt"

#####################################
# 8. EJECUCIÓN DEL COMANDO
#####################################
echo -e "\n🔹 8. Ejecución del comando"
echo "Este mensaje se está ejecutando como comando."

#####################################
# 9. ESTADO DE SALIDA
#####################################
echo -e "\n🔹 9. Estado de salida (\$?)"
false
echo "Resultado de 'false': $?"

true
echo "Resultado de 'true': $?"

#####################################
# 10. ORDEN DE EJECUCIÓN COMPLETO
#####################################
echo -e "\n🔹 10. Orden combinado: variable + aritmética + comando"
test="John"
echo "$test has $((1 + $(echo 2))) apples"  # → John has 3 apples

echo -e "\n✅ Fin del script educativo."
