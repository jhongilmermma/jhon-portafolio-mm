# Programa simple para identificar coeficientes, variables y operaciones

import re

# Pedir la expresión al usuario
expresion = input("Escribe una expresión (por ejemplo: 3x + 5y - 2z): ")

# Quitar espacios
expresion = expresion.replace(" ", "")

# Buscar los términos (ejemplo: 3x, -2y, +5z)
terminos = re.findall(r'[+-]?\d*[a-zA-Z]?', expresion)
terminos = [t for t in terminos if t]  # eliminar vacíos

coeficientes = []
variables = []
operaciones = []

for t in terminos:
    if t[0] in "+-":
        operaciones.append(t[0])
        t = t[1:]  # quitar el signo para analizar el número
    else:
        operaciones.append("+")  # por defecto es positivo

    # Buscar coeficiente
    numero = re.findall(r'\d+', t)
    if numero:
        coeficientes.append(int(numero[0]))
    else:
        coeficientes.append(1)

    # Buscar variable
    letra = re.findall(r'[a-zA-Z]', t)
    if letra:
        variables.append(letra[0])
    else:
        variables.append("(sin variable)")

# Mostrar resultados
print("\n--- RESULTADOS ---")
print("Coeficientes:", coeficientes)
print("Variables:", variables)
print("Operaciones:", operaciones)
