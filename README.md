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

  <!-- Banner -->
  <div class="mb-10 mt-6">
    <img src="https://img.freepik.com/free-vector/statistical-data-analytics-abstract-concept-illustration_335657-2135.jpg" 
         alt="Estadística e Informática" width="800" 
         class="rounded-2xl shadow-xl hover:scale-105 transition"/>
  </div>

  <!-- Header -->
  <header class="text-center mb-12">
    <h1 class="text-4xl md:text-6xl font-bold glow">🎓 FINESI 2025</h1>
    <p class="text-cyan-400 mt-2 text-lg">Estadística e Informática | UNA – Puno</p>
  </header>

  <!-- Card principal -->
  <div class="glass p-10 rounded-2xl shadow-xl max-w-4xl w-full">
    
    <!-- Presentación -->
    <section class="mb-10 text-center">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-3">👨‍💻 Bienvenido</h2>
      <p class="text-slate-300">
        Aquí encontrarás proyectos, prácticas y materiales relacionados con 
        <span class="text-cyan-200 font-semibold">Estadística e Informática</span>.  
        Este portafolio refleja mi aprendizaje, proyectos académicos y visión futurista 🚀.
      </p>
    </section>

    <!-- Sección repositorio -->
    <section class="mb-10">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-6 text-center">📂 Contenido</h2>
      <ul class="space-y-4 text-slate-300">
        <li>📈 Proyectos de <span class="text-cyan-200">Estadística aplicada</span></li>
        <li>💻 Programas en <span class="text-cyan-200">Python, C++, R</span></li>
        <li>📊 Visualizaciones y análisis de datos</li>
        <li>🚀 Aplicaciones en informática y nuevas tecnologías</li>
      </ul>
    </section>

    <!-- Colores representativos -->
    <section class="mb-10">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-6 text-center">🌈 Colores representativos</h2>
      <div class="grid grid-cols-3 gap-6 text-center">
        <div class="p-4 rounded-xl glass">
          <div class="w-6 h-6 mx-auto mb-2 rounded-full" style="background:#1E90FF;"></div>
          <p class="text-sm">Azul Estadística<br><code>#1E90FF</code></p>
        </div>
        <div class="p-4 rounded-xl glass">
          <div class="w-6 h-6 mx-auto mb-2 rounded-full" style="background:#00FA9A;"></div>
          <p class="text-sm">Verde Informática<br><code>#00FA9A</code></p>
        </div>
        <div class="p-4 rounded-xl glass">
          <div class="w-6 h-6 mx-auto mb-2 rounded-full" style="background:#FFD700;"></div>
          <p class="text-sm">Amarillo Innovación<br><code>#FFD700</code></p>
        </div>
      </div>
    </section>

    <!-- Proyectos -->
    <section class="mb-10">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-6 text-center">🚀 Proyectos destacados</h2>
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
    
    <!-- Autor -->
    <section class="text-center">
      <h2 class="text-2xl font-semibold text-cyan-300 mb-3">👤 Autor</h2>
      <p class="text-slate-300 mb-2">Jhon Gilmer Mamani Apaza</p>
      <p class="text-slate-400 text-sm">Facultad de Ingeniería Estadística e Informática – UNA Puno</p>
    </section>
  </div>

  <!-- Footer -->
  <footer class="mt-12 mb-6 text-slate-400 text-sm text-center">
    © 2025 | Diseñado con 💻 y ⚡ Futurismo
  </footer>

</body>
</html>
