<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String userFname = (String) session.getAttribute("fname");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
		<title>Mental Health website</title>
		<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

		<style>
        html body {
            overflow-x: hidden; /* Prevent horizontal scrolling */
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 1s ease-out forwards;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
			.navbar1{height: 50px; padding-top: 20px; display: flex; justify-content: end; align-items: center; font-family: "open Sans", sans-serif; padding-right: 15px; padding-left: 15px; border-bottom: solid 3px #F4BB44;}
			.navbar1 a{position: relative; font-size: 18px; color: black; text-decoration: none; margin-right: 40px; font-weight: bold;}
			.logo img{height: 55px; width: 55px; justify-content: start; margin-left: -600px; top: -10px;}
			.logo a{color: black; font-size: 35px; font-weight: 600; font-weight: bold; top: -10px; }
			.navbar1 i{font-size: 25px; vertical-align: middle;}
            li{List-style: none; display: inline-block;}
			li a{color: black; font-size: 20px; font-weight: bold; text-decoration: none; }
			li a:hover{text-decoration: underline solid 2px; }
            .mental-health-section {display: flex; align-items: center; justify-content: space-between; background-color: #FFF4DC; padding: 20px;}
            .text-content {width: 50%; padding: 20px;}
            .text-content h1 {font-size: 36px; font-family: sans-serif; color: #073b3a;}
            .text-content p {font-size: 18px; color: #333; line-height: 1.6;}
            .video-content {width: 50%; position: relative;}
            .video-content img {width: 100%; border-radius: 10px; box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);}
            .play-button {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-size: 50px; color: white; background: rgba(0, 0, 0, 0.5); padding: 20px; border-radius: 50%; cursor: pointer;}
            .container {display: flex; flex-wrap: wrap;  justify-content: center; gap: 20px; padding: 20px;}
            h2 {text-align: center; font-size: 40px; font-weight: bold; color: #F4BB44; margin-bottom: 30px; text-transform: uppercase; width: 100%; display: block;}
            .box {background-color: #EAD7A1; width: 200px; padding: 25px; border-radius: 10px; color: black; font-family: 'Poppins', sans-serif; box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.2); transition: transform 0.3s ease, box-shadow 0.3s ease;}
            .box:hover {
    transform: scale(1.05);
    box-shadow: 5px 5px 20px rgba(0, 0, 0, 0.2);
}
            .box h3 {font-size: 25px; font-weight: bold; margin-bottom: 15px; margin-left: 20px;}
            .box ul {padding-left: 20px;}
            .box ul li { margin-bottom: 8px; font-size: 16px; text-align: left;}
            .cont {display: flex; width: 100%; height: 250px;}
            .left {width: 40%; background-color: #FFBF00; display: flex; align-items: center; justify-content: center; padding: 20px;}
            .left h4 {color: white; font-size: 36px; font-weight: bold;}
            .right {width: 60%; background-color: #FFF4DC; display: flex; align-items: center; padding: 20px;}
            .right p {color: #C75050; font-size: 18px; line-height: 1.5;}
            .help {background-color: #FFFDD0; color: white; width: 100%; margin: auto; text-align: left;}
            .help h2 {font-size: 36px; color: #073b3a; font-weight: bold; margin-top: 10px; text-transform: uppercase;}
            .help p {font-size: 18px; color: #073b3a; line-height: 1.6; text-align: left; margin-left: 5px;}
            .phase {display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; background-color: #FFDB58; padding: 40px; border-radius: 10px;}
            .boxx { display: flex; align-items: center; gap: 15px; background: rgba(255, 255, 255, 0.2); padding: 15px; border-radius: 8px;}
            .icon img{ width: 50px; height: auto; transition: transform 0.3s ease-in-out;}
            .icon:hover img {
    transform: scale(1.1);
}
            .text {color: black;}
            .videos .video-items{width: 100%; position: relative; margin-top: 10px; margin: 0;  justify-content: flex-start;}
            .mental-health-heading {
    text-align: center; /* Center align */
    font-size: 30px; /* Size bada karein */
    font-weight: bold; /* Bold karein */
    color: #333; /* Dark grey color */
    margin-bottom: 30px; /* Thoda space de */
    font-family: "open Sans", sans-serif; /* Achha readable font */
    text-transform: capitalize; /* First letter capital */

}
            .videos {
                
                width: 100%; margin: auto;
                text-align: center;
    display: flex;
    justify-content: center;
    overflow-x: hidden;
    padding: 20px;
}
            .video-list {
                justify-content: flex-start;
    display: flex;
    gap: 20px;
    overflow-x: auto;
    scroll-behavior: smooth;
    scrollbar-width: thin; /* For Firefox */
    -ms-overflow-style: none; 
    padding-bottom: 10px;
    clear: both;
    margin-top: 20px;
}
.video-list::-webkit-scrollbar {
    display: none;
}
.video {
    max-width: 200px;
    position: relative;
    flex: 0 0 auto;
    text-align: center;
}
.video img {
    width: 200px; /* Adjust size */
    height: 200px; /* Adjust size */
    object-fit: cover;
    border-radius: 10px;
    border: 2px solid #ddd; /* Optional border */
}
.play {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 20px;
    color: white;
    background: rgba(0, 0, 0, 0.7);
    padding: 10px;
    border-radius: 100%;
    cursor: pointer;
}
            .video:hover .play {
    background: rgba(255, 0, 0, 0.7);
}
.footer{background-color: #F4BB44; padding: 70px 0; }
			.footer .container{max-width: 1170px; margin: auto;}
			.row{display: flex;}
			ul{list-style: none;}
			.footer-col{width: 25%; padding: 0 15px;}
			.footer-col h5{font-size: 25px; font-weight: 500; color: black; margin-left: 50px; text-transform: capitalize; margin-bottom: 30px; position: relative; margin-top: -20px;}
			.footer-col h5 img{height: 55px; width: 55px; margin-top: -30px;}
			.footer-col h5::before{content: ''; position: absolute; left: 0; bottom: -10px; bacground-color: #e91e63; height: 2px; box-sizing: border-box; width: 50px;}
			.footer-col ul li:not(:last-child){margin-bottom: 10px;}
			.footer-col ul li a{font-size: 18px; text-transform: capitalize; color: #ffffff; text-decoration: none; font-weight: 300; color: black; display: block; margin-left: 10px; }
			.footer-col ul li a:hover{color: #ffffff; padding-left: 8px;}
			.footer-col .social-links a{display: inline-block; gap: 0; height: 40px; width: 40px;}
			.footer-col .social-links a i{font-size: 30px; margin-left: 50px;}
			.footer-col .social-links a:hover{color: black; background-color: black;}
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
    </nav><br>
    <div class="mental-health-section">
        <div class="text-content">
            <h1>Mental Health Awareness For Depression</h1>
            <p>
                Depression is a common mental health condition characterized by persistent sadness, loss of interest in activities, 
                and feelings of hopelessness. It can affect a person's thoughts, emotions, and daily life.
            </p>
            <p>
                However, when depression becomes overwhelming or lasts for an extended period, it may indicate a depressive disorder. 
                Managing depression through therapy, self-care, lifestyle changes, and seeking professional support can help improve mental well-being.


            </p>
        </div>
        <div class="video-content">
            <a href="https://www.youtube.com/watch?v=z-IR48Mb3W0" target="_blank">
                <img src="depressionintro.webp" alt="Mental Health Awareness Video">
                <div class="play-button">&#9654;</div>
            </a>
        </div>
    </div>
    <div class="container">
        <h2>Signs & Symptoms of Depression</h2>
            <div class="box">
                <h3>Cognitive</h3>
                <ul>
                    <li>Difficulty concentrating</li>
                    <li>Negative thoughts</li>
                    <li>Memory problems</li>
                    <li>Indecisiveness</li>
                </ul>
            </div>
            <div class="box">
                <h3>Emotional</h3>
                <ul>
                    <li>Persistent sadness or emptiness</li>
                    <li>Feelings of hopelessness</li>
                    <li>Increased irritability</li>
                    <li>Loss of interest in activities</li>
                </ul>
            </div>
            <div class="box">
                <h3>Physical</h3>
                <ul>
                    <li>Fatigue or low energy</li>
                    <li>Changes in appetite or weight</li>
                    <li>Sleep disturbances (insomnia or oversleeping)</li>
                    <li>Unexplained aches and pains</li>
                </ul>
            </div>
            <div class="box">
                <h3>Behavioral</h3>
                <ul>
                    <li>Withdrawing from social activities</li>
                    <li>Decreased productivity</li>
                    <li>Loss of motivation</li>
                    <li>Increased substance use</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cont">
        <div class="left">
            <h4>WHAT CAUSES DEPRESSION?</h4>
        </div>
        <div class="right">
            <p>Depression can arise from a combination of biological, psychological, and environmental factors. Genetic predisposition, chemical imbalances in the brain, and hormonal changes can contribute to its onset. Life events such as trauma, loss, prolonged stress, or chronic illness can also be major triggers. Environmental factors like financial struggles, social isolation, or lack of support can worsen depressive symptoms. Additionally, unhealthy lifestyle habits, poor diet, lack of physical activity, and substance abuse may increase the risk of developing depression.</p>
        </div>
    </div><br>
    <section class="help"><br>
        <h2>HOW CAN YOU HELP YOURSELF?</h2>
        <p>
            Recognizing depression is the first step. Managing depression involves practicing self-care, setting small achievable goals, and engaging in activities that bring joy. Regular physical activity, maintaining a nutritious diet, and ensuring adequate sleep can also improve mood. Talking to trusted friends, family, or seeking professional therapy provides valuable support. Additionally, mindfulness, journaling, and relaxation techniques can help cope with overwhelming feelings. Remember, small steps toward self-care can lead to long-term emotional well-being.
        </p>
    <div class="phase">
        <div class="boxx">
            <div class="icon"><img src="Self-Compassion.jpg" alt=""></div>
            <div class="text">
                <h3>Practice Self-Compassion</h3>
                <p>Be kind to yourself and acknowledge your emotions without judgment.</p>
            </div>
        </div>
    
        <div class="boxx">
            <div class="icon"><img src="notepad.png" alt=""></div>
            <div class="text">
                <h3>Write Down Your Feelings</h3>
                <p>Journaling helps process emotions, track progress, and identify triggers.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="exercise.png" alt=""></div>
            <div class="text">
                <h3>Engage in Physical Activity</h3>
                <p>Exercise releases endorphins, which help boost mood and energy levels.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="sleeping-mask.png" alt=""></div>
            <div class="text">
                <h3>Maintain a Sleep Routine</h3>
                <p>Ensure 7-9 hours of quality sleep to help manage stress and anxiety.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="diet.png" alt=""></div>
            <div class="text">
                <h3>Eat a Nutritious Diet</h3>
                <p>Healthy meals support brain function and help regulate mood.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="comfortable.png" alt=""></div>
            <div class="text">
                <h3>Create a Supportive Environment</h3>
                <p>Surround yourself with positive influences and seek help when needed.</p>
            </div>
        </div>
    </div>
    </section>
    <section class="videos">
        <div class="video-items">
        <h3 class="mental-health-heading">Depression is Tough, But So Are You - Find Support Here</h3>
            <div class="video-list">
                <div class="video">
                    <a href="https://youtu.be/z-IR48Mb3W0?si=7_zFWMFZ0007CT0_" target="_blank">
                        <img src="depression1.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/tJQRsIbD110?si=GA87jcv1pWd5gi7P" target="_blank">
                        <img src="depression2.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/3yABSZO7HIY?si=NA8r7J_XtOPgYzrI" target="_blank">
                        <img src="depression3.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/lAdp3nT4BFA?si=CXPbZUdYzRWhoMlz" target="_blank">
                        <img src="depression4.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/TTHOjqIRQ34?si=2dq21tUE0-FvHXG-" target="_blank">
                        <img src="depression5.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/VfvFE4rKn3c?si=xUT4Agjrj5cEiEmc" target="_blank">
                        <img src="depression6.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/N4Jk9Cu3WM8?si=XNxGn7flZBA-6cOH" target="_blank">
                        <img src="depression7.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/XWr0AEWUY5M?si=mP1T62s12h8rUacf" target="_blank">
                        <img src="depression8.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/BAR08BMELAk?si=n2nfhwtV9dcdyrf2" target="_blank">
                        <img src="depression9.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/-G07bF7NrH0?si=Pb1HOjrQ49_OWTt-" target="_blank">
                        <img src="depression10.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
            </div>
            </div>
    </section>
    <footer class="footer">
		<div class="container">
			<div class="row">	
				<div class="footer-col">
					<h5><img src="mind-check-logo.png" alt="">Mind Mate</h5>
					<ul>
						<li><a>2024 Mind Mate Limited</a></li>
					</ul>
				</div>	
				<div class="footer-col">
					<h5>Company</h5>
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<br>
						<li><a href="aboutus.jsp">About</a></li>
						<br>
						<li><a>Contribute to Resources</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h5>Contact</h5>
					<ul>
						<li><a href="contactus.jsp">Contact us</a></li>
						<br>
						<li><a href="#">Terms & Conditions</a></li>
						<br>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h5>follow us</h5>
					<div class="social-links">
						<a href="#"><i class='bx bxl-instagram'></i></a>
						<a href="#"><i class='bx bxl-linkedin-square' ></i></a>
					</div>
				</div>

			</div>
		</div>
	</footer>
</body>
</html>