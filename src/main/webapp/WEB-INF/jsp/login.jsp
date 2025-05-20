<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="de">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login</title>
  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- GSAP -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
</head>
<body class="bg-gradient-to-tr from-purple-700 to-indigo-900 min-h-screen flex items-center justify-center font-sans">

  <div id="loginCard" class="bg-white shadow-2xl rounded-2xl p-10 w-full max-w-md transform scale-90 opacity-0">
    <h2 class="text-3xl font-bold text-center text-indigo-700 mb-6">Anmeldung</h2>

    <form method="post" class="space-y-4">
      <% if(request.getAttribute("errorMessage") != null) { %>
        <div class="bg-red-100 text-red-700 p-3 rounded-md text-center">
          <%= request.getAttribute("errorMessage") %>
        </div>
      <% } %>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-1">Name</label>
        <input type="text" name="name" class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500" placeholder="Geben Sie Ihren Namen ein" required>
      </div>

      <div>
        <label class="block text-sm font-semibold text-gray-700 mb-1">Passwort</label>
        <input type="password" name="password" class="w-full px-4 py-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500" placeholder="••••••••" required>
      </div>

      <button type="submit" class="w-full bg-indigo-600 hover:bg-indigo-700 transition-colors text-white py-2 rounded-lg font-semibold shadow-md">
        Einloggen
      </button>
    </form>

    <p class="text-center text-sm text-gray-600 mt-6">
      Noch kein Konto? <a href="#" class="text-indigo-500 hover:underline">Jetzt registrieren</a>
    </p>
  </div>

  <script>
    // GSAP Animation
    window.onload = () => {
      gsap.to("#loginCard", {
        duration: 1,
        opacity: 1,
        scale: 1,
        ease: "power3.out",
      });
    };
  </script>

</body>
</html>
