<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ÉLÉGANCE — Luxury Store</title>

  <style>
    @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600&family=Playfair+Display:ital,wght@0,400;0,500;1,400&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --black: #090909;
      --dark: #111111;
      --gold: #d6b56d;
      --gold-light: #ead39b;
      --white: #ffffff;
      --muted: #888888;
      --border: rgba(255,255,255,0.1);
    }

    body {
      background: var(--black);
      color: var(--white);
      font-family: "DM Sans", sans-serif;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    /* ================= NAVBAR ================= */

    header {
      border-bottom: 1px solid var(--border);
      background: rgba(9,9,9,0.95);
    }

    .navbar {
      max-width: 1300px;
      height: 80px;
      margin: auto;
      padding: 0 30px;

      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo {
      font-family: "Playfair Display", serif;
      font-size: 25px;
      letter-spacing: 7px;
    }

    .nav-links {
      display: flex;
      gap: 38px;
      font-size: 13px;
      color: #aaa;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    .nav-links a {
      transition: .3s;
    }

    .nav-links a:hover {
      color: var(--gold);
    }

    .nav-icons {
      display: flex;
      gap: 22px;
      color: #bbb;
      font-size: 20px;
    }

    /* ================= HERO ================= */

    .hero {
      min-height: 650px;
      position: relative;

      display: flex;
      align-items: center;

      background:
        linear-gradient(
          90deg,
          rgba(0,0,0,.95) 0%,
          rgba(0,0,0,.75) 45%,
          rgba(0,0,0,.25) 100%
        ),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85");

      background-size: cover;
      background-position: center;
    }

    .hero-content {
      width: 1300px;
      max-width: 100%;
      padding: 40px 30px;
      margin: auto;
    }

    .eyebrow {
      color: var(--gold);
      font-size: 12px;
      letter-spacing: 5px;
      text-transform: uppercase;
      margin-bottom: 22px;
    }

    .hero h1 {
      font-family: "Playfair Display", serif;
      font-size: clamp(60px, 8vw, 105px);
      font-weight: 400;
      line-height: .95;
    }

    .hero h1 span {
      color: var(--gold);
      font-style: italic;
    }

    .hero p {
      max-width: 500px;
      margin-top: 30px;
      color: #aaa;
      font-size: 16px;
      line-height: 1.8;
    }

    .gold-button {
      display: inline-block;
      margin-top: 35px;
      padding: 16px 30px;

      background: var(--gold);
      color: #080808;

      font-size: 12px;
      letter-spacing: 2px;
      text-transform: uppercase;

      border: 1px solid var(--gold);
      transition: .3s;
    }

    .gold-button:hover {
      background: transparent;
      color: var(--gold);
    }

    /* ================= PRODUCTS ================= */

    .products-section {
      max-width: 1300px;
      margin: auto;
      padding: 110px 30px;
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: end;
      margin-bottom: 50px;
    }

    .section-header h2 {
      font-family: "Playfair Display", serif;
      font-size: 48px;
      font-weight: 400;
    }

    .view-all {
      color: var(--gold);
      font-size: 12px;
      letter-spacing: 2px;
      text-transform: uppercase;
      border-bottom: 1px solid var(--gold);
      padding-bottom: 8px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 25px;
    }

    .product {
      cursor: pointer;
    }

    .product-image {
      height: 430px;
      position: relative;
      overflow: hidden;
      background: #161616;
    }

    .product-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: .7s ease;
    }

    .product:hover img {
      transform: scale(1.06);
    }

    .wishlist {
      position: absolute;
      top: 15px;
      right: 15px;

      width: 42px;
      height: 42px;

      display: flex;
      align-items: center;
      justify-content: center;

      border-radius: 50%;
      border: 1px solid rgba(255,255,255,.15);

      background: rgba(0,0,0,.55);
      color: white;
      font-size: 18px;
    }

    .add-cart {
      position: absolute;
      left: 15px;
      right: 15px;
      bottom: -60px;

      padding: 15px;
      border: none;

      background: var(--gold);
      color: #000;

      text-align: center;
      font-size: 11px;
      letter-spacing: 2px;
      text-transform: uppercase;

      transition: .4s;
    }

    .product:hover .add-cart {
      bottom: 15px;
    }

    .product-info {
      padding-top: 20px;
    }

    .category {
      color: #666;
      font-size: 10px;
      letter-spacing: 2px;
      text-transform: uppercase;
    }

    .product-row {
      display: flex;
      justify-content: space-between;
      gap: 15px;
      margin-top: 8px;
    }

    .product-name {
      font-family: "Playfair Display", serif;
      font-size: 20px;
    }

    .price {
      color: var(--gold);
      font-size: 14px;
      white-space: nowrap;
    }

    /* ================= COLLECTION ================= */

    .collection {
      max-width: 1300px;
      margin: auto;
      padding: 0 30px 110px;
    }

    .collection-box {
      min-height: 500px;

      display: grid;
      grid-template-columns: 1fr 1fr;

      background: #17130d;
    }

    .collection-content {
      padding: 70px;
      display: flex;
      align-items: center;
    }

    .collection h2 {
      font-family: "Playfair Display", serif;
      font-size: 55px;
      font-weight: 400;
      line-height: 1.05;
    }

    .collection h2 em {
      color: var(--gold);
    }

    .collection p {
      max-width: 430px;
      color: #888;
      line-height: 1.8;
      margin-top: 25px;
    }

    .outline-button {
      display: inline-block;
      margin-top: 30px;
      padding: 14px 25px;

      border: 1px solid #555;
      color: white;

      font-size: 11px;
      letter-spacing: 2px;
      text-transform: uppercase;

      transition: .3s;
    }

    .outline-button:hover {
      border-color: var(--gold);
      color: var(--gold);
    }

    .collection-image {
      min-height: 500px;
      background:
        url("https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?auto=format&fit=crop&w=1200&q=85")
        center / cover;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
      border-top: 1px solid var(--border);
      border-bottom: 1px solid var(--border);

      text-align: center;
      padding: 90px 30px;
    }

    .newsletter h2 {
      font-family: "Playfair Display", serif;
      font-size: 45px;
      font-weight: 400;
      margin-top: 15px;
    }

    .newsletter p {
      max-width: 500px;
      margin: 18px auto;
      color: #777;
      line-height: 1.7;
    }

    .email-box {
      max-width: 450px;
      margin: 35px auto 0;

      display: flex;
      border-bottom: 1px solid #555;
    }

    .email-box input {
      flex: 1;
      padding: 15px 5px;

      background: transparent;
      border: none;
      outline: none;

      color: white;
    }

    .email-box input::placeholder {
      color: #555;
    }

    .email-box button {
      background: none;
      border: none;
      color: var(--gold);

      font-size: 11px;
      letter-spacing: 2px;
      text-transform: uppercase;

      cursor: pointer;
    }

    /* ================= FOOTER ================= */

    footer {
      max-width: 1300px;
      margin: auto;
      padding: 70px 30px 30px;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 50px;
    }

    footer h3 {
      font-family: "Playfair Display", serif;
      font-size: 23px;
      letter-spacing: 4px;
    }

    footer h4 {
      font-size: 11px;
      letter-spacing: 2px;
      text-transform: uppercase;
    }

    footer p,
    footer a {
      color: #666;
      font-size: 13px;
      line-height: 2.2;
    }

    footer .description {
      max-width: 280px;
      margin-top: 15px;
    }

    .footer-links {
      margin-top: 15px;
      display: flex;
      flex-direction: column;
    }

    .footer-links a:hover {
      color: var(--gold);
    }

    .copyright {
      margin-top: 60px;
      padding-top: 20px;
      border-top: 1px solid var(--border);

      color: #444;
      font-size: 11px;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 900px) {

      .nav-links {
        display: none;
      }

      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .collection-box {
        grid-template-columns: 1fr;
      }

      .collection-content {
        padding: 50px 30px;
      }

      .collection-image {
        min-height: 400px;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 600px) {

      .navbar {
        padding: 0 18px;
      }

      .logo {
        font-size: 18px;
        letter-spacing: 4px;
      }

      .nav-icons {
        gap: 12px;
      }

      .hero {
        min-height: 580px;
      }

      .hero-content {
        padding: 30px 20px;
      }

      .products-section {
        padding: 75px 20px;
      }

      .section-header h2 {
        font-size: 35px;
      }

      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-image {
        height: 480px;
      }

      .collection {
        padding: 0 20px 75px;
      }

      .collection h2 {
        font-size: 42px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>

  <!-- NAVIGATION -->
  <header>
    <div class="navbar">

      <a href="#" class="logo">ÉLÉGANCE</a>

      <nav class="nav-links">
        <a href="#">New Arrivals</a>
        <a href="#">Collections</a>
        <a href="#">Accessories</a>
        <a href="#">About</a>
      </nav>

      <div class="nav-icons">
        <span>⌕</span>
        <span>♡</span>
        <span>🛍</span>
      </div>

    </div>
  </header>


  <!-- HERO -->
  <section class="hero">

    <div class="hero-content">

      <div class="eyebrow">
        The Art of Luxury
      </div>

      <h1>
        Timeless.
        <br>
        <span>Exceptional.</span>
      </h1>

      <p>
        Discover a curated collection of exceptional pieces
        crafted for those who appreciate the extraordinary.
      </p>

      <a href="#" class="gold-button">
        Explore Collection
      </a>

    </div>

  </section>


  <!-- PRODUCTS -->
  <section class="products-section">

    <div class="section-header">

      <div>
        <div class="eyebrow">
          Curated For You
        </div>

        <h2>Featured Collection</h2>
      </div>

      <a href="#" class="view-all">
        View All →
      </a>

    </div>


    <div class="product-grid">

      <!-- PRODUCT 1 -->
      <article class="product">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=900&q=85"
            alt="Luxury watch"
          >

          <button class="wishlist">♡</button>

          <div class="add-cart">
            Add to Bag
          </div>

        </div>

        <div class="product-info">

          <div class="category">
            Timepieces
          </div>

          <div class="product-row">
            <div class="product-name">
              Noir Élan Watch
            </div>

            <div class="price">
              $4,850
            </div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 2 -->
      <article class="product">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=900&q=85"
            alt="Luxury leather bag"
          >

          <button class="wishlist">♡</button>

          <div class="add-cart">
            Add to Bag
          </div>

        </div>

        <div class="product-info">

          <div class="category">
            Handbags
          </div>

          <div class="product-row">
            <div class="product-name">
              Aurelia Leather Bag
            </div>

            <div class="price">
              $2,950
            </div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 3 -->
      <article class="product">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=900&q=85"
            alt="Luxury fragrance"
          >

          <button class="wishlist">♡</button>

          <div class="add-cart">
            Add to Bag
          </div>

        </div>

        <div class="product-info">

          <div class="category">
            Fragrance
          </div>

          <div class="product-row">
            <div class="product-name">
              Maison Noir
            </div>

            <div class="price">
              $420
            </div>
          </div>

        </div>

      </article>


      <!-- PRODUCT 4 -->
      <article class="product">

        <div class="product-image">

          <img
            src="https://images.unsplash.com/photo-1549298916-b41d501d3772?auto=format&fit=crop&w=900&q=85"
            alt="Luxury shoes"
          >

          <button class="wishlist">♡</button>

          <div class="add-cart">
            Add to Bag
          </div>

        </div>

        <div class="product-info">

          <div class="category">
            Footwear
          </div>

          <div class="product-row">
            <div class="product-name">
              Velour Signature
            </div>

            <div class="price">
              $1,280
            </div>
          </div>

        </div>

      </article>

    </div>

  </section>


  <!-- COLLECTION -->
  <section class="collection">

    <div class="collection-box">

      <div class="collection-content">

        <div>

          <div class="eyebrow">
            Private Collection
          </div>

          <h2>
            Made for
            <br>
            <em>the remarkable.</em>
          </h2>

          <p>
            Rare materials, meticulous craftsmanship and timeless
            silhouettes come together in our signature collection.
          </p>

          <a href="#" class="outline-button">
            Discover More
          </a>

        </div>

      </div>

      <div class="collection-image"></div>

    </div>

  </section>


  <!-- NEWSLETTER -->
  <section class="newsletter">

    <div class="eyebrow">
      Private Access
    </div>

    <h2>
      Enter the world of Élégance
    </h2>

    <p>
      Receive invitations to private collections, exclusive
      releases and exceptional experiences.
    </p>

    <form class="email-box">

      <input
        type="email"
        placeholder="Your email address"
      >

      <button type="submit">
        Join
      </button>

    </form>

  </section>


  <!-- FOOTER -->
  <footer>

    <div class="footer-grid">

      <div>
        <h3>ÉLÉGANCE</h3>

        <p class="description">
          A destination for timeless luxury and
          exceptional craftsmanship.
        </p>
      </div>

      <div>
        <h4>Shop</h4>

        <div class="footer-links">
          <a href="#">New Arrivals</a>
          <a href="#">Watches</a>
          <a href="#">Handbags</a>
          <a href="#">Fragrance</a>
        </div>
      </div>

      <div>
        <h4>Client Care</h4>

        <div class="footer-links">
          <a href="#">Contact</a>
          <a href="#">Shipping & Returns</a>
          <a href="#">Size Guide</a>
          <a href="#">Appointments</a>
        </div>
      </div>

      <div>
        <h4>Follow</h4>

        <div class="footer-links">
          <a href="#">Instagram</a>
          <a href="#">Pinterest</a>
          <a href="#">Facebook</a>
        </div>
      </div>

    </div>

    <div class="copyright">
      © 2026 ÉLÉGANCE. All rights reserved.
    </div>

  </footer>

</body>
</html>
