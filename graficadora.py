def leer_ecuacion(texto):
    # Elimina espacios
    texto = texto.replace(" ", "")
    # Extrae m y b (de ecuaciones tipo y=mx+b o y=mx-b)
    patron = r"y=([\-]?\d*\.?\d*)x([+\-]?\d*\.?\d*)?"
    coincidencia = re.match(patron, texto)
    if coincidencia:
        m_str, b_str = coincidencia.groups()
        m = float(m_str) if m_str not in ["", "+", "-"] else (1.0 if m_str == "" or m_str == "+" else -1.0)
        b = float(b_str) if b_str else 0.0
        return m, b
    else:
        raise ValueError("Formato no válido. Usa el formato: y = mx + b")

# --- Entrada de usuario ---
ecuacion1 = input("Ingrese la primera ecuación lineal (ejemplo: y = 2x + 1): ")
ecuacion2 = input("Ingrese la segunda ecuación lineal (ejemplo: y = -0.5x + 3): ")

# --- Conversión a parámetros ---
m1, b1 = leer_ecuacion(ecuacion1)
m2, b2 = leer_ecuacion(ecuacion2)

# --- Cálculo de valores ---
x = np.linspace(-10, 10, 400)
y1 = m1 * x + b1
y2 = m2 * x + b2

# --- Gráfica ---
plt.figure(figsize=(8, 6))
plt.plot(x, y1, color='red', linewidth=2, label=f'{ecuacion1}')
plt.plot(x, y2, color='green', linewidth=2, label=f'{ecuacion2}')
plt.axhline(0, color='black', linewidth=0.8)
plt.axvline(0, color='black', linewidth=0.8)
plt.xlabel('x')
plt.ylabel('y')
plt.title('Gráfica de dos ecuaciones lineales')
plt.legend()
plt.grid(True)
plt.show()
