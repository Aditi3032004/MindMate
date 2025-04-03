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
            <h1>Mental Health Awareness For Lonelinaess</h1>
            <p>
                Loneliness occurs when an individual feels socially isolated or disconnected, even when surrounded by others. It can lead 
                to feelings of sadness, anxiety, and low self-esteem. Loneliness can result from a lack of meaningful relationships, major 
                life changes, excessive social media use, or difficulty expressing emotions. Persistent loneliness can impact mental well-being, 
                self-confidence, and overall life satisfaction.
            </p>
            <p>
                However, managing loneliness is possible through building strong social connections, engaging in meaningful activities, 
                and seeking emotional support. Practicing self-care, joining social or hobby groups, staying connected with family and 
                friends, and seeking professional help when needed can help individuals feel more connected and improve emotional well-being over time. 
            </p>
        </div>
        <div class="video-content">
            <a href="https://www.youtube.com/watch?v=XTgbQl73dos" target="_blank">
                <img src="loneliness0.webp" alt="Mental Health Awareness Video">
                <div class="play-button">&#9654;</div>
            </a>
        </div>
    </div>
    <div class="container">
        <h2>Signs & Symptoms of Lonelinaess</h2>
            <div class="box">
                <h3>Cognitive</h3>
                <ul>
                    <li>Difficulty focusing or staying engaged in conversations</li>
                    <li>Overthinking social interactions</li>
                    <li>Low self-esteem and self-doubt</li>
                    <li>Constantly feeling left out or unwanted</li>
                </ul>
            </div>
            <div class="box">
                <h3>Emotional</h3>
                <ul>
                    <li>Persistent sadness or feelings of emptiness</li>
                    <li>Anxiety about social interactions</li>
                    <li>Feeling unworthy of relationships</li>
                    <li>Mood swings or emotional distress</li>
                </ul>
            </div>
            <div class="box">
                <h3>Physical</h3>
                <ul>
                    <li>Fatigue and low energy levels</li>
                    <li>Unexplained body aches or tension</li>
                    <li>Sleep disturbances </li>
                    <li>Weak immune system due to prolonged stress</li>
                </ul>
            </div>
            <div class="box">
                <h3>Behavioral</h3>
                <ul>
                    <li>Avoiding social gatherings or isolating oneself</li>
                    <li>Excessive use of social media to feel connected</li>
                    <li>Changes in eating or sleeping patterns</li>
                    <li>Seeking validation or reassurance from others</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cont">
        <div class="left">
            <h4>WHAT CAUSES LONELINESS?</h4>
        </div>
        <div class="right">
            <p>Loneliness can arise from various factors, including social isolation, lack of meaningful relationships, and difficulty forming connections. Personal habits such as avoiding social interactions, over-reliance on digital communication, and fear of rejection can worsen feelings of loneliness.

                Additionally, major life changes, such as moving to a new place, losing a loved one, or experiencing a breakup, can contribute to increased loneliness. Loneliness can negatively impact mental and physical well-being, leading to depression, anxiety, sleep disturbances, and decreased self-esteem.</p>
        </div>
    </div><br>
    <section class="help"><br>
        <h2>HOW CAN YOU HELP YOURSELF?</h2>
        <p>
            Recognizing loneliness is the first step. Managing it involves making an effort to build meaningful connections, engaging in social activities, and reaching out to family or friends. Practicing self-care, exploring new hobbies, and maintaining a balanced routine can help improve emotional well-being.

Engaging in activities like exercise, mindfulness, and volunteering can provide a sense of purpose and belonging. Seeking support from counselors, support groups, or mentors can also provide guidance and encouragement. Remember, small and consistent efforts in nurturing relationships can lead to greater emotional fulfillment and a healthier mindset.


        </p>
    <div class="phase">
        <div class="boxx">
            <div class="icon"><img src="handshake.png" alt=""></div>
            <div class="text">
                <h3>Build Social Connections</h3>
                <p>Engage in social activities, join clubs, or participate in community events to meet new people and form meaningful relationships.</p>
            </div>
        </div>
    
        <div class="boxx">
            <div class="icon"><img src="speech-bubble.png" alt=""></div>
            <div class="text">
                <h3>Develop Healthy Communication Habits</h3>
                <p>Practice open communication with friends and family, express your feelings, and actively listen to others to strengthen relationships.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="love-home.png" alt=""></div>
            <div class="text">
                <h3>Avoid Social Withdrawal</h3>
                <p>Make an effort to stay connected with loved ones, even through small interactions like texts, calls, or casual meet-ups.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="hugging-face.png" alt=""></div>
            <div class="text">
                <h3>Seek Emotional Support</h3>
                <p>Talk to trusted friends, family members, or a therapist when you feel lonely to receive guidance and comfort.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="yoga.png" alt=""></div>
            <div class="text">
                <h3>Improve Self-Care and Mindfulness</h3>
                <p>Engage in activities that bring you joy, like exercise, meditation, or hobbies, to maintain a positive mindset and emotional well-being.</p>
            </div>
        </div>

        <div class="boxx">
            <div class="icon"><img src="sparkles.png" alt=""></div>
            <div class="text">
                <h3>Practice Gratitude and Positive Thinking</h3>
                <p>Focus on the positive aspects of your life and keep a gratitude journal to remind yourself of the good moments and connections you have.</p>
            </div>
        </div>
    </div>
    </section>
    <section class="videos">
        <div class="video-items">
        <h3 class="mental-health-heading">Lonelinaess is Tough, But So Are You - Find Support Here</h3>
            <div class="video-list">
                <div class="video">
                    <a href="https://youtu.be/1oanOmN83fw?si=sQ1L6V4DXeKEaDrD" target="_blank">
                        <img src="loneliness1.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/9384kTbvf64?si=nyQPAc8T87Jsp5pe" target="_blank">
                        <img src="loneliness2.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/dWS3A2EAwTk?si=hXDTPYdw6u48L7lu" target="_blank">
                        <img src="loneliness3.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/n3Xv_g3g-mA?si=IajCt0wtXI0rdGLx" target="_blank">
                        <img src="loneliness4.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/TWNL7EClClo?si=BujnrVF90sP0pURD" target="_blank">
                        <img src="loneliness5.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/W5SKxUwvJN0?si=yQbT33xAeC5jMxas" target="_blank">
                        <img src="loneliness6.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/JxbYPk1MIyw?si=9lsMfG-_nmEq-nG4" target="_blank">
                        <img src="loneliness7.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/drGfytizI6w?si=5u2O2e_F9eoLYZ8w" target="_blank">
                        <img src="loneliness8.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/jJGwJ7XLZ8U?si=W-SFPJzX1y7I4jrA" target="_blank">
                        <img src="loneliness9.webp" alt="">
                        <div class="play">&#9654;</div>
                    </a>
                </div>
                <div class="video">
                    <a href="https://youtu.be/CP3Kt2d6WmQ?si=Wp_5WZyFxGHJOlTJ" target="_blank">
                        <img src="loneliness10.webp" alt="">
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