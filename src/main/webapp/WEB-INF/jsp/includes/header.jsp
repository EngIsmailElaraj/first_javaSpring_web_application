<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Todo App</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col">
    <!-- Navbar -->
    <nav class="bg-gradient-to-r from-emerald-600 to-green-700 shadow-lg">
        <div class="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center text-white">
            <div class="text-2xl font-bold tracking-wide flex items-center gap-2">
                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" stroke-width="2"
                     viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round"
                          d="M5 13l4 4L19 7"></path>
                </svg>
                TodoMaster
            </div>
            <div class="space-x-6 text-lg">
                <a href="/" class="hover:text-yellow-300 transition">Home</a>
                <a href="say-todo-jsp" class="hover:text-yellow-300 transition">Todos</a>
                <a href="add-todo" class="hover:text-yellow-300 transition">Add</a>
            </div>
            <div>
                <a href="#" class="bg-white text-green-700 px-4 py-2 rounded-lg font-semibold hover:bg-gray-200 transition">Logout</a>
            </div>
        </div>
    </nav>
