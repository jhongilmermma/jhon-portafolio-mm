def secante(f, x0, x1, tol=1e-6, max_iter=100):
    print("\n──────── MÉTODO DE LA SECANTE ────────")
    print(f"{'Iter':<6} {'x_n-1':<12} {'x_n':<12} {'x_n+1':<12} {'f(x_n+1)':<15} {'Error':<12}")
    print("─" * 70)

    for i in range(1, max_iter + 1):
        fx0, fx1 = f(x0), f(x1)
        if abs(fx1 - fx0) < 1e-12:
            print("Error: división por cero.")
            return None
        x2 = x1 - fx1 * (x1 - x0) / (fx1 - fx0)
        fx2 = f(x2)
        error = abs(x2 - x1)
        print(f"{i:<6} {x0:<12.6f} {x1:<12.6f} {x2:<12.6f} {fx2:<15.6e} {error:<12.6e}")
        if abs(fx2) < tol or error < tol:
            print(f"\n✔ Convergió en {i} iteraciones → Raíz ≈ {x2:.8f}")
            return x2
        x0, x1 = x1, x2
    print("\n✘ No convergió.")
    return x2

f = lambda x: x**3 - 5*x + 3
secante(f, 0, 1)