<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Willkommen</title>
  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- GSAP -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
</head>
<body class="bg-gradient-to-br from-green-600 to-emerald-800 min-h-screen flex items-center justify-center font-sans relative overflow-hidden">

  <!-- Welcome Card -->
  <div id="welcomeCard" class="bg-white shadow-2xl rounded-2xl p-10 w-full max-w-md text-center transform scale-90 opacity-0 z-10 relative">
    
    <h2 class="text-3xl font-bold text-green-700 mb-6 flex justify-center items-center gap-2">
      Willkommen!
      <!-- Paper Plane Icon beside ! -->
      <span id="plane" class="inline-block w-8 h-8 text-sky-400 opacity-0 origin-center">
        <!-- SVG: Paper Plane (Telegram style) -->
        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
          <path d="M22.48 2.13a1 1 0 0 0-1.05-.17L2.63 10.1a1 1 0 0 0 .12 1.88l4.87 1.48 2.1 5.28a1 1 0 0 0 .91.64h.06a1 1 0 0 0 .93-.67l2.2-6.7 5.26 4.4a1 1 0 0 0 1.63-.64l1.5-12a1 1 0 0 0-.63-1.34ZM17.94 16.1l-5.37-4.49a1 1 0 0 0-1.6.45l-1.77 5.38-1.49-3.76 8.8-5.9-9.35 3.84L3.8 11 20.3 4.47Z"/>
        </svg>
      </span>
    </h2>

    <p class="text-lg text-gray-700 mb-2">Benutzername: <span class="font-semibold text-black">${name}</span></p>
    <p class="text-lg text-gray-700 mb-6">Passwort: <span class="font-semibold text-black">${password}</span></p>

    <form method="post">
      <button type="submit" class="w-full bg-green-600 hover:bg-green-700 transition-colors text-white py-2 rounded-lg font-semibold shadow-md">
        Weiter
      </button>
    </form>
  </div>

  <script>
    // Animate welcome card
    gsap.to("#welcomeCard", {
      duration: 1,
      opacity: 1,
      scale: 1,
      ease: "power3.out"
    });

    // Animate the paper plane
    const plane = document.getElementById("plane");
    gsap.set(plane, {
      opacity: 1,
      rotate: -45, // تبدأ وكأنها تتجه للأعلى يمين
      transformOrigin: "center"
    });

    // حركة الطيران (مسار مع منحنى ودوران مستمر)
    gsap.to(plane, {
      duration: 3,
      x: 400,
      y: -200,
      rotate: 720, // تدور مرتين كاملة
      ease: "power2.inOut",
      onComplete: () => {
        gsap.to(plane, { opacity: 0, duration: 0.5 });
      }
    });
  </script>

</body>
</html>

