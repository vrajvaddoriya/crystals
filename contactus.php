<?php 
include 'includes/session.php';
include 'includes/header.php'; 

try {
    // Database connection
    $servername = "localhost"; // Change this if your MySQL server is hosted elsewhere
    $username = "root"; // Replace with your MySQL username
    $password = ""; // Replace with your MySQL password
    $dbname = "ecomm";

    // Create connection using PDO
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Set PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Retrieve form data
        $name = $_POST['name'];
        $email = $_POST['email'];
        $message = $_POST['message'];

        // Insert data into MySQL
        $sql = "INSERT INTO contactus (name, email, message) VALUES (:name, :email, :message)";
        $stmt = $conn->prepare($sql);
        $stmt->execute(['name' => $name, 'email' => $email, 'message' => $message]);

        // Display success message
        echo "<script>alert('Data successfully integrated into the crystal, ensuring seamless operation for optimal sales performance.');</script>";
    }
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

?>

<!-- Your HTML form -->
<style>
   .btn-color{
    background-color: #103231 !important;
}
.btn-color:hover{
    background-color: #103231;
}
</style>
<body class="bodyclass hold-transition skin-blue layout-top-nav">
<div class="wrapper">
    <?php include 'includes/navbar.php'; ?>
    <div class="content-wrapper">
        <div class="container">
            <section class="contacsection">
                <div class="section-header">
                    <div class="container">
                        <h2>Contact Us</h2>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                            has been the industry's standard dummy text ever since the 1500s, when an unknown
                            printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="contact-info">
                            <div class="contact-info-item">
                                <div class="contact-info-icon">
                                    <i class="fas fa-home"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h4>Address</h4>
                                    <p>4671 Sugar Camp Road,<br /> Owatonna, Minnesota, <br />55060</p>
                                </div>
                            </div>
                            <div class="contact-info-item">
                                <div class="contact-info-icon">
                                    <i class="fas fa-phone"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h4>Phone</h4>
                                    <p>571-457-2321</p>
                                </div>
                            </div>
                            <div class="contact-info-item">
                                <div class="contact-info-icon">
                                    <i class="fas fa-envelope"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h4>Email</h4>
                                    <p>ntamerrwael@mfano.ga</p>
                                </div>
                            </div>
                        </div>
                        <div class="contact-form">
                            <form method="post">
                                <h2>Send Message</h2>
                                <div class="input-box">
                                    <input type="text" placeholder="Enter your name" required="true" name="name" id="name">
                                </div>
                                <div class="input-box">
                                    <input type="email" placeholder="Enter your Email" required="true" name="email" id="email">
                                </div>
                                <div class="input-box">
                                    <textarea required="true" placeholder="Type your Message..." name="message" id="message"></textarea>
                                </div>
                                <div class="input-box">
                                    <input class="btn-color" type="submit" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php include 'includes/wplogo.php'; ?>
    </div>
    <?php include 'includes/footer.php'; ?>
</div>
<?php include 'includes/scripts.php'; ?>
</body>
</html>
