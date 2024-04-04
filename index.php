<?php include 'includes/session.php'; ?>
<style>
.underline-1 {
    text-decoration: underline;
    text-decoration-color: #103231 !important;
    text-decoration-thickness: 3px;
}

.btncolor {
    background-color: #103231 !important;
    color: #fff !important;
}

.btncolor:hover {
    background-color: #103231 !important;
    color: #fff !important;
}

.thumbnail-img {
    width: 100%;
    /* Make the image width fill the container */
    height: auto;
    /* Automatically adjust the height to maintain the aspect ratio */
    max-width: 100%;
    /* Ensure images don't exceed the container's width */
    max-height: 230px;
    /* Set a maximum height for the images */
}
</style>
<?php include 'includes/header.php'; ?>

<body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
        <?php include 'includes/navbar.php'; ?>

        <div class="content-wrapper">
            <!-- Main content -->
            <div class="row">
                <div class="col-sm-12">
                    <?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
                    <div class="hero_video_wrapper with_mobile">
                        <video src="img-video/video/Indore-Pears_header.mp4" class="video desktop" preload="metadata"
                            loop="" muted="" playsinline="" disableremoteplayback="" autoplay=""
                            style="width: 100%;"></video>
                    </div>
                    <div class="container">
                        <h1 className="">Our Top <span><b>Produc<u class="underline-1">ts</u></b></span></h1>
                        <div class="row">
                            <div class="col-sm-6 col-md-3">
                                <div class="thumbnail">
                                    <div class="thumbnail-img">
                                        <img src="img-video/img/ring.jpg" alt="Category 1"
                                            style="height: 100%;width: 100%;">
                                    </div>
                                    <div class="caption">
                                        <h3>Real Diamond Ring</h3>
                                        <p>Description of Category 1.</p>
                                        <p><a href="category.php?category=Rings" class="btn btncolor"
                                                role="button">Explore</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="thumbnail">
                                    <div class="thumbnail-img">
                                        <img src="img-video/img/RealDiamond.jpg" alt="Category 2"
                                            style="height: 100%;width: 100%;">
                                    </div>
                                    <div class="caption">
                                        <h3>Real Diamond</h3>
                                        <p>Description of Category 2.</p>
                                        <p><a href="category.php?category=Pendants" class="btn btncolor"
                                                role="button">Explore</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="thumbnail">
                                    <div class="thumbnail-img">
                                        <img src="img-video/img/RafDiamond2.jpg" alt="Category 2"
                                            style="height: 100%;width: 100%;">
                                    </div>
                                    <div class="caption">
                                        <h3>Raf Diamond</h3>
                                        <p>Description of Category 2.</p>
                                        <p><a href="category.php?category=Earring" class="btn btncolor"
                                                role="button">Explore</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="thumbnail">
                                    <div class="thumbnail-img">
                                        <img src="img-video/img/1.jpg" alt="Category 2"
                                            style="height: 100%;width: 100%;">
                                    </div>
                                    <div class="caption">
                                        <h3>Fancy Diamond</h3>
                                        <p>Description of Category 2.</p>
                                        <p><a href="category.php?category=Bracelets" class="btn btncolor"
                                                role="button">Explore</a></p>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <!-- warenty div -->
                    <div class="container">
                        <section className=" logomain mb-4">
                            <div class="c-new ">
                                <div class="section__color-wrapper  promise-icons">
                                    <div class="mySect py-2">
                                        <div class="img-row text-center row justify-content-around pb-1 pb-lg-0"
                                            style=max-width: 100%, margin: auto>
                                            <div class="col-3 pipe p-0">
                                                <div class="row myIconRow">
                                                    <div class="col-md-12 myIcon">
                                                        <img alt="" loading="lazy"
                                                            src="//www.boat-lifestyle.com/cdn/shop/files/Group_334305_small.svg?v=1682336123" />
                                                    </div>
                                                    <div class="col-md-12 myText">
                                                        <p class="mb-0"><b>Lifetime</b><br class="d-lg-none" /> Warranty
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3 pipe p-0">
                                                <div class="row myIconRow">
                                                    <div class="col-md-12 myIcon">
                                                        <img alt="" loading="lazy"
                                                            src="//www.boat-lifestyle.com/cdn/shop/files/Group_334304_small.svg?v=1682336123" />
                                                    </div>
                                                    <div class="col-md-12 myText">
                                                        <p class="mb-0"><b>7-day</b><br class="d-lg-none" /> EASY
                                                            EXCHANGE
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3 pipe p-0">
                                                <div class="row myIconRow">
                                                    <div class="col-md-12 myIcon">
                                                        <img alt="" loading="lazy"
                                                            src="//www.boat-lifestyle.com/cdn/shop/files/Group_334303_small.svg?v=1682336123" />
                                                    </div>
                                                    <div class="col-md-12 myText">
                                                        <p class="mb-0"><b>Free</b><br class="d-lg-none" /> Shipping</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-3 pipe p-0">
                                                <div class="row myIconRow">
                                                    <div class="col-md-12 myIcon">
                                                        <img alt="" loading="lazy"
                                                            src="//www.boat-lifestyle.com/cdn/shop/files/Group_334302_small.svg?v=1682336123" />
                                                    </div>
                                                    <div class="col-md-12 myText">
                                                        <p class="mb-0"><b>GST</b><br class="d-lg-none" /> Billing</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

                    <!-- offer-timer -->


                    <!-- <div class="container">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="images/slider1.jpg" alt="First slide">
                                    </div>
                                    <div class="item">
                                        <img src="images/slider2.jpg" alt="Second slide">
                                    </div>
                                    <div class="item">
                                        <img src="images/slider4.jpg" alt="Third slide">
                                    </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                    <span class="fa fa-angle-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                    <span class="fa fa-angle-right"></span>
                                </a>
                            </div>
                    </div> -->


                    <?php
		       			$month = date('m');
		       			$conn = $pdo->open();
		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT *, SUM(quantity) AS total_qty FROM details LEFT JOIN sales ON sales.id=details.sales_id LEFT JOIN products ON products.id=details.product_id WHERE MONTH(sales_date) = '$month' GROUP BY details.product_id ORDER BY total_qty DESC LIMIT 6");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>₹ ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?>
                </div>
                <div class="col-sm-3">
                    <?php include 'includes/sidebar.php'; ?>
                </div>
            </div>


            <?php include 'includes/wplogo.php'; ?>

        </div>
        <?php include 'includes/footer.php'; ?>
    </div>

    <?php include 'includes/scripts.php'; ?>
</body>

</html>