<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>NexusShop — Shop Smart, Live Better</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ========== DESIGN TOKENS ========== */
    :root {
      --bg: #f7f6f3;
      --bg-card: #ffffff;
      --primary: #1e293b;
      --primary-hover: #0f172a;
      --accent: #e07a5f;
      --accent-hover: #c9644a;
      --accent-soft: #fdf0eb;
      --accent-border: #f4d0c4;
      --success: #10b981;
      --success-soft: #ecfdf5;
      --warning: #f59e0b;
      --warning-soft: #fffbeb;
      --text: #1e293b;
      --text-secondary: #64748b;
      --text-muted: #94a3b8;
      --border: #e8e6e1;
      --border-light: #f1efeb;
      --surface: #f2f0ec;
      --surface-hover: #ebe8e2;

      --shadow-xs: 0 1px 2px rgba(30, 41, 59, 0.04);
      --shadow-sm: 0 2px 8px rgba(30, 41, 59, 0.05);
      --shadow-md: 0 6px 20px rgba(30, 41, 59, 0.07);
      --shadow-lg: 0 12px 36px rgba(30, 41, 59, 0.10);
      --shadow-xl: 0 20px 60px rgba(30, 41, 59, 0.12);

      --radius-xs: 6px;
      --radius-sm: 10px;
      --radius-md: 16px;
      --radius-lg: 24px;
      --radius-full: 999px;

      --transition: 0.2s cubic-bezier(0.4, 0, 0.2, 1);
      --transition-slow: 0.4s cubic-bezier(0.4, 0, 0.2, 1);

      --container: 1200px;
      --header-height: 72px;
    }

    /* ========== RESET & BASE ========== */
    *, *::before, *::after {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
      scroll-padding-top: calc(var(--header-height) + 20px);
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      font-size: 15px;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
    input, textarea { font-family: inherit; }

    /* Accessible focus rings */
    :focus-visible {
      outline: 3px solid var(--accent);
      outline-offset: 2px;
      border-radius: var(--radius-xs);
    }

    /* Skip link for accessibility */
    .skip-link {
      position: absolute;
      top: -100px;
      left: 16px;
      background: var(--primary);
      color: #fff;
      padding: 12px 24px;
      border-radius: var(--radius-sm);
      z-index: 9999;
      font-weight: 600;
      transition: top 0.2s;
    }
    .skip-link:focus { top: 16px; }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    .sr-only {
      position: absolute;
      width: 1px; height: 1px;
      padding: 0; margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }

    /* ========== BUTTONS ========== */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 13px 26px;
      border-radius: var(--radius-full);
      font-weight: 600;
      font-size: 14px;
      letter-spacing: 0.01em;
      transition: var(--transition);
      border: 2px solid transparent;
      white-space: nowrap;
      min-height: 44px; /* WCAG touch target */
    }
    .btn:active { transform: scale(0.97); }

    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      box-shadow: 0 4px 14px rgba(224, 122, 95, 0.30);
    }
    .btn-primary:hover {
      background: var(--accent-hover);
      border-color: var(--accent-hover);
      box-shadow: 0 6px 20px rgba(224, 122, 95, 0.40);
      transform: translateY(-2px);
    }

    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      box-shadow: 0 4px 14px rgba(30, 41, 59, 0.20);
    }
    .btn-secondary:hover {
      background: var(--primary-hover);
      border-color: var(--primary-hover);
      box-shadow: 0 6px 20px rgba(30, 41, 59, 0.28);
      transform: translateY(-2px);
    }

    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: var(--border);
    }
    .btn-outline:hover {
      background: var(--surface);
      border-color: var(--text-secondary);
      transform: translateY(-2px);
    }

    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.30);
      backdrop-filter: blur(8px);
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.25);
      border-color: rgba(255, 255, 255, 0.5);
      transform: translateY(-2px);
    }

    .btn-sm {
      padding: 9px 18px;
      font-size: 13px;
      min-height: 38px;
    }

    /* ========== HEADER ========== */
    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255, 255, 255, 0.92);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--border-light);
      transition: var(--transition);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 0;
      height: var(--header-height);
    }

    /* Brand */
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 20px;
      letter-spacing: -0.02em;
      color: var(--primary);
      flex-shrink: 0;
      transition: var(--transition);
    }
    .brand:hover { opacity: 0.85; }
    .brand i {
      font-size: 24px;
      color: var(--accent);
      transition: var(--transition);
    }
    .brand:hover i { transform: rotate(-8deg) scale(1.05); }
    .brand .accent { color: var(--accent); }

    /* Nav */
    nav.main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
      align-items: center;
    }
    nav.main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      font-size: 14px;
      color: var(--text-secondary);
      transition: var(--transition);
      position: relative;
    }
    nav.main-nav li a:hover {
      background: var(--surface);
      color: var(--primary);
    }
    nav.main-nav li a.active {
      background: var(--accent-soft);
      color: var(--accent);
      font-weight: 600;
    }
    nav.main-nav li a i { font-size: 14px; }

    /* Header Actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
      flex-shrink: 0;
    }

    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 18px;
      color: var(--text-secondary);
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
      transform: scale(1.05);
    }

    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: 6px;
      right: 6px;
      background: var(--accent);
      color: #fff;
      font-size: 10px;
      font-weight: 700;
      min-width: 18px;
      height: 18px;
      padding: 0 5px;
      border-radius: var(--radius-full);
      display: grid;
      place-items: center;
      border: 2px solid #fff;
      transition: var(--transition);
    }

    /* Search */
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: var(--radius-full);
      padding: 0 6px 0 18px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
      height: 44px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px var(--accent-soft);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: var(--text);
    }
    .search-wrap input::placeholder { color: var(--text-muted); }
    .search-wrap button {
      width: 34px;
      height: 34px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      color: var(--text-muted);
      font-size: 14px;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: var(--accent);
      color: #fff;
    }

    /* Mobile toggle */
    .mobile-toggle {
      display: none;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      font-size: 18px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
      place-items: center;
    }
    .mobile-toggle:hover { background: var(--accent-soft); color: var(--accent); }

    /* Mobile Menu */
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid var(--border-light);
      padding: 12px 0 20px;
      animation: slideDown 0.25s ease-out;
    }
    @keyframes slideDown {
      from { opacity: 0; transform: translateY(-8px); }
      to { opacity: 1; transform: translateY(0); }
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--text);
      transition: var(--transition);
      font-size: 15px;
    }
    #mobileMenu ul li a:hover {
      background: var(--surface);
      color: var(--accent);
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: var(--text-muted);
      font-size: 16px;
    }
    #mobileMenu ul li a:hover i { color: var(--accent); }

    /* ========== HERO ========== */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 72px 0;
      border-radius: 0;
      overflow: hidden;
      margin: 0;
      background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.28;
      z-index: 0;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: linear-gradient(90deg, rgba(30,41,59,0.85) 0%, rgba(30,41,59,0.4) 60%, transparent 100%);
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 1;
    }
    .hero .badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(224, 122, 95, 0.20);
      color: #ffb8a3;
      border: 1px solid rgba(224, 122, 95, 0.35);
      padding: 6px 18px;
      border-radius: var(--radius-full);
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.02em;
      margin-bottom: 20px;
      backdrop-filter: blur(8px);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: clamp(32px, 5vw, 54px);
      font-weight: 700;
      color: #fff;
      line-height: 1.12;
      max-width: 620px;
      margin-bottom: 20px;
      letter-spacing: -0.02em;
    }
    .hero h1 .highlight { color: #ffb8a3; }
    .hero p {
      color: rgba(255, 255, 255, 0.85);
      font-size: 17px;
      max-width: 500px;
      margin-bottom: 32px;
      line-height: 1.65;
    }
    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    /* ========== SECTIONS ========== */
    .section {
      padding: 64px 0;
    }

    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 36px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: clamp(22px, 3vw, 30px);
      font-weight: 700;
      letter-spacing: -0.02em;
      color: var(--primary);
      line-height: 1.2;
    }
    .section-header .title-group p {
      color: var(--text-secondary);
      margin-top: 6px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      white-space: nowrap;
      padding: 8px 0;
    }
    .section-header .view-all:hover {
      gap: 14px;
      color: var(--accent-hover);
    }
    .section-header .view-all i { transition: var(--transition); }
    .section-header .view-all:hover i { transform: translateX(2px); }

    /* ========== CATEGORIES ========== */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 14px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius-md);
      padding: 26px 16px;
      text-align: center;
      box-shadow: var(--shadow-xs);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 4px;
    }
    .cat-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow-md);
      border-color: var(--accent-border);
    }
    .cat-card:focus-visible {
      border-color: var(--accent);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: var(--radius-md);
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin-bottom: 10px;
      font-size: 22px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(1.08) rotate(-4deg);
    }
    .cat-card h4 {
      font-size: 14px;
      font-weight: 600;
      color: var(--primary);
      line-height: 1.3;
    }
    .cat-card .count {
      font-size: 12px;
      color: var(--text-muted);
    }

    /* ========== PRODUCTS ========== */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius-md);
      overflow: hidden;
      box-shadow: var(--shadow-xs);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
      position: relative;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-lg);
      border-color: var(--accent-border);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition-slow);
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.06);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 5px 14px;
      border-radius: var(--radius-full);
      font-size: 11px;
      font-weight: 700;
      letter-spacing: 0.04em;
      text-transform: uppercase;
      box-shadow: 0 2px 8px rgba(0,0,0,0.12);
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: #fff;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--text-secondary);
      transition: var(--transition);
      box-shadow: var(--shadow-sm);
      opacity: 0;
      transform: translateY(-6px);
    }
    .product-card:hover .wish-btn {
      opacity: 1;
      transform: translateY(0);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.12);
    }
    .product-card .body {
      padding: 16px 18px 10px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      line-height: 1.35;
      color: var(--primary);
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      min-height: 40px;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: baseline;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 18px;
      color: var(--primary);
      letter-spacing: -0.02em;
    }
    .product-card .body .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 13px;
      font-weight: 500;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5a623;
      letter-spacing: 1px;
    }
    .product-card .body .rating span {
      color: var(--text-muted);
      font-weight: 400;
      letter-spacing: normal;
      margin-left: 2px;
    }
    .product-card .footer {
      padding: 8px 18px 18px;
      display: flex;
      gap: 10px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 11px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      min-height: 44px;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: translateY(-2px);
      box-shadow: 0 6px 18px rgba(224, 122, 95, 0.30);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ========== DEAL ========== */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--bg-card);
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-md);
      border: 1px solid var(--border-light);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 360px;
      overflow: hidden;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition-slow);
    }
    .deal-wrap:hover .deal-img img {
      transform: scale(1.04);
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: var(--warning-soft);
      color: #b45309;
      padding: 6px 16px;
      border-radius: var(--radius-full);
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.06em;
      align-self: flex-start;
      margin-bottom: 16px;
      border: 1px solid #fde68a;
    }
    .deal-wrap .deal-content h3 {
      font-size: clamp(22px, 3vw, 30px);
      font-weight: 700;
      margin-bottom: 8px;
      letter-spacing: -0.02em;
    }
    .deal-wrap .deal-content .desc {
      color: var(--text-secondary);
      margin-bottom: 20px;
      font-size: 15px;
      line-height: 1.6;
      max-width: 460px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 34px;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.03em;
      display: flex;
      align-items: baseline;
      gap: 12px;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 500;
      color: var(--text-muted);
      text-decoration: line-through;
    }
    .deal-wrap .deal-content .stock {
      font-size: 14px;
      color: var(--text-secondary);
      margin: 8px 0 18px;
    }
    .deal-wrap .deal-content .stock strong {
      color: var(--accent);
      font-weight: 700;
    }

    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 8px 0 24px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      min-width: 72px;
      text-align: center;
      box-shadow: var(--shadow-sm);
    }
    .timer-box .num {
      font-size: 26px;
      font-weight: 700;
      line-height: 1.1;
      font-variant-numeric: tabular-nums;
      letter-spacing: -0.02em;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.65;
      text-transform: uppercase;
      letter-spacing: 0.08em;
      margin-top: 2px;
      font-weight: 600;
    }

    /* ========== TESTIMONIALS ========== */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 20px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 6px; }
    .testimonials-scroll::-webkit-scrollbar-track {
      background: var(--surface);
      border-radius: var(--radius-full);
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-border);
      border-radius: var(--radius-full);
    }
    .testimonials-scroll::-webkit-scrollbar-thumb:hover {
      background: var(--accent);
    }
    .testimonial-card {
      flex: 0 0 340px;
      background: var(--bg-card);
      border-radius: var(--radius-md);
      padding: 28px;
      box-shadow: var(--shadow-xs);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid var(--border-light);
      display: flex;
      flex-direction: column;
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow-md);
      transform: translateY(-4px);
      border-color: var(--accent-border);
    }
    .testimonial-card .stars {
      color: #f5a623;
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 14px;
    }
    .testimonial-card blockquote {
      font-size: 15px;
      line-height: 1.65;
      color: var(--text);
      margin-bottom: 20px;
      flex: 1;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
      padding-top: 16px;
      border-top: 1px solid var(--border-light);
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
      border: 2px solid var(--accent-soft);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
      color: var(--primary);
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--text-muted);
    }

    /* ========== NEWSLETTER ========== */
    .newsletter-wrap {
      background: linear-gradient(135deg, #1e293b 0%, #334155 100%);
      border-radius: var(--radius-lg);
      padding: 56px 60px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      position: relative;
      overflow: hidden;
    }
    .newsletter-wrap::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -10%;
      width: 400px;
      height: 400px;
      background: radial-gradient(circle, rgba(224,122,95,0.25) 0%, transparent 70%);
      pointer-events: none;
    }
    .newsletter-wrap .text {
      position: relative;
      z-index: 1;
    }
    .newsletter-wrap .text h3 {
      font-size: clamp(22px, 3vw, 28px);
      font-weight: 700;
      margin-bottom: 6px;
      letter-spacing: -0.02em;
    }
    .newsletter-wrap .text p {
      opacity: 0.75;
      font-size: 15px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 500px;
      position: relative;
      z-index: 1;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 220px;
      padding: 14px 22px;
      border-radius: var(--radius-full);
      border: 2px solid rgba(255, 255, 255, 0.15);
      font-size: 15px;
      background: rgba(255, 255, 255, 0.08);
      color: #fff;
      transition: var(--transition);
      outline: none;
      min-height: 50px;
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.45);
    }
    .newsletter-wrap form input:focus {
      border-color: var(--accent);
      background: rgba(255, 255, 255, 0.12);
      box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.15);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 14px 32px;
      min-height: 50px;
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-hover);
      border-color: var(--accent-hover);
      transform: translateY(-2px);
    }
    #newsletterMsg {
      margin-top: 12px;
      font-size: 14px;
      font-weight: 500;
      width: 100%;
      display: none;
      animation: slideDown 0.3s ease-out;
    }

    /* ========== FOOTER ========== */
    footer {
      margin-top: 24px;
      padding: 56px 0 32px;
      background: var(--bg-card);
      border-top: 1px solid var(--border-light);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 14px;
    }
    .footer-grid .brand-col p {
      color: var(--text-secondary);
      font-size: 14px;
      max-width: 320px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--text-secondary);
      transition: var(--transition);
      font-size: 16px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-3px);
      box-shadow: 0 6px 16px rgba(224, 122, 95, 0.30);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 
