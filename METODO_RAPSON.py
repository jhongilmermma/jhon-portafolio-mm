import math

def f(x, func_str):
    return eval(func_str, {"x": x, "math": math})

def derivada(func_str, x, h=1e-6):
    return (f(x + h, func_str) - f(x - h, func_str)) / (2 * h)

def newton_raphson(func_str, x0, tolerancia, max_iter):
    iteraciones = []
    x1 = None
    for i in range(1, max_iter + 1):
        f_x = f(x0, func_str)
        df_x = derivada(func_str, x0)
        if df_x == 0:
            print("❌ Derivada igual a 0. No se puede continuar.")
            break
        x1 = x0 - f_x / df_x
        error = abs(x1 - x0)
        iteraciones.append((i, x0, f_x, df_x, x1, error))
        if error < tolerancia:
            break
        x0 = x1

    print("\n{:<10} {:<12} {:<12} {:<12} {:<14} {:<12}".format(
        "Iter", "x", "f(x)", "f'(x)", "x siguiente", "Error"))
    for it in iteraciones:
        print("{:<10d} {:<12.6f} {:<12.6f} {:<12.6f} {:<14.6f} {:<12.6f}".format(*it))

    if x1 is not None:
        print(f"\n✅ Raíz aproximada: {x1:.10f}")
    else:
        print("\n❌ No se pudo calcular la raíz.")
    
    input("\nPresione ENTER para salir...")

func_str = input("Ingrese la función en términos de x (ejemplo: x**3 + 2*x - 5): ")
x0 = float(input("Ingrese el valor inicial x0: "))
tolerancia = float(input("Ingrese la tolerancia (ej. 1e-6): "))
max_iter = int(input("Ingrese el número máximo de iteraciones: "))

newton_raphson(func_str, x0, tolerancia, max_iter)

