<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Portafolio Futurista - Jhon Gilmer</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      background: radial-gradient(circle at top left, #0f172a, #020617);
    }
    .glow {
      text-shadow: 0 0 10px #0ff, 0 0 20px #0ff;
    }
    .glass {
      backdrop-filter: blur(12px);
      background: rgba(255, 255, 255, 0.08);
      border: 1px solid rgba(255, 255, 255, 0.2);
    }
  </style>
</head>
<body class="text-white flex flex-col items-center min-h-screen px-4">

  <!-- Header -->
  <header class="text-center mt-10 mb-12">
    <h1 class="text-4xl md:text-6xl font-bold glow">🚀 Jhon Gilmer Mamani Apaza</h1>
    <p class="text-cyan-400 mt-2 text-lg">Estadística e Informática | FINESI 2025</p>
  </header>

  <!-- Card principal -->
  <div class="glass p-10 rounded-2xl shadow-xl max-w-4xl w-full">
    <!-- Presentación -->
    <section class="mb-10 text-center">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-3">👨‍💻 Sobre mí</h2>
      <p class="text-slate-300">
        Soy estudiante de Estadística e Informática en la Universidad Nacional del Altiplano. 
        Me apasiona el desarrollo de software, la inteligencia de datos y el diseño de soluciones innovadoras. 
        Este portafolio refleja mi aprendizaje, proyectos y visión futurista.
      </p>
    </section>

    <!-- Habilidades -->
    <section class="mb-10">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-6 text-center">⚡ Habilidades</h2>
      <div class="grid grid-cols-2 md:grid-cols-4 gap-6 text-center">
        <div class="p-4 rounded-xl glass hover:scale-105 transition">
          <p class="text-3xl">💻</p>
          <p class="mt-2 text-sm">Programación (Python, C++)</p>
        </div>
        <div class="p-4 rounded-xl glass hover:scale-105 transition">
          <p class="text-3xl">📊</p>
          <p class="mt-2 text-sm">Estadística y Datos</p>
        </div>
        <div class="p-4 rounded-xl glass hover:scale-105 transition">
          <p class="text-3xl">🌐</p>
          <p class="mt-2 text-sm">Desarrollo Web</p>
        </div>
        <div class="p-4 rounded-xl glass hover:scale-105 transition">
          <p class="text-3xl">🤖</p>
          <p class="mt-2 text-sm">IA & Machine Learning</p>
        </div>
      </div>
    </section>

    <!-- Proyectos -->
    <section>
      <h2 class="text-2xl font-semibold text-cyan-300 mb-6 text-center">🚀 Proyectos</h2>
      <div class="grid md:grid-cols-2 gap-6">
        <!-- Proyecto 1 -->
        <div class="glass p-6 rounded-xl hover:scale-105 transition">
          <h3 class="text-xl font-bold text-cyan-200 mb-2">📂 Portafolio</h3>
          <p class="text-slate-300 mb-4">Repositorio con mis trabajos académicos y proyectos personales.</p>
          <a href="https://jhongilmermma.github.io/jhon-portafolio-mm/" target="_blank"
             class="text-cyan-400 font-semibold hover:text-cyan-200">🔗 Ver proyecto</a>
        </div>
        <!-- Proyecto 2 -->
        <div class="glass p-6 rounded-xl hover:scale-105 transition">
          <h3 class="text-xl font-bold text-cyan-200 mb-2">📊 DSS & MIS</h3>
          <p class="text-slate-300 mb-4">Modelos de soporte a decisiones aplicados en la gestión académica y empresarial.</p>
          <a href="#" class="text-cyan-400 font-semibold hover:text-cyan-200">🔗 Ver proyecto</a>
        </div>
      </div>
    </section>
  </div>

  <!-- Footer -->
  <footer class="mt-12 mb-6 text-slate-400 text-sm text-center">
    © 2025 | Diseñado con 💻 y ⚡ Futurismo
  </footer>

</body>
</html>
