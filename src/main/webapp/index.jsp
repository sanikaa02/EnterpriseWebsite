<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sai Enterprises - Induction Heating Experts</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo">
                <h1>Sai Enterprises</h1>
            </div>
            <ul class="nav-links">
                <li><a href="index.html" class="active">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="services.html">Services</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
            <div class="chat-icon" id="chatIcon" onclick="toggleChat()">💬</div>

<!-- Embedded Chatbot -->
<iframe src="chat.html" id="chatbot-frame"></iframe>

<style>
    /* Chat Icon */
    .chat-icon {
        position: fixed;
        bottom: 20px;
        right: 20px;
        width: 60px;
        height: 60px;
        background: #FF5733; /* Orange-Red */
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        cursor: pointer;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
        z-index: 1000;
        transition: background 0.3s ease;
    }

    /* Hover effect */
    .chat-icon:hover {
        background: #E04B25; /* Slightly darker on hover */
    }

    /* Chatbot Frame */
    #chatbot-frame {
        position: fixed;
        bottom: 90px;
        right: 20px;
        width: 350px;
        height: 450px;
        border: none;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
        display: none; /* Chatbot hidden initially */
        z-index: 999;
    }
</style>

<script>
    function toggleChat() {
        document.getElementById("chatbot-frame").style.display = "block"; // Show chatbot
        document.getElementById("chatIcon").style.display = "none"; // Hide icon
    }

    function closeChat() {
        document.getElementById("chatbot-frame").style.display = "none"; // Hide chatbot
        document.getElementById("chatIcon").style.display = "flex"; // Show icon again
    }
</script>
            
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </nav>
    </header>

    <main>
        <section class="hero">
            <div class="hero-content"  >
            
            
                <h1>Leading Induction Heating Solutions</h1>
                <p>Custom Induction Heating Coils to High-Efficiency Solutions</p>
                <a href="contact.html" class="cta-button">Get in Touch</a>
            </div>
        </section>

        <section class="services-preview">
            <h2>Our Services</h2>
            <div class="services-grid">
                <div class="service-card">
                    <i class="fas fa-fire"></i>
                    <h3>Custom Induction Heating Coils</h3>
                    <p>Tailored solutions for your specific heating requirements</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-tools"></i>
                    <h3>Silver Brazing Job Works</h3>
                    <p>Professional brazing services for various applications</p>
                </div>
                <div class="service-card">
                    <i class="fas fa-wrench"></i>
                    <h3>Maintenance & Repair</h3>
                    <p>Expert maintenance and repair services</p>
                </div>
            </div>
        </section>

        <section class="why-choose-us">
            <h2>Why Choose Us?</h2>
            <div class="features-grid">
                <div class="feature">
                    <i class="fas fa-tools"></i>
                    <h3>🔧 Industry Experts in Induction Heating & Brazing</h3>
                    <p>Our team brings years of expertise in <b>custom induction heating coils, silver brazing job works, and maintenance & repair services</b>. With deep industry knowledge and advanced techniques, we deliver precise and efficient solutions tailored to your needs.</p>
                </div>
                <div class="feature">
                    <i class="fas fa-bolt"></i>
                    <h3>⚡ Fast & Reliable Service</h3>
                    <p>We understand the importance of <b>minimizing downtime</b>. Our streamlined processes and skilled workforce ensure <b>quick turnaround times</b> without compromising quality, keeping your operations running smoothly.</p>
                </div>
                <div class="feature">
                    <i class="fas fa-check-circle"></i>
                    <h3>✅ Assured Quality & Durability</h3>
                    <p>We follow <b>ISO-certified processes</b> and strict quality control measures to ensure <b>high-performance, long-lasting solutions</b>. Using premium materials and advanced techniques, we enhance the durability and efficiency of every component we work on.</p>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-content">
            <div class="footer-section">
                <h3>Contact Us</h3>
                <p><i class="fas fa-phone"></i> 9998887776</p>
                <p><i class="fas fa-envelope"></i> info@sai-enterprises.com</p>
                <p><i class="fas fa-location-dot"></i> Near Sinhagad road,<br>  Lane no:20,Dhayari<br>  Pune-411041</p>
                
                
            </div>
            <div class="footer-section">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h3>Follow Us</h3>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Sai Enterprises. All rights reserved.</p>
        </div>
        
    </footer>

    <script src="script/script.js">
    
</script>
    
</body>
</html>
