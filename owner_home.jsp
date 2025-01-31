<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Car Rental Service - Rent a car for your next trip.">
    <title>Car Rental Service-owner</title>
    <link rel="icon" type="image/x-icon" href="images/logo.jpg">
    <link rel="stylesheet" href="css/style.css">
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="logo">
                <h1>Car Rental Service</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="owner_home.jsp">Home</a></li>
                    <li><a href="insert_car.html">Add Cars</a></li>
                    <li><a href="view_rentals.jsp">View booking </a></li>
                    <li><a href="viewadminlogs.jsp">View user </a></li>
                    <li><a href="insert_rentals.html">rentals</a></li>
                    <li><a href="insert_payment.html">payments</a></li>
                    <li><a href="changepwd.html">Change password</a></li>
                    <li><a href="login.html">logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <! -- intro section -- !>
    <section class="about-section">
    <div class="home">
        <div class="main-sec">
            <div class="left">
                <p class="txt1">Easy And Fast Way To <span style="color: orange;">Rent</span> Your Car</p>
                <p>At Car Rentals, we provide a seamless experience for renting cars, whether you're traveling for business or leisure. Our fleet of cars includes everything from compact city vehicles to luxurious sedans and SUVs. Our goal is to make your trip more convenient and enjoyable!</p>
            </div>

            <div class="right">
                <img src="images/mustang.png" alt="bg">
            </div>
        </div>
    </div>
    </section>
    <! loc-section !>
<section class="loc-sec">
    <div class="main-sec">
        <!-- Pick Up Location -->
        <div class="pick">
            <label for="location">Pick Up Location</label>
            <select id="location" name="location">
                <option value="andaman_nicobar">Andaman and Nicobar Islands</option>
                <option value="andhra_pradesh">Andhra Pradesh</option>
                <option value="arunachal_pradesh">Arunachal Pradesh</option>
                <option value="assam">Assam</option>
                <option value="bihar">Bihar</option>
                <option value="chandigarh">Chandigarh</option>
                <option value="chhattisgarh">Chhattisgarh</option>
                <option value="delhi">Delhi</option>
                <option value="goa">Goa</option>
                <option value="gujarat">Gujarat</option>
                <option value="haryana">Haryana</option>
                <option value="himachal_pradesh">Himachal Pradesh</option>
                <option value="jammu_kashmir">Jammu and Kashmir</option>
                <option value="jharkhand">Jharkhand</option>
                <option value="karnataka">Karnataka</option>
                <option value="kerala">Kerala</option>
                <option value="lakshadweep">Lakshadweep</option>
                <option value="madhya_pradesh">Madhya Pradesh</option>
                <option value="maharashtra">Maharashtra</option>
                <option value="manipur">Manipur</option>
                <option value="meghalaya">Meghalaya</option>
                <option value="mizoram">Mizoram</option>
                <option value="nagaland">Nagaland</option>
                <option value="odisha">Odisha</option>
                <option value="puducherry">Puducherry</option>
                <option value="punjab">Punjab</option>
                <option value="rajasthan">Rajasthan</option>
                <option value="sikkim">Sikkim</option>
                <option value="tamil_nadu">Tamil Nadu</option>
                <option value="telangana">Telangana</option>
                <option value="tripura">Tripura</option>
                <option value="uttar_pradesh">Uttar Pradesh</option>
                <option value="uttarakhand">Uttarakhand</option>
                <option value="west_bengal">West Bengal</option>
            </select>
        </div>

        <!-- Pick Up Date -->
        <div class="pick">
            <label for="pickup-date">Pick Up Date</label>
            <input type="date" id="pickup-date" name="pickup-date" required>
        </div>

        <!-- Pick Up Time -->
        <div class="pick">
            <label for="pickup-time">Pick Up Time</label>
            <input type="time" id="pickup-time" name="pickup-time" required>
        </div>

        <!-- Return Date -->
        <div class="pick">
            <label for="return-date">Return Date</label>
            <input type="date" id="return-date" name="return-date" required>
        </div>

        <!-- Search Button -->
        <div class="pick">
            <input type="button" value="Search Car" onclick="window.location.href='carlist.html'" > 
        </div>
    </div>
</section>

    <!-- Car Rental Services Section -->
    <section id="cars" class="cars-section">
        <div class="container">
            <h2>Our Most Featured Cars</h2>
            <div class="car-list">
                <div class="car">
                    <img src="images/swift.jpg" alt="Car 1">
                    <h3>Suzuki Swift</h3>
                    <p>Comfortable for family trips.</p>
                    <p><strong>₹1100/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/thar.jpeg" alt="Car 2">
                    <h3>Mahindra Thar 4X4</h3>
                    <p>Perfect for Enjoyment and Adventure travel.</p>
                    <p><strong>₹2500/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/minivan.jpg" alt="Car 3">
                    <h3>Compact - MiniVan</h3>
                    <p>Economical and easy to park in the city.</p>
                    <p><strong>₹2000/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/porsche.jpg" alt="Car 4">
                    <h3>Porsche</h3>
                    <p>Luxury and Passion</p>
                    <p><strong>₹15000/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/mustang.jpg" alt="Car 5">
                    <h3>Ford Mustang</h3>
                    <p>Sporty Feelzzz</p>
                    <p><strong>₹10000/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
                <div class="car">
                    <img src="images/supra.jpg" alt="Car 6">
                    <h3>Toyota Supra</h3>
                    <p>Lets Race on street Stutututuut</p>
                    <p><strong>₹15000/- per day</strong></p>
                    <a href="#book" class="btn">Book Now</a>
                </div>
            </div>
        </div>
    </section>
    <! Achieve section !>
<section class="achie-sec">
        <div class="txt">
            <p class="txt1">Our <span>Achievement</span></p>
            <p>Statisfactin Of our Customers </p>
        </div>

        <div class="main-sec">
            <div class="box">
                <p class="txt1">4000+</p>
                <p>Active Member</p>
            </div>

            <div class="box">
                <p class="txt1">70+</p>
                <p>Car Color</p>
            </div>

            <div class="box">
                <p class="txt1">80+</p>
                <p>Car Model</p>
            </div>

            <div class="box">
                <p class="txt1">10k</p>
                <p>Positive Rating</p>
            </div>
        </div>
    </section>
    <! Start sec !>
        <section class="start-sec">
        <div class="main-sec">
            <div class="left">
                <p class="txt1">Ready To Get Start?</p>
                <p class="txt2">At Car Rentals, we provide a seamless experience for renting cars, whether you're traveling for business or leisure. Our fleet of cars includes everything from compact city vehicles to luxurious sedans and SUVs. Our goal is to make your trip more convenient and enjoyable!.</p>
                <div class="btn">
                    <input type="button" value="Contact US" onclick="window.location.href='contact.html'" >
                </div>
            </div>

            <div class="right">
                <img src="images/verna.png" alt="">
            </div>
        </div>
    </section>


    <!-- Footer Section -->
    <footer>
        <div class="container">
            <p>&copy; 2024 Car Rental Service. All rights reserved.</p>
            <div class="social-media">
                <a href="#">Facebook</a>
                <a href="#">Instagram</a>
                <a href="#">Twitter</a>
            </div>
        </div>
    </footer>
</body>
</html>
