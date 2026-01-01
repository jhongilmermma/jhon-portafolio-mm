# ==========================================================
# TRABAJO 12: MÉTODOS DE INTERPOLACIÓN
# Autor: Jhon Gilmer Mamani Apaza
# ==========================================================

# --- 1. INTERPOLACIÓN LINEAL ---
# Función general
interp_lineal <- function(x0, y0, x1, y1, x_obj) {
  m <- (y1 - y0) / (x1 - x0)
  y_obj <- y0 + m * (x_obj - x0)
  return(y_obj)
}

# Ejercicio 1: Nivel de Agua
# Datos: (6h, 120L) y (9h, 195L). Objetivo: 7.5h
nivel_agua <- interp_lineal(6, 120, 9, 195, 7.5)
cat("Ejercicio 1 (Agua):", nivel_agua, "Litros\n")

# Ejercicio 2: Temperatura
# Datos: (8h, 10C) y (10h, 16C). Objetivo: 9.25h
temp <- interp_lineal(8, 10, 10, 16, 9.25)
cat("Ejercicio 2 (Temp):", temp, "Grados C\n")


# --- 2. DIFERENCIAS DIVIDIDAS DE NEWTON ---
# Datos del PDF: (1,2), (2,5), (4,17)
x <- c(1, 2, 4)
y <- c(2, 5, 17)

# Cálculo manual de coeficientes (basado en el PDF)
b0 <- y[1]                            # f[1] = 2
b1 <- (y[2] - y[1]) / (x[2] - x[1])   # f[1,2] = 3
# f[2,4] = (17-5)/(4-2) = 6
b2 <- (6 - b1) / (x[3] - x[1])        # f[1,2,4] = (6-3)/3 = 1

cat("\n--- Polinomio de Newton ---\n")
cat("Coeficientes: b0=", b0, ", b1=", b1, ", b2=", b2, "\n")
cat("Polinomio final: P(x) = x^2 + 1\n")

# Verificación en x=3
p_3 <- 3^2 + 1
cat("Evaluación en x=3:", p_3, "\n")