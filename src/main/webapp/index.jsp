<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>ShopEase - E-Commerce Store</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, Helvetica, sans-serif;
      background: #f7f7f8;
      color: #222;
    }

    button,
    input {
      font: inherit;
    }

    /* ================= NAVBAR ================= */

    .navbar {
      height: 70px;
      background: #fff;
      border-bottom: 1px solid #eee;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 6%;
      position: sticky;
      top: 0;
      z-index: 100;
    }

    .logo {
      font-size: 25px;
      font-weight: 800;
      color: #6c4df6;
    }

    .nav-links {
      display: flex;
      gap: 28px;
      list-style: none;
    }

    .nav-links a {
      text-decoration: none;
      color: #333;
      font-size: 15px;
      transition: 0.2s;
    }

    .nav-links a:hover {
      color: #6c4df6;
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 15px;
    }

    .search-box {
      display: flex;
      align-items: center;
      background: #f3f3f5;
      border-radius: 10px;
      padding: 0 12px;
    }

    .search-box input {
      width: 180px;
      height: 40px;
      border: none;
      outline: none;
      background: transparent;
    }

    .cart-btn {
      border: none;
      background: #6c4df6;
      color: white;
      padding: 11px 15px;
      border-radius: 9px;
      cursor: pointer;
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -8px;
      right: -8px;
      width: 20px;
      height: 20px;
      background: #ff4757;
      border-radius: 50%;
      font-size: 12px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    /* ================= HERO ================= */

    .hero {
      max-width: 1200px;
      margin: 30px auto;
      padding: 70px 60px;
      border-radius: 25px;
      color: white;
      background:
        linear-gradient(120deg, rgba(71, 47, 170, .95), rgba(108, 77, 246, .75)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=80")
        center/cover;
      display: flex;
      align-items: center;
    }

    .hero-content {
      max-width: 550px;
    }

    .hero h1 {
      font-size: 48px;
      line-height: 1.1;
      margin-bottom: 20px;
    }

    .hero p {
      font-size: 17px;
      line-height: 1.6;
      margin-bottom: 28px;
      color: #eee;
    }

    .hero-btn {
      background: white;
      color: #5a3ed1;
      border: none;
      padding: 14px 24px;
      border-radius: 10px;
      font-weight: bold;
      cursor: pointer;
    }

    /* ================= CATEGORIES ================= */

    .container {
      max-width: 1200px;
      margin: auto;
      padding: 0 20px;
    }

    .section-title {
      margin: 45px 0 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .section-title h2 {
      font-size: 27px;
    }

    .categories {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .category-btn {
      border: 1px solid #ddd;
      background: white;
      padding: 10px 18px;
      border-radius: 30px;
      cursor: pointer;
      transition: .2s;
    }

    .category-btn:hover,
    .category-btn.active {
      background: #6c4df6;
      color: white;
      border-color: #6c4df6;
    }

    /* ================= PRODUCTS ================= */

    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
      margin-bottom: 60px;
    }

    .product-card {
      background: white;
      border-radius: 16px;
      overflow: hidden;
      border: 1px solid #eee;
      transition: .25s;
    }

    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 30px rgba(0,0,0,.08);
    }

    .product-image {
      height: 230px;
      width: 100%;
      object-fit: cover;
      background: #f3f3f3;
    }

    .product-info {
      padding: 16px;
    }

    .product-category {
      color: #777;
      font-size: 12px;
      text-transform: uppercase;
      margin-bottom: 7px;
    }

    .product-name {
      font-size: 17px;
      font-weight: 600;
      margin-bottom: 10px;
    }

    .rating {
      color: #ffae00;
      font-size: 14px;
      margin-bottom: 12px;
    }

    .product-bottom {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .price {
      font-size: 19px;
      font-weight: 700;
    }

    .add-btn {
      border: none;
      background: #6c4df6;
      color: white;
      padding: 9px 13px;
      border-radius: 8px;
      cursor: pointer;
    }

    .add-btn:hover {
      background: #5637d3;
    }

    /* ================= CART ================= */

    .cart-overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,.4);
      display: none;
      z-index: 200;
    }

    .cart-overlay.show {
      display: block;
    }

    .cart-sidebar {
      position: fixed;
      right: 0;
      top: 0;
      height: 100%;
      width: 380px;
      max-width: 90%;
      background: white;
      z-index: 201;
      padding: 25px;
      transform: translateX(100%);
      transition: .3s;
      display: flex;
      flex-direction: column;
    }

    .cart-overlay.show .cart-sidebar {
      transform: translateX(0);
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding-bottom: 20px;
      border-bottom: 1px solid #eee;
    }

    .close-cart {
      border: none;
      background: #f1f1f1;
      width: 35px;
      height: 35px;
      border-radius: 50%;
      cursor: pointer;
    }

    .cart-items {
      flex: 1;
      overflow-y: auto;
      padding: 20px 0;
    }

    .cart-item {
      display: flex;
      gap: 12px;
      margin-bottom: 18px;
      padding-bottom: 18px;
      border-bottom: 1px solid #eee;
    }

    .cart-item img {
      width: 70px;
      height: 70px;
      object-fit: cover;
      border-radius: 8px;
    }

    .cart-item-info {
      flex: 1;
    }

    .cart-item-name {
      font-weight: 600;
      margin-bottom: 7px;
    }

    .remove-btn {
      margin-top: 8px;
      border: none;
      background: transparent;
      color: #ff4757;
      cursor: pointer;
      font-size: 13px;
    }

    .cart-footer {
      border-top: 1px solid #eee;
      padding-top: 20px;
    }

    .cart-total {
      display: flex;
      justify-content: space-between;
      font-size: 20px;
      font-weight: bold;
      margin-bottom: 15px;
    }

    .checkout-btn {
      width: 100%;
      border: none;
      background: #6c4df6;
      color: white;
      padding: 14px;
      border-radius: 10px;
      cursor: pointer;
      font-weight: bold;
    }

    .empty-cart {
      text-align: center;
      color: #888;
      padding-top: 50px;
    }

    /* ================= FOOTER ================= */

    footer {
      background: #17151f;
      color: white;
      padding: 45px 6%;
      text-align: center;
    }

    footer .logo {
      margin-bottom: 10px;
      display: block;
    }

    footer p {
      color: #aaa;
      font-size: 14px;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 1000px) {
      .products {
        grid-template-columns: repeat(3, 1fr);
      }

      .nav-links {
        display: none;
      }
    }

    @media (max-width: 700px) {
      .navbar {
        padding: 0 20px;
      }

      .search-box input {
        width: 110px;
      }

      .hero {
        margin: 20px;
        padding: 50px 30px;
      }

      .hero h1 {
        font-size: 36px;
      }

      .products {
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
      }

      .product-image {
        height: 180px;
      }
    }

    @media (max-width: 480px) {
      .products {
        grid-template-columns: 1fr;
      }

      .search-box {
        display: none;
      }
    }
  </style>
</head>

<body>

  <!-- NAVBAR -->
  <nav class="navbar">
    <div class="logo">ShopEase</div>

    <ul class="nav-links">
      <li><a href="#">Home</a></li>
      <li><a href="#products">Shop</a></li>
      <li><a href="#">Deals</a></li>
      <li><a href="#">Contact</a></li>
    </ul>

    <div class="nav-actions">
      <div class="search-box">
        🔍
        <input
          type="text"
          id="searchInput"
          placeholder="Search products..."
        />
      </div>

      <button class="cart-btn" id="openCart">
        🛒 Cart
        <span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </nav>

  <!-- HERO -->
  <section class="hero">
    <div class="hero-content">
      <h1>Discover Products You'll Love</h1>

      <p>
        Shop the latest trends, electronics, fashion and lifestyle products
        at amazing prices.
      </p>

      <button class="hero-btn" onclick="scrollToProducts()">
        Shop Now →
      </button>
    </div>
  </section>

  <main class="container">

    <!-- CATEGORIES -->
    <div class="section-title">
      <h2>Categories</h2>
    </div>

    <div class="categories">
      <button class="category-btn active" data-category="all">
        All
      </button>

      <button class="category-btn" data-category="electronics">
        Electronics
      </button>

      <button class="category-btn" data-category="fashion">
        Fashion
      </button>

      <button class="category-btn" data-category="shoes">
        Shoes
      </button>

      <button class="category-btn" data-category="accessories">
        Accessories
      </button>
    </div>

    <!-- PRODUCTS -->
    <div class="section-title" id="products">
      <h2>Popular Products</h2>
    </div>

    <div class="products" id="productGrid"></div>

  </main>

  <!-- CART -->
  <div class="cart-overlay" id="cartOverlay">

    <aside class="cart-sidebar">

      <div class="cart-header">
        <h2>Your Cart</h2>
        <button class="close-cart" id="closeCart">✕</button>
      </div>

      <div class="cart-items" id="cartItems">
        <div class="empty-cart">
          Your cart is empty 🛒
        </div>
      </div>

      <div class="cart-footer">
        <div class="cart-total">
          <span>Total</span>
          <span id="cartTotal">$0.00</span>
        </div>

        <button class="checkout-btn">
          Proceed to Checkout
        </button>
      </div>

    </aside>
  </div>

  <!-- FOOTER -->
  <footer>
    <span class="logo">ShopEase</span>
    <p>© 2026 ShopEase. All rights reserved.</p>
  </footer>

  <script>

    // ================= PRODUCT DATA =================

    const products = [
      {
        id: 1,
        name: "Wireless Headphones",
        category: "electronics",
        price: 79.99,
        rating: 4.8,
        image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 2,
        name: "Classic Sneakers",
        category: "shoes",
        price: 64.99,
        rating: 4.6,
        image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 3,
        name: "Minimal Watch",
        category: "accessories",
        price: 129.99,
        rating: 4.9,
        image:
          "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 4,
        name: "Denim Jacket",
        category: "fashion",
        price: 89.99,
        rating: 4.5,
        image:
          "https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 5,
        name: "Smartphone",
        category: "electronics",
        price: 699.99,
        rating: 4.9,
        image:
          "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 6,
        name: "Sunglasses",
        category: "accessories",
        price: 39.99,
        rating: 4.4,
        image:
          "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 7,
        name: "Running Shoes",
        category: "shoes",
        price: 94.99,
        rating: 4.7,
        image:
          "https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?auto=format&fit=crop&w=600&q=80"
      },
      {
        id: 8,
        name: "Cotton T-Shirt",
        category: "fashion",
        price: 24.99,
        rating: 4.3,
        image:
          "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80"
      }
    ];


    // ================= STATE =================

    let cart = [];
    let currentCategory = "all";


    // ================= ELEMENTS =================

    const productGrid = document.getElementById("productGrid");
    const searchInput = document.getElementById("searchInput");
    const cartCount = document.getElementById("cartCount");
    const cartItems = document.getElementById("cartItems");
    const cartTotal = document.getElementById("cartTotal");
    const cartOverlay = document.getElementById("cartOverlay");


    // ================= DISPLAY PRODUCTS =================

    function displayProducts() {

      const searchTerm = searchInput.value.toLowerCase();

      const filteredProducts = products.filter(product => {

        const matchesCategory =
          currentCategory === "all" ||
          product.category === currentCategory;

        const matchesSearch =
          product.name.toLowerCase().includes(searchTerm);

        return matchesCategory && matchesSearch;
      });


      if (filteredProducts.length === 0) {
        productGrid.innerHTML = `
          <p style="grid-column:1/-1;text-align:center;padding:40px">
            No products found.
          </p>
        `;

        return;
      }


      productGrid.innerHTML = filteredProducts.map(product => {

        return `
          <div class="product-card">

            <img
              class="product-image"
              src="${product.image}"
              alt="${product.name}"
            />

            <div class="product-info">

              <div class="product-category">
                ${product.category}
              </div>

              <div class="product-name">
                ${product.name}
              </div>

              <div class="rating">
                ⭐ ${product.rating}
              </div>

              <div class="product-bottom">

                <div class="price">
                  $${product.price.toFixed(2)}
                </div>

                <button
                  class="add-btn"
                  onclick="addToCart(${product.id})"
                >
                  Add +
                </button>

              </div>

            </div>

          </div>
        `;

      }).join("");
    }


    // ================= ADD TO CART =================

    function addToCart(productId) {

      const product = products.find(
        product => product.id === productId
      );

      const existingProduct = cart.find(
        item => item.id === productId
      );


      if (existingProduct) {
        existingProduct.quantity++;
      } else {
        cart.push({
          ...product,
          quantity: 1
        });
      }


      updateCart();

      // Open cart after adding
      cartOverlay.classList.add("show");
    }


    // ================= REMOVE FROM CART =================

    function removeFromCart(productId) {

      cart = cart.filter(
        item => item.id !== productId
      );

      updateCart();
    }


    // ================= UPDATE CART =================

    function updateCart() {

      const totalItems = cart.reduce(
        (total, item) => total + item.quantity,
        0
      );

      cartCount.textContent = totalItems;


      if (cart.length === 0) {

        cartItems.innerHTML = `
          <div class="empty-cart">
            Your cart is empty 🛒
          </div>
        `;

        cartTotal.textContent = "$0.00";

        return;
      }


      cartItems.innerHTML = cart.map(item => {

        return `
          <div class="cart-item">

            <img
              src="${item.image}"
              alt="${item.name}"
            />

            <div class="cart-item-info">

              <div class="cart-item-name">
                ${item.name}
              </div>

              <div>
                $${item.price.toFixed(2)}
                × ${item.quantity}
              </div>

              <button
                class="remove-btn"
                onclick="removeFromCart(${item.id})"
              >
                Remove
              </button>

            </div>

          </div>
        `;

      }).join("");


      const total = cart.reduce(
        (sum, item) =>
          sum + item.price * item.quantity,
        0
      );

      cartTotal.textContent =
        `$${total.toFixed(2)}`;
    }


    // ================= CATEGORY FILTER =================

    document
      .querySelectorAll(".category-btn")
      .forEach(button => {

        button.addEventListener("click", () => {

          document
            .querySelectorAll(".category-btn")
            .forEach(btn =>
              btn.classList.remove("active")
            );

          button.classList.add("active");

          currentCategory =
            button.dataset.category;

          displayProducts();
        });

      });


    // ================= SEARCH =================

    searchInput.addEventListener(
      "input",
      displayProducts
    );


    // ================= CART OPEN/CLOSE =================

    document
      .getElementById("openCart")
      .addEventListener("click", () => {

        cartOverlay.classList.add("show");

      });


    document
      .getElementById("closeCart")
      .addEventListener("click", () => {

        cartOverlay.classList.remove("show");

      });


    cartOverlay.addEventListener("click", event => {

      if (event.target === cartOverlay) {
        cartOverlay.classList.remove("show");
      }

    });


    // ================= HERO BUTTON =================

    function scrollToProducts() {

      document
        .getElementById("products")
        .scrollIntoView({
          behavior: "smooth"
        });

    }


    // ================= INITIALIZE =================

    displayProducts();

  </script>

</body>
</html>
