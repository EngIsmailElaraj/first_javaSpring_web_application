<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>list_Of_Todos  </title>
        <!-- Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
        <!-- GSAP -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
    </head>
    <body class="bg-gradient-to-br from-green-600 to-emerald-800 min-h-screen flex items-center justify-center font-sans relative overflow-hidden">

        <!-- Welcome Card -->
        <div id="welcomeCard" class="bg-white shadow-2xl rounded-2xl p-10 w-full max-w-2xl text-center transform scale-90 opacity-0 z-10 relative">

            <h2 class="text-3xl font-bold text-green-700 mb-6 flex justify-center items-center gap-2">
                list_Of_Todos! Willkommen ${name}
                <span id="plane" class="inline-block w-8 h-8 text-sky-400 opacity-0 origin-center">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M22.48 2.13a1 1 0 0 0-1.05-.17L2.63 10.1a1 1 0 0 0 .12 1.88l4.87 1.48 2.1 5.28a1 1 0 0 0 .91.64h.06a1 1 0 0 0 .93-.67l2.2-6.7 5.26 4.4a1 1 0 0 0 1.63-.64l1.5-12a1 1 0 0 0-.63-1.34ZM17.94 16.1l-5.37-4.49a1 1 0 0 0-1.6.45l-1.77 5.38-1.49-3.76 8.8-5.9-9.35 3.84L3.8 11 20.3 4.47Z"/>
                    </svg>
                </span>
            </h2>

         

            <ul class="list-group" id="todoList">
                <!-- Todos will be added here -->
                     
                <form:form method="post"  modelAttribute="todo">
                    <h1>Enter the Details</h1>
                    
                   <div class="d-flex align-items-center gap-2">
                       <label for="desc" class="mb-0">Description:</label>
                       <form:input type="text" id="desc" required="required" path="description" name="description" class="form-control w-auto" />
                       <form:input type="hidden" path="id" />
                       <form:input type="hidden" path="done" />
                   </div>

                
                    <br />
                    <button type="submit" class="btn btn-success">ok</button>
                </form:form>
                
                    </ul>

                    <template id="todoTemplate">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span class="todo-text"></span>
                            <div>
                                <button class="btn btn-sm btn-primary edit-btn">Edit</button>
                                <button class="btn btn-sm btn-danger delete-btn">Delete</button>
                            </div>
                        </li>
                    </template>
                    

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
                        rotate: -45,
                        transformOrigin: "center"
                    });

                    gsap.to(plane, {
                        duration: 3,
                        x: 400,
                        y: -200,
                        rotate: 720,
                        ease: "power2.inOut",
                        onComplete: () => {
                            gsap.to(plane, {opacity: 0, duration: 0.5});
                        }
                    });

                  
                   
                </script>

            </body>
        </html>
