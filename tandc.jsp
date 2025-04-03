<%
    // Use the implicit session object directly
    String userFname = (String) session.getAttribute("fname");
%>
<html>
<head>
    <title>Mental Health website</title>
    <style>
        .navbar1{height: 70px; padding-top: 20px; display: flex; justify-content: end; align-items: center; font-family: "open Sans", sans-serif; padding-right: 15px; padding-left: 15px; border-bottom: solid 3px #F4BB44;}
        .navbar1 a{position: relative; font-size: 18px; color: black; text-decoration: none; margin-right: 40px; font-weight: bold;}
        .logo img{height: 55px; width: 55px; justify-content: start; margin-left: -530px; top: -10px;}
        .logo a{color: black; font-size: 35px; font-weight: 600; font-weight: bold; margin-left: -10px; top: -10px; }
        li{List-style: none; display: inline-block;}
        li a{color: black; font-size: 20px; font-weight: bold; text-decoration: none;}
        li a:hover{text-decoration: underline solid 2px; }
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            margin-top: 30px;
            margin-left: 220px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            color: #333;
        }
        p {
            line-height: 1.6;
            color: #555;
        }
    </style>
</head>
<body>
	<nav class="navbar1">
		<div class="logo">
			<img src="mind-check-logo.png" alt="">
			<a>Mind Mate</a>
		</div>
		<ul>
			<li><a href="landing.jsp">Home</a></li>
			<li><a href="#">Help Yourself</a></li>
			<li><a href="aboutus.jsp">About</a></li>
			<li><a href="contactus.jsp">Contact</a></li>
            <li>
                <% if (userFname != null) { %>
                    <i class='bx bxs-user-circle'></i><a href="profile.jsp"><%= userFname %></a>
                <% } %>
            </li>
        </ul>
    </nav>
    <div class="container">
        <h1>Terms and Conditions</h1>
        <h2>1. Introduction</h2>
        <p>Welcome to Mind Mate, a platform dedicated to mental health awareness and support. By accessing and using our website, you agree to comply with these Terms and Conditions.</p>
        
        <h2>2. Services Provided</h2>
        <p>Our platform offers mental health resources, information, and online consultations. We do not provide emergency medical care. If you are in crisis, please seek immediate help from emergency services or a mental health professional.</p>
        
        <h2>3. User Responsibilities</h2>
        <p>- You must be at least 18 years old to use our services.<br>
        - You agree to provide accurate and truthful information when using our platform.<br>
        - You are responsible for maintaining the confidentiality of your account information.</p>
        
        <h2>4. Medical Disclaimer</h2>
        <p>The information provided on our website is for informational purposes only and should not be considered as medical advice. Always consult a qualified mental health professional for personalized treatment.</p>
        
        <h2>5. Privacy Policy</h2>
        <p>We respect your privacy and handle your personal data in accordance with our Privacy Policy. By using our services, you agree to the collection and use of your data as outlined in the policy.</p>
        
        <h2>6. Payment and Refund Policy</h2>
        <p>- Payments for online consultations must be made in advance.<br>
        - Refunds are subject to our refund policy and will be processed only under specific conditions.</p>
        
        <h2>7. Limitation of Liability</h2>
        <p>We are not responsible for any direct or indirect damages resulting from the use of our website or services. Users should exercise discretion when applying any information found on our platform.</p>
        
        <h2>8. Changes to Terms</h2>
        <p>We reserve the right to update these Terms and Conditions at any time. Continued use of our website constitutes acceptance of any changes.</p>
        
        <h2>9. Contact Us</h2>
        <p>If you have any questions regarding these Terms and Conditions, please contact us at [Your Contact Information].</p>
    </div>
</body>
</html>