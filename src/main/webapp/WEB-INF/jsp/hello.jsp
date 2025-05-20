<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4e73df;
            --secondary-color: #f8f9fc;
            --accent-color: #2e59d9;
        }
        
        body {
            font-family: 'Nunito', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: linear-gradient(135deg, var(--secondary-color) 0%, #d1d5db 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        .hero-section {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%);
            color: white;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }
        
        .hero-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 7px 30px rgba(0, 0, 0, 0.2);
        }
        
        .btn-glow {
            position: relative;
            overflow: hidden;
            z-index: 1;
        }
        
        .btn-glow:hover {
            color: white;
        }
        
        .btn-glow::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
            background-size: 400%;
            opacity: 0;
            transition: 0.5s;
            z-index: -1;
            filter: blur(5px);
        }
        
        .btn-glow:hover::before {
            opacity: 1;
            animation: glow 20s linear infinite;
        }
        
        @keyframes glow {
            0% { background-position: 0 0; }
            50% { background-position: 400% 0; }
            100% { background-position: 0 0; }
        }
        
        .feature-icon {
            width: 4rem;
            height: 4rem;
            border-radius: 0.75rem;
            background-color: var(--primary-color);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1rem;
        }
        
        footer {
            background-color: rgba(0, 0, 0, 0.05);
            backdrop-filter: blur(10px);
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="bi bi-stars me-2"></i>Awesome App
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="py-5">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <h1 class="display-4 fw-bold mb-4">Welcome to Our Platform</h1>
                    <p class="lead mb-4">Discover amazing features that will transform the way you work and live.</p>
                    <div class="d-flex gap-3">
                        <a href="#" class="btn btn-primary btn-lg px-4 btn-glow">Get Started</a>
                        <a href="#" class="btn btn-outline-primary btn-lg px-4">Learn More</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="hero-section p-5 text-center">
                        <h2 class="mb-4"><%= "Hello World!" %></h2>
                        <p class="mb-4">Current server time: <%= new java.util.Date() %></p>
                        <button class="btn btn-light btn-glow" onclick="showAlert()">Click Me!</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="py-5 bg-light">
        <div class="container py-5">
            <div class="row text-center mb-5">
                <div class="col-lg-8 mx-auto">
                    <h2 class="fw-bold">Amazing Features</h2>
                    <p class="text-muted">Everything you need in one place</p>
                </div>
            </div>
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon mx-auto">
                                <i class="bi bi-lightning-charge fs-2"></i>
                            </div>
                            <h5 class="fw-bold">Lightning Fast</h5>
                            <p class="text-muted">Optimized for performance to give you the best experience.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon mx-auto">
                                <i class="bi bi-shield-check fs-2"></i>
                            </div>
                            <h5 class="fw-bold">Secure</h5>
                            <p class="text-muted">Enterprise-grade security to protect your data.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card h-100 border-0 shadow-sm">
                        <div class="card-body text-center p-4">
                            <div class="feature-icon mx-auto">
                                <i class="bi bi-phone fs-2"></i>
                            </div>
                            <h5 class="fw-bold">Responsive</h5>
                            <p class="text-muted">Works perfectly on all devices from desktop to mobile.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="py-4 mt-auto">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <p class="mb-0">&copy; 2023 Your Company. All rights reserved.</p>
                </div>
                <div class="col-md-6 text-md-end">
                    <a href="#" class="text-decoration-none me-3">Privacy Policy</a>
                    <a href="#" class="text-decoration-none me-3">Terms of Service</a>
                    <a href="#" class="text-decoration-none">Contact Us</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Custom JavaScript -->
    <script>
        function showAlert() {
            Swal.fire({
                title: 'Hello World!',
                text: 'This is a beautiful alert from your JSP page!',
                icon: 'success',
                confirmButtonText: 'Cool'
            });
        }
        
        // Dynamic year for footer
     document.addEventListener('DOMContentLoaded', function() {
    // تعديل محتوى الفوتر ليشمل السنة الحالية
    document.querySelector('footer p').innerHTML = `&copy; Your Company. All rights reserved.`;
});
 
    </script>
    
    <!-- SweetAlert for beautiful alerts -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
