<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Next-Gen Shopping Experience</title>

    <!-- Google Fonts & Font Awesome 6 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #090d16;
            --bg-surface: #111726;
            --bg-card: rgba(22, 30, 49, 0.7);
            --border: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(99, 102, 241, 0.4);
            
            --primary: #f8fafc;
            --muted: #94a3b8;
            --accent: #6366f1;
            --accent-gradient: linear-gradient(135deg, #6366f1 0%, #8b5cf6 50%, #d946ef 100%);
            --accent-glow: rgba(99, 102, 241, 0.25);
            
            --success: #10b981;
            --warning: #f59e0b;
            --radius-sm: 8px;
            --radius: 16px;
            --radius-lg: 24px;
            
            --shadow-subtle: 0 4px 20px rgba(0, 0, 0, 0.35);
            --shadow-glow: 0 10px 30px -5px rgba(99, 102, 241, 0.3);
            --transition: 0.25s cubic-bezier(0.16, 1, 0.3, 1);
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.6;
            overflow-x: hidden;
            -webkit-font-smoothing: antialiased;
        }

        a { color: inherit; text-decoration: none; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; }
        input { font-family: inherit; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== UI BUTTONS ===== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 26px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
        }
        .btn-primary {
            background: var(--accent-gradient);
            color: #fff;
            box-shadow: var(--shadow-glow);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 35px -3px rgba(99, 102, 241, 0.5);
        }
        .btn-secondary {
            background: rgba(255, 255, 255, 0.05);
            color: #fff;
            border: 1px solid var(--border);
            backdrop-filter: blur(10px);
        }
        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        /* ===== HEADER ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(9, 13, 22, 0.75);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 76px;
            gap: 20px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.5px;
        }
        .brand .logo-icon {
            width: 38px;
            height: 38px;
            border-radius: 10px;
            background: var(--accent-gradient);
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 18px;
            box-shadow: var(--shadow-glow);
        }
        .brand span span {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        nav.main-nav a {
            padding: 8px 16px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 500;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav a:hover, nav.main-nav a.active {
            color: #fff;
            background: rgba(255, 255, 255, 0.05);
        }

        .search-box {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--border);
            border-radius: 999px;
            padding: 0 16px;
            transition: var(--transition);
            width: 220px;
        }
        .search-box:focus-within {
            width: 280px;
            background: rgba(255, 255, 255, 0.08);
            border-color: var(--accent);
            box-shadow: 0 0 0 4px var(--accent-glow);
        }
        .search-box input {
            border: none;
            background: transparent;
            padding: 10px 0;
            color: #fff;
            font-size: 13px;
            outline: none;
            width: 100%;
        }
        .search-box i { color: var(--muted); margin-right: 8px; font-size: 13px; }

        .actions-group {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .icon-badge-btn {
            position: relative;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--border);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
        }
        .icon-badge-btn:hover {
            color: #fff;
            background: rgba(255, 255, 255, 0.09);
            border-color: rgba(255, 255, 255, 0.2);
        }
        .badge-count {
            position: absolute;
            top: -3px;
            right: -3px;
            background: var(--accent-gradient);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            height: 20px;
            min-width: 20px;
            border-radius: 10px;
            padding: 0 5px;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
        }

        /* ===== HERO BANNER ===== */
        .hero {
            position: relative;
            padding: 90px 0 60px;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            top: -30%;
            left: 50%;
            transform: translateX(-50%);
            width: 800px;
            height: 400px;
            background: radial-gradient(circle, rgba(99, 102, 241, 0.25) 0%, rgba(0,0,0,0) 70%);
            z-index: 0;
            filter: blur(60px);
        }
        .hero-content {
            position: relative;
            z-index: 1;
            text-align: center;
            max-width: 800px;
            margin: 0 auto;
        }
        .pill-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 16px;
            background: rgba(99, 102, 241, 0.1);
            border: 1px solid rgba(99, 102, 241, 0.3);
            border-radius: 999px;
            color: #a5b4fc;
            font-size: 13px;
            font-weight: 600;
            margin-bottom: 24px;
        }
        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 58px;
            line-height: 1.1;
            font-weight: 700;
            margin-bottom: 20px;
            letter-spacing: -1.5px;
        }
        .hero h1 span {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .hero p {
            font-size: 18px;
            color: var(--muted);
            margin-bottom: 36px;
            font-weight: 400;
        }
        .hero .cta-row {
            display: flex;
            justify-content: center;
            gap: 16px;
        }

        /* ===== CATEGORIES ===== */
        .section {
            padding: 64px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            margin-bottom: 32px;
        }
        .section-header h2 {
            font-size: 28px;
            font-family: 'Space Grotesk', sans-serif;
            letter-spacing: -0.5px;
        }
        .section-header p {
            color: var(--muted);
            font-size: 14px;
        }

        .category-scroll {
            display: flex;
            gap: 14px;
            overflow-x: auto;
            padding-bottom: 8px;
        }
        .category-scroll::-webkit-scrollbar { display: none; }
        .cat-chip {
            flex-shrink: 0;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 12px 22px;
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: 999px;
            cursor: pointer;
            transition: var(--transition);
            color: var(--muted);
            font-size: 14px;
            font-weight: 500;
        }
        .cat-chip.active, .cat-chip:hover {
            color: #fff;
            background: rgba(99, 102, 241, 0.15);
            border-color: var(--accent);
        }

        /* ===== PRODUCTS GRID ===== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            backdrop-filter: blur(12px);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--border-hover);
            box-shadow: var(--shadow-glow);
        }
        .product-media {
            position: relative;
            padding-top: 100%;
            background: #0f1523;
            overflow: hidden;
        }
        .product-media img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-card:hover .product-media img {
            transform: scale(1.08);
        }
        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: rgba(15, 23, 42, 0.85);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            color: #a5b4fc;
            padding: 4px 10px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
        }
        .wishlist-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: rgba(15, 23, 42, 0.7);
            backdrop-filter: blur(8px);
            color: #fff;
            display: grid;
            place-items: center;
            transition: var(--transition);
            border: 1px solid rgba(255, 255, 255, 0.08);
        }
        .wishlist-btn:hover {
            color: #f43f5e;
            background: rgba(255, 255, 255, 0.1);
        }

        .product-info {
            padding: 18px;
            display: flex;
            flex-direction: column;
            flex: 1;
            gap: 8px;
        }
        .product-cat {
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            color: var(--muted);
            font-weight: 600;
        }
        .product-title {
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .price-rating-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 4px;
        }
        .price-box {
            display: flex;
            align-items: baseline;
            gap: 6px;
        }
        .price-box .current {
            font-size: 18px;
            font-weight: 700;
            color: #fff;
        }
        .price-box .old {
            font-size: 13px;
            color: var(--muted);
            text-decoration: line-through;
        }
        .product-rating {
            font-size: 12px;
            color: var(--warning);
            display: flex;
            align-items: center;
            gap: 4px;
        }
        .product-rating span { color: var(--muted); font-size: 11px; }

        .card-actions {
            display: flex;
            gap: 8px;
            margin-top: 12px;
        }
        .add-cart-btn {
            flex: 1;
            padding: 10px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            color: #fff;
            font-size: 13px;
            font-weight: 600;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: var(--transition);
        }
        .add-cart-btn:hover {
            background: var(--accent);
            border-color: var(--accent);
        }
        .quick-view-btn {
            padding: 10px 14px;
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            color: var(--muted);
            transition: var(--transition);
        }
        .quick-view-btn:hover { color: #fff; background: rgba(255, 255, 255, 0.08); }

        /* ===== DEAL BANNER ===== */
        .deal-card {
            background: linear-gradient(135deg, rgba(26, 35, 58, 0.8) 0%, rgba(15, 23, 42, 0.95) 100%);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            align-items: center;
            box-shadow: var(--shadow-subtle);
        }
        .deal-content {
            padding: 48px;
        }
        .countdown {
            display: flex;
            gap: 10px;
            margin: 24px 0 32px;
        }
        .count-block {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid var(--border);
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            min-width: 64px;
            text-align: center;
        }
        .count-block .val {
            font-size: 24px;
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            color: #fff;
        }
        .count-block .lbl {
            font-size: 10px;
            text-transform: uppercase;
            color: var(--muted);
            letter-spacing: 0.5px;
        }
        .deal-img-wrap {
            height: 100%;
            min-height: 380px;
            position: relative;
        }
        .deal-img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* ===== SLIDE-OVER CART ===== */
        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(8px);
            z-index: 1000;
            opacity: 0;
            pointer-events: none;
            transition: var(--transition);
        }
        .cart-overlay.open { opacity: 1; pointer-events: auto; }
        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            max-width: 420px;
            height: 100%;
            background: var(--bg-surface);
            border-left: 1px solid var(--border);
            z-index: 1001;
            transform: translateX(100%);
            transition: transform 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            flex-direction: column;
        }
        .cart-drawer.open { transform: translateX(0); }
        .cart-header {
            padding: 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--border);
        }
        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .cart-item {
            display: flex;
            gap: 14px;
            background: rgba(255, 255, 255, 0.02);
            border: 1px solid var(--border);
            padding: 12px;
            border-radius: var(--radius-sm);
        }
        .cart-item img {
            width: 64px;
            height: 64px;
            border-radius: 6px;
            object-fit: cover;
        }
        .cart-item-details { flex: 1; }
        .cart-item-title { font-size: 14px; font-weight: 600; }
        .cart-item-price { font-size: 13px; color: var(--muted); margin-top: 2px; }
        .cart-footer {
            padding: 24px;
            border-top: 1px solid var(--border);
            background: rgba(255, 255, 255, 0.01);
        }
        .cart-subtotal {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        /* ===== TOAST NOTIFICATION ===== */
        .toast-box {
            position: fixed;
            bottom: 24px;
            right: 24px;
            z-index: 1100;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .toast {
            background: var(--bg-surface);
            border: 1px solid var(--accent);
            box-shadow: var(--shadow-glow);
            padding: 12px 20px;
            border-radius: 999px;
            color: #fff;
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 13px;
            animation: slideIn 0.3s ease;
        }
        @keyframes slideIn {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 1024px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .deal-card { grid-template-columns: 1fr; }
            .deal-img-wrap { min-height: 250px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .hero h1 { font-size: 38px; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .search-box { display: none; }
        }
        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero h1 { font-size: 30px; }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="logo-icon"><i class="fas fa-cube"></i></div>
                <span>Nexus<span>Shop</span></span>
            </a>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Discover</a></li>
                    <li><a href="#deal">Deals</a></li>
                </ul>
            </nav>

            <div class="actions-group">
                <div class="search-box">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search tech, fashion..." />
                </div>
                <button class="icon-badge-btn" id="openCartBtn" aria-label="Open Cart">
                    <i class="fas fa-shopping-bag"></i>
                    <div class="badge-count" id="cartCount">0</div>
                </button>
            </div>
        </div>
    </header>

    <!-- ===== HERO SECTION ===== -->
    <section class="hero">
        <div class="container hero-content">
            <div class="pill-badge">
                <i class="fas fa-sparkles"></i> Experience Next-Gen Shopping
            </div>
            <h1>Crafted for style, <br>built for <span>performance</span>.</h1>
            <p>Step into the new era of e-commerce. Handcrafted tech gadgets, minimalist aesthetics, and exclusive flash drops.</p>
            <div class="cta-row">
                <a href="#products" class="btn btn-primary"><i class="fas fa-bolt"></i> Explore Drops</a>
                <a href="#deal" class="btn btn-secondary"><i class="fas fa-tag"></i> View Deal</a>
            </div>
        </div>
    </section>

    <!-- ===== CATEGORIES SECTION ===== -->
    <section class="section" id="categories">
        <div class="container">
            <div class="section-header">
                <div>
                    <h2>Browse Collections</h2>
                    <p>Curated spaces for modern lifestyles</p>
                </div>
            </div>
            <div class="category-scroll" id="catList">
                <button class="cat-chip active" data-cat="all"><i class="fas fa-border-all"></i> All Products</button>
                <button class="cat-chip" data-cat="Smartphones"><i class="fas fa-mobile-screen"></i> Phones</button>
                <button class="cat-chip" data-cat="Laptops"><i class="fas fa-laptop"></i> Laptops</button>
                <button class="cat-chip" data-cat="Gadgets"><i class="fas fa-headphones-simple"></i> Audio & Gadgets</button>
                <button class="cat-chip" data-cat="Accessories"><i class="fas fa-clock"></i> Accessories</button>
                <button class="cat-chip" data-cat="Footwear"><i class="fas fa-shoe-prints"></i> Footwear</button>
            </div>
        </div>
    </section>

    <!-- ===== PRODUCTS SECTION ===== -->
    <section class="section" id="products">
        <div class="container">
            <div class="section-header">
                <div>
                    <h2>Featured Essentials</h2>
                    <p>Hand-selected items trending worldwide</p>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </div>
    </section>

    <!-- ===== DEAL OF THE DAY ===== -->
    <section class="section" id="deal">
        <div class="container">
            <div class="deal-card">
                <div class="deal-content">
                    <div class="pill-badge" style="background: rgba(245, 158, 11, 0.1); border-color: rgba(245, 158, 11, 0.3); color: #fbbf24;">
                        <i class="fas fa-fire"></i> Flash Deal of the Week
                    </div>
                    <h2 style="font-size: 36px; font-family: 'Space Grotesk'; margin: 12px 0;">MacBook Air M2 15"</h2>
                    <p style="color: var(--muted); margin-bottom: 20px;">Supercharged by M2 chip. Insanely thin design, up to 18 hours of battery life, and a brilliant Liquid Retina display.</p>
                    <div style="font-size: 28px; font-weight: 700; color: #fff;">
                        $999 <span style="font-size: 18px; color: var(--muted); text-decoration: line-through; font-weight: 400;">$1,299</span>
                    </div>

                    <div class="countdown">
                        <div class="count-block"><div class="val" id="dHours">18</div><div class="lbl">Hours</div></div>
                        <div class="count-block"><div class="val" id="dMins">44</div><div class="lbl">Mins</div></div>
                        <div class="count-block"><div class="val" id="dSecs">12</div><div class="lbl">Secs</div></div>
                    </div>

                    <button class="btn btn-primary" id="claimDealBtn"><i class="fas fa-cart-shopping"></i> Claim Discount</button>
                </div>
                <div class="deal-img-wrap">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="Laptop Deal">
                </div>
            </div>
        </div>
    </section>

    <!-- ===== SLIDE-OVER CART ===== -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <aside class="cart-drawer" id="cartDrawer">
        <div class="cart-header">
            <h3>Your Bag</h3>
            <button id="closeCartBtn" style="color: var(--muted); font-size: 20px;"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItemsContainer">
            <!-- Dynamic Cart Items -->
        </div>
        <div class="cart-footer">
            <div class="cart-subtotal">
                <span>Subtotal</span>
                <span id="cartSubtotal">$0.00</span>
            </div>
            <button class="btn btn-primary" style="width: 100%;" onclick="alert('Checkout process initiated!')">Checkout Now</button>
        </div>
    </aside>

    <!-- Toast Notification Container -->
    <div class="toast-box" id="toastBox"></div>

    <script>
        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, badge: 'Pro', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 4, title: 'Nike Air Max Pulse', price: 150, oldPrice: null, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
            { id: 5, title: 'Sony Alpha A7 IV', price: 2499, oldPrice: null, rating: 5, reviews: 42, badge: 'Hot', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
            { id: 6, title: 'Chanel Luxury Essence', price: 120, oldPrice: null, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 7, title: 'Minimalist Commuter Pack', price: 89, oldPrice: 110, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5 ANC', price: 399, oldPrice: null, rating: 5, reviews: 156, badge: 'Popular', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
        ];

        let cart = [];
        let currentFilter = 'all';

        // DOM elements
        const productsGrid = document.getElementById('productsGrid');
        const cartCount = document.getElementById('cartCount');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const cartSubtotal = document.getElementById('cartSubtotal');

        function renderProducts(items) {
            productsGrid.innerHTML = '';
            if (!items.length) {
                productsGrid.innerHTML = '<p style="grid-column: 1/-1; text-align: center; color: var(--muted); padding: 40px;">No products match your criteria.</p>';
                return;
            }

            items.forEach(p => {
                const el = document.createElement('div');
                el.className = 'product-card';
                el.innerHTML = `
                    <div class="product-media">
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                        ${p.badge ? `<div class="product-badge">${p.badge}</div>` : ''}
                        <button class="wishlist-btn" onclick="triggerToast('Added to Wishlist!')" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="product-info">
                        <div class="product-cat">${p.category}</div>
                        <div class="product-title">${p.title}</div>
                        <div class="price-rating-row">
                            <div class="price-box">
                                <span class="current">$${p.price}</span>
                                ${p.oldPrice ? `<span class="old">$${p.oldPrice}</span>` : ''}
                            </div>
                            <div class="product-rating">
                                <i class="fas fa-star"></i> ${p.rating}.0
                            </div>
                        </div>
                        <div class="card-actions">
                            <button class="add-cart-btn" onclick="addToCart(${p.id})"><i class="fas fa-plus"></i> Add to Cart</button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
        }

        // Cart Actions
        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (!product) return;
            cart.push(product);
            updateCartUI();
            triggerToast(`${product.title} added to bag!`);
        }

        function removeFromCart(index) {
            cart.splice(index, 1);
            updateCartUI();
        }

        function updateCartUI() {
            cartCount.innerText = cart.length;
            if (cart.length === 0) {
                cartItemsContainer.innerHTML = '<p style="color: var(--muted); text-align: center; margin-top: 40px;">Your bag is empty.</p>';
                cartSubtotal.innerText = '$0.00';
                return;
            }

            cartItemsContainer.innerHTML = cart.map((item, idx) => `
                <div class="cart-item">
                    <img src="${item.img}" alt="${item.title}">
                    <div class="cart-item-details">
                        <div class="cart-item-title">${item.title}</div>
                        <div class="cart-item-price">$${item.price}</div>
                    </div>
                    <button onclick="removeFromCart(${idx})" style="color: var(--muted); padding: 4px;"><i class="fas fa-trash"></i></button>
                </div>
            `).join('');

            const total = cart.reduce((acc, curr) => acc + curr.price, 0);
            cartSubtotal.innerText = `$${total.toLocaleString()}`;
        }

        function triggerToast(msg) {
            const box = document.getElementById('toastBox');
            const toast = document.createElement('div');
            toast.className = 'toast';
            toast.innerHTML = `<i class="fas fa-check-circle" style="color: var(--accent);"></i> ${msg}`;
            box.appendChild(toast);
            setTimeout(() => toast.remove(), 2500);
        }

        // Drawer Controls
        document.getElementById('openCartBtn').addEventListener('click', () => {
            cartDrawer.classList.add('open');
            cartOverlay.classList.add('open');
        });
        document.getElementById('closeCartBtn').addEventListener('click', closeCart);
        cartOverlay.addEventListener('click', closeCart);

        function closeCart() {
            cartDrawer.classList.remove('open');
            cartOverlay.classList.remove('open');
        }

        // Filter chips
        document.querySelectorAll('.cat-chip').forEach(btn => {
            btn.addEventListener('click', function() {
                document.querySelectorAll('.cat-chip').forEach(c => c.classList.remove('active'));
                this.classList.add('active');
                const cat = this.dataset.cat;
                if (cat === 'all') {
                    renderProducts(PRODUCTS);
                } else {
                    renderProducts(PRODUCTS.filter(p => p.category === cat));
                }
            });
        });

        // Search Input
        document.getElementById('searchInput').addEventListener('input', (e) => {
            const term = e.target.value.toLowerCase();
            renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term)));
        });

        // Countdown Timer
        let seconds = 59;
        setInterval(() => {
            if (seconds > 0) seconds--;
            else seconds = 59;
            document.getElementById('dSecs').innerText = String(seconds).padStart(2, '0');
        }, 1000);

        // Flash Deal Button
        document.getElementById('claimDealBtn').addEventListener('click', () => {
            cart.push({ id: 99, title: 'MacBook Air M2 15"', price: 999, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=300&q=80' });
            updateCartUI();
            triggerToast('Claimed Flash Deal!');
        });

        // Initialize
        renderProducts(PRODUCTS);
        updateCartUI();
    </script>
</body>
</html>
