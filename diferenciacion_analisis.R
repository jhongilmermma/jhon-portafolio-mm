# ==========================================================
# TRABAJO 11: DIFERENCIACIÓN NUMÉRICA
# Estudiante: Jhon Gilmer Mamani Apaza
# ==========================================================

# --- PROBLEMA 1: ANÁLISIS DE CRECIMIENTO DE STARTUP ---
mes <- 1:7
usuarios <- c(10, 15, 23, 34, 48, 65, 85) # Datos en miles
h <- 1

# Cálculo de Derivadas (Velocidad de Crecimiento)
# 1. Diferencia hacia adelante (Mes 1)
tasa_mes1 <- (usuarios[2] - usuarios[1]) / h

# 2. Diferencia Centrada (Mes 4)
tasa_mes4 <- (usuarios[5] - usuarios[3]) / (2*h)

# 3. Diferencia hacia atrás (Mes 7)
tasa_mes7 <- (usuarios[7] - usuarios[6]) / h

cat("Tasa Mes 1:", tasa_mes1, "k/mes\n")
cat("Tasa Mes 4:", tasa_mes4, "k/mes\n")
cat("Tasa Mes 7:", tasa_mes7, "k/mes\n")

# Cálculo de Segunda Derivada (Aceleración)
# f''(x) = (f(x+h) - 2f(x) + f(x-h)) / h^2
aceleracion <- numeric(length(usuarios))
for (i in 2:(length(usuarios)-1)) {
  aceleracion[i] <- (usuarios[i+1] - 2*usuarios[i] + usuarios[i-1]) / (h^2)
}
cat("Aceleración promedio:", mean(aceleracion[2:6]), "k/mes^2\n")


# --- PROBLEMA 7: NORMALIZACIÓN DE SENSORES ---
# Función Min-Max para ingeniería de características
minmax <- function(x) {
  return ((x - min(x, na.rm=TRUE)) / (max(x, na.rm=TRUE) - min(x, na.rm=TRUE)))
}

# Simulación de datos de sensores
temp <- c(20.1, 20.5, 21.2, 22.5, 24.1, 26.0, 28.2)
vel_temp <- diff(temp) / h 
acc_temp <- diff(vel_temp) / h

# Normalización
vel_norm <- minmax(vel_temp)
print(vel_norm)
