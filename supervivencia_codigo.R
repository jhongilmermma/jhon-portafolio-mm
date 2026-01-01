# ==========================================
# DEFINICIÓN DE FUNCIONES Y ESTADO INICIAL
# ==========================================

# Función para mostrar el estado del juego [cite: 28]
mostrar_estado <- function(iter, inventario, chupetines, titulo, descripcion) {
  cat("\n==========================================\n")
  cat(" Iteración", iter, ":", titulo, "\n")
  cat("------------------------------------------\n")
  cat("", descripcion, "\n")
  cat("------------------------------------------\n")
  
  for (i in 1:9) {
    # Formatear inventario para que no imprima "character(0)"
    inv <- if (length(inventario[[i]]) == 0) "-" else paste(inventario[[i]], collapse = "")
    # Imprimir fila por jugador
    cat(sprintf("%-3s  %-14s | %d\n", personas[i], inv, chupetines[i]))
  }
  
  cat("------------------------------------------\n")
  cat(" Total de Chupetines:", sum(chupetines), "\n")
  cat("==========================================\n")
}

# Inicialización de jugadores y recursos [cite: 19, 20]
personas <- paste("P", 1:9, sep = "")

# Reconstrucción del inventario inicial basado en el PDF [cite: 20-24]
inventario <- list(
  c("A","A"),       # P1
  c("B","B"),       # P2
  c("C","C","C"),   # P3
  c("A"),           # P4
  c("B","B"),       # P5
  c("C","C"),       # P6
  c("A","A"),       # P7 (Deducido de línea 57)
  c("B","B"),       # P8 (Deducido de línea 98)
  c("C","C")        # P9 (Deducido de línea 61)
)

chupetines <- rep(0, 9) # Contador inicial a ceros [cite: 25]
iter <- 0

# ==========================================
# EJECUCIÓN DE ITERACIONES
# ==========================================

# --- ITERACIÓN 1 ---
# Aplicando Regla 2: Se canjean caramelos iniciales [cite: 48, 49]
iter <- 1
# Actualización manual basada en la salida del PDF (líneas 50-61):
chupetines[1] <- 1  # P1 obtiene chupetín
chupetines[2] <- 1  # P2 obtiene chupetín
inventario[[1]] <- c("A")           # P1 le queda una A
inventario[[2]] <- c("B")           # P2 le queda una B
inventario[[3]] <- c("C", "A")      # P3 queda con CA
inventario[[4]] <- c("A")
inventario[[5]] <- c("B")
inventario[[6]] <- c("C")
# P7, P8, P9 permanecen igual en esta etapa
mostrar_estado(iter, inventario, chupetines, 
               "Aplicando Regla 2 (+2)", 
               "Se usan 2A, 2B, 2C para formar 2 chupetines y se entrega 1 caramelo extra.")

# --- ITERACIÓN 2 ---
iter <- 2
chupetines[3:4] <- chupetines[3:4] + 1  # [cite: 76]
# El PDF tiene un error de OCR en el bucle ("inventario [[1]]"), corregido por lógica a "[[i]]":
for (i in 1:6) {
  if(length(inventario[[i]]) > 0) {
    inventario[[i]] <- inventario[[i]][-1] # Elimina el primer elemento 
  }
}
inventario[[5]] <- c(inventario[[5]], "B") # [cite: 78]

mostrar_estado(iter, inventario, chupetines,
               "Aplicando Regla 2 nuevamente (+2)",
               "Se repite para entregar 2 chupetines más al grupo.")

# --- ITERACIÓN 3 ---
iter <- 3
chupetines[5:6] <- chupetines[5:6] + 1 # [cite: 105]
for (i in 1:6) inventario[[i]] <- character(0) # Limpia inventario P1-P6 [cite: 106]
inventario[[6]] <- c("C") # [cite: 107]

mostrar_estado(iter, inventario, chupetines,
               "Tercera aplicación de Regla 2 (+2)",
               "El equipo ya acumuló 6 chupetines en total.")

# --- ITERACIÓN 4 ---
iter <- 4
chupetines[7] <- chupetines[7] + 1 # [cite: 141]
# Limpieza de inventarios específicos [cite: 142]
inventario[[3]] <- character(0)
inventario[[5]] <- character(0)
inventario[[6]] <- character(0)

mostrar_estado(iter, inventario, chupetines,
               "Aplicando Regla 1 (+1)",
               "Se forma un chupetín usando un A, B y C distintos.")

# --- ITERACIÓN 5 ---
iter <- 5
chupetines[1] <- chupetines[1] - 1 # Se devuelve un chupetín 
inventario[[1]] <- c("A", "B", "C") # Se reciben 3 caramelos [cite: 179]

mostrar_estado(iter, inventario, chupetines,
               "Aplicando Regla 3",
               "Un jugador devuelve 1 chupetín para generar 3 caramelos nuevos.")

# --- ITERACIÓN 6 ---
iter <- 6
chupetines[8] <- chupetines[8] + 1 # [cite: 213]
inventario[[1]] <- character(0) # Se consumen los caramelos de P1 [cite: 214]

mostrar_estado(iter, inventario, chupetines,
               "Nueva aplicación de Regla 1 (+1)",
               "Se crea un nuevo chupetín para el jugador 8.")

# --- ITERACIÓN 7 ---
iter <- 7
chupetines[9] <- chupetines[9] + 1 # [cite: 250]

mostrar_estado(iter, inventario, chupetines,
               "Última aplicación de Regla 1 (+1)",
               "Todos los jugadores (excepto el sacrificado P1) tienen su chupetín.")

# ==========================================
# RESULTADO FINAL
# ==========================================
cat("\n RESULTADO FINAL:\n")
cat("Todos los jugadores lograron el objetivo en", iter, "iteraciones.\n")
cat("Total de Chupetines:", sum(chupetines), "\n")