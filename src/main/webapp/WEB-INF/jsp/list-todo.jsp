<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Aufgabenliste</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
</head>
<body class="bg-gradient-to-br from-green-600 to-emerald-800 min-h-screen font-sans">

<!-- Navbar -->
<nav class="bg-gray-900 text-white shadow-md py-4 px-6 flex justify-between items-center">
    <h1 class="text-xl font-bold">Aufgabenübersicht</h1>
    <span class="text-sm">Willkommen, ${name}</span>
</nav>

<!-- Card -->
<div class="flex justify-center mt-10 px-4">
    <div class="bg-white/95 rounded-2xl shadow-2xl p-8 w-full max-w-4xl">
        <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">Meine Todos</h2>

        <!-- Table -->
        <div class="overflow-x-auto">
            <table class="min-w-full bg-white rounded-lg shadow">
                <thead class="bg-gray-800 text-white">
                    <tr>
                        <th class="py-3 px-4 text-left">Beschreibung</th>
                        <th class="py-3 px-4 text-left">Zieldatum</th>
                        <th class="py-3 px-4 text-left">Erledigt</th>
                        <th class="py-3 px-4 text-center">Aktionen</th>
                    </tr>
                </thead>
                <tbody class="text-gray-800">
                    <c:forEach var="todo" items="${todos}">
                        <tr class="border-b border-gray-200 hover:bg-gray-100 transition">
                            <td class="py-3 px-4">${todo.description}</td>
                            <td class="py-3 px-4">${todo.prettyTargetDate}</td>
                            <td class="py-3 px-4">${todo.done}</td>
                            <td class="py-3 px-4 flex gap-3 justify-center">
                                <a href="update-todo?id=${todo.id}" class="text-blue-600 hover:text-blue-800">
                                    <i data-lucide="pencil" class="w-5 h-5"></i>
                                </a>
                                <a href="delete_todo?id=${todo.id}" class="text-red-600 hover:text-red-800">
                                    <i data-lucide="trash-2" class="w-5 h-5"></i>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Add Button -->
        <div class="flex justify-center mt-6">
            <a href="add-todo" class="bg-emerald-600 hover:bg-emerald-700 text-white font-bold py-2 px-4 rounded-md">
                Aufgabe hinzufügen
            </a>
        </div>
    </div>
</div>

<script>
    lucide.createIcons();
</script>

</body>
</html>
