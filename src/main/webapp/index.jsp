<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Nexus Repository Manager</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --sidebar: #17212b;
            --sidebar-light: #22303c;
            --primary: #0078d4;
            --primary-dark: #005a9e;
            --bg: #f4f6f8;
            --white: #ffffff;
            --border: #d9dee3;
            --text: #263238;
            --muted: #6b7785;
            --success: #2e7d32;
            --warning: #f39c12;
            --danger: #d32f2f;
            --hover: #eef5fb;
        }

        body {
            font-family: 'Inter', Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
            min-height: 100vh;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        /* =========================
           SIDEBAR
        ========================== */

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 250px;
            height: 100vh;
            background: var(--sidebar);
            color: white;
            z-index: 1000;
            display: flex;
            flex-direction: column;
        }

        .logo {
            height: 70px;
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 0 22px;
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }

        .logo-icon {
            width: 38px;
            height: 38px;
            border-radius: 7px;
            background: var(--primary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 19px;
        }

        .logo-text {
            font-size: 18px;
            font-weight: 700;
        }

        .logo-text span {
            font-weight: 400;
            opacity: .75;
        }

        .sidebar-section {
            padding: 20px 12px 8px;
        }

        .sidebar-title {
            color: #8d9aa7;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: .8px;
            padding: 0 12px 10px;
        }

        .nav-item {
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 11px 13px;
            border-radius: 5px;
            color: #cbd3da;
            margin-bottom: 3px;
            font-size: 14px;
            transition: .2s;
        }

        .nav-item i {
            width: 18px;
            text-align: center;
        }

        .nav-item:hover {
            background: var(--sidebar-light);
            color: white;
        }

        .nav-item.active {
            background: var(--primary);
            color: white;
        }

        .sidebar-bottom {
            margin-top: auto;
            padding: 15px 12px;
            border-top: 1px solid rgba(255,255,255,0.08);
        }

        /* =========================
           MAIN
        ========================== */

        .main {
            margin-left: 250px;
            min-height: 100vh;
        }

        /* =========================
           TOP BAR
        ========================== */

        .topbar {
            height: 70px;
            background: white;
            border-bottom: 1px solid var(--border);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 28px;
            position: sticky;
            top: 0;
            z-index: 500;
        }

        .breadcrumb {
            font-size: 14px;
            color: var(--muted);
        }

        .breadcrumb strong {
            color: var(--text);
        }

        .top-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search {
            width: 280px;
            height: 38px;
            border: 1px solid var(--border);
            border-radius: 4px;
            display: flex;
            align-items: center;
            padding: 0 12px;
            background: #fafbfc;
        }

        .search i {
            color: var(--muted);
            margin-right: 8px;
        }

        .search input {
            border: none;
            outline: none;
            background: transparent;
            width: 100%;
            font-size: 13px;
        }

        .top-btn {
            width: 38px;
            height: 38px;
            border: 1px solid var(--border);
            background: white;
            border-radius: 4px;
            color: var(--muted);
        }

        .top-btn:hover {
            background: var(--hover);
            color: var(--primary);
        }

        .user {
            display: flex;
            align-items: center;
            gap: 9px;
            padding-left: 8px;
        }

        .avatar {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: var(--primary);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            font-weight: 700;
        }

        /* =========================
           CONTENT
        ========================== */

        .content {
            padding: 28px;
        }

        .page-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }

        .page-title h1 {
            font-size: 25px;
            font-weight: 600;
        }

        .page-title p {
            color: var(--muted);
            font-size: 13px;
            margin-top: 5px;
        }

        .primary-btn {
            border: none;
            background: var(--primary);
            color: white;
            padding: 10px 16px;
            border-radius: 4px;
            font-size: 13px;
            font-weight: 600;
        }

        .primary-btn:hover {
            background: var(--primary-dark);
        }

        /* =========================
           STAT CARDS
        ========================== */

        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
            margin-bottom: 24px;
        }

        .stat-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 5px;
            padding: 20px;
        }

        .stat-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .stat-label {
            color: var(--muted);
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: .4px;
        }

        .stat-icon {
            width: 38px;
            height: 38px;
            background: #eaf4fc;
            color: var(--primary);
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .stat-value {
            font-size: 27px;
            font-weight: 600;
            margin-top: 12px;
        }

        .stat-change {
            margin-top: 7px;
            font-size: 11px;
            color: var(--success);
        }

        /* =========================
           GRID
        ========================== */

        .dashboard-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 20px;
        }

        .panel {
            background: white;
            border: 1px solid var(--border);
            border-radius: 5px;
            overflow: hidden;
            margin-bottom: 20px;
        }

        .panel-header {
            padding: 16px 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .panel-header h2 {
            font-size: 15px;
            font-weight: 600;
        }

        .panel-header a {
            font-size: 12px;
            color: var(--primary);
        }

        .panel-body {
            padding: 20px;
        }

        /* =========================
           REPOSITORIES
        ========================== */

        .repo-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 14px;
        }

        .repo-card {
            border: 1px solid var(--border);
            border-radius: 5px;
            padding: 17px;
            transition: .2s;
            cursor: pointer;
        }

        .repo-card:hover {
            border-color: var(--primary);
            box-shadow: 0 3px 12px rgba(0,0,0,.06);
        }

        .repo-head {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .repo-name {
            display: flex;
            align-items: center;
            gap: 9px;
            font-weight: 600;
            font-size: 14px;
        }

        .repo-icon {
            width: 31px;
            height: 31px;
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #edf5fc;
            color: var(--primary);
        }

        .status {
            font-size: 10px;
            padding: 4px 7px;
            border-radius: 12px;
            background: #eaf6ec;
            color: var(--success);
            font-weight: 600;
        }

        .repo-type {
            color: var(--muted);
            font-size: 11px;
            margin-top: 12px;
        }

        .repo-url {
            background: #f5f7f9;
            border: 1px solid var(--border);
            padding: 8px;
            border-radius: 3px;
            font-size: 10px;
            color: #596673;
            margin-top: 12px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        /* =========================
           ACTIVITY
        ========================== */

        .activity {
            display: flex;
            gap: 12px;
            padding: 13px 0;
            border-bottom: 1px solid #edf0f2;
        }

        .activity:last-child {
            border-bottom: none;
        }

        .activity-icon {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #edf5fc;
            color: var(--primary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            flex-shrink: 0;
        }

        .activity-text {
            font-size: 12px;
        }

        .activity-text strong {
            font-weight: 600;
        }

        .activity-time {
            color: var(--muted);
            font-size: 10px;
            margin-top: 3px;
        }

        /* =========================
           STORAGE
        ========================== */

        .storage-value {
            display: flex;
            justify-content: space-between;
            font-size: 13px;
            margin-bottom: 10px;
        }

        .progress {
            height: 9px;
            background: #e7ebef;
            border-radius: 10px;
            overflow: hidden;
        }

        .progress-bar {
            height: 100%;
            width: 68%;
            background: var(--primary);
            border-radius: 10px;
        }

        .storage-info {
            display: flex;
            justify-content: space-between;
            margin-top: 9px;
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================
           COMPONENT TABLE
        ========================== */

        .table-panel {
            margin-top: 0;
        }

        .table-toolbar {
            padding: 14px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--border);
        }

        .filter-buttons {
            display: flex;
            gap: 7px;
        }

        .filter-btn {
            border: 1px solid var(--border);
            background: white;
            padding: 7px 12px;
            border-radius: 4px;
            font-size: 11px;
            color: var(--muted);
        }

        .filter-btn.active,
        .filter-btn:hover {
            border-color: var(--primary);
            color: var(--primary);
            background: #f0f7fd;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            text-align: left;
            background: #f7f8fa;
            color: var(--muted);
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: .4px;
            padding: 12px 18px;
            border-bottom: 1px solid var(--border);
        }

        td {
            padding: 14px 18px;
            border-bottom: 1px solid #edf0f2;
            font-size: 12px;
        }

        tr:hover td {
            background: #fafcff;
        }

        .component-name {
            font-weight: 600;
            color: var(--primary);
        }

        .tag {
            padding: 4px 7px;
            border-radius: 3px;
            font-size: 10px;
            background: #eef1f4;
            color: #53606c;
        }

        .size {
            color: var(--muted);
        }

        /* =========================
           SYSTEM STATUS
        ========================== */

        .system-row {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 1px solid #edf0f2;
            font-size: 12px;
        }

        .system-row:last-child {
            border-bottom: none;
        }

        .online {
            color: var(--success);
            font-weight: 600;
        }

        .online i {
            font-size: 7px;
            margin-right: 5px;
        }

        /* =========================
           TOAST
        ========================== */

        .toast {
            position: fixed;
            right: 25px;
            bottom: 25px;
            background: #263238;
            color: white;
            padding: 13px 18px;
            border-radius: 4px;
            font-size: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,.2);
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            z-index: 2000;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================
           MOBILE
        ========================== */

        .mobile-menu {
            display: none;
            font-size: 20px;
            color: var(--text);
            border: none;
            background: transparent;
        }

        @media(max-width:1100px) {

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width:800px) {

            .sidebar {
                transform: translateX(-100%);
                transition: .3s;
            }

            .sidebar.open {
                transform: translateX(0);
            }

            .main {
                margin-left: 0;
            }

            .mobile-menu {
                display: block;
            }

            .topbar {
                padding: 0 15px;
            }

            .search {
                width: 180px;
            }

            .content {
                padding: 18px;
            }

            .repo-grid {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width:600px) {

            .stats {
                grid-template-columns: 1fr;
            }

            .search {
                display: none;
            }

            .page-title {
                align-items: flex-start;
                gap: 15px;
            }

            .page-title h1 {
                font-size: 21px;
            }

            .table-panel {
                overflow-x: auto;
            }

            table {
                min-width: 650px;
            }

            .user-name {
                display: none;
            }
        }

    </style>
</head>

<body>

<!-- =========================
     SIDEBAR
========================== -->

<aside class="sidebar" id="sidebar">

    <div class="logo">
        <div class="logo-icon">
            <i class="fas fa-cubes"></i>
        </div>

        <div class="logo-text">
            Nexus <span>Repository</span>
        </div>
    </div>

    <div class="sidebar-section">

        <div class="sidebar-title">
            Navigation
        </div>

        <div class="nav-item active" onclick="selectNav(this)">
            <i class="fas fa-chart-line"></i>
            Dashboard
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-database"></i>
            Repositories
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-box"></i>
            Components
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-folder-open"></i>
            Browse
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-upload"></i>
            Upload
        </div>

    </div>

    <div class="sidebar-section">

        <div class="sidebar-title">
            Administration
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-users"></i>
            Security
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-cog"></i>
            Settings
        </div>

        <div class="nav-item" onclick="selectNav(this)">
            <i class="fas fa-server"></i>
            System
        </div>

    </div>

    <div class="sidebar-bottom">

        <div class="nav-item" onclick="showToast('Help center opened')">
            <i class="fas fa-circle-question"></i>
            Help
        </div>

    </div>

</aside>


<!-- =========================
     MAIN
========================== -->

<main class="main">

    <!-- TOP BAR -->

    <header class="topbar">

        <div class="breadcrumb">

            <button class="mobile-menu" id="mobileMenu">
                <i class="fas fa-bars"></i>
            </button>

            <strong>Nexus Repository</strong>
            <span> / Dashboard</span>

        </div>

        <div class="top-actions">

            <div class="search">

                <i class="fas fa-search"></i>

                <input
                    type="text"
                    id="searchInput"
                    placeholder="Search repositories..."
                >

            </div>

            <button
                class="top-btn"
                onclick="refreshDashboard()"
                title="Refresh"
            >
                <i class="fas fa-rotate"></i>
            </button>

            <button
                class="top-btn"
                onclick="showToast('Notifications: No new alerts')"
            >
                <i class="far fa-bell"></i>
            </button>

            <div class="user">

                <div class="avatar">
                    SK
                </div>

                <span class="user-name">
                    Administrator
                </span>

            </div>

        </div>

    </header>


    <section class="content">

        <!-- PAGE TITLE -->

        <div class="page-title">

            <div>
                <h1>Dashboard</h1>

                <p>
                    Monitor your repositories, components and system activity.
                </p>
            </div>

            <button
                class="primary-btn"
                onclick="uploadComponent()"
            >
                <i class="fas fa-upload"></i>
                Upload Component
            </button>

        </div>


        <!-- STATISTICS -->

        <div class="stats">

            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        Repositories
                    </div>

                    <div class="stat-icon">
                        <i class="fas fa-database"></i>
                    </div>

                </div>

                <div class="stat-value">
                    8
                </div>

                <div class="stat-change">
                    <i class="fas fa-arrow-up"></i>
                    2 active repositories
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        Components
                    </div>

                    <div class="stat-icon">
                        <i class="fas fa-box"></i>
                    </div>

                </div>

                <div class="stat-value">
                    12,458
                </div>

                <div class="stat-change">
                    <i class="fas fa-arrow-up"></i>
                    8.4% this month
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        Storage Used
                    </div>

                    <div class="stat-icon">
                        <i class="fas fa-hard-drive"></i>
                    </div>

                </div>

                <div class="stat-value">
                    68 GB
                </div>

                <div class="stat-change">
                    68% of allocated storage
                </div>

            </div>


            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        System Status
                    </div>

                    <div class="stat-icon">
                        <i class="fas fa-server"></i>
                    </div>

                </div>

                <div class="stat-value">
                    Online
                </div>

                <div class="stat-change">
                    <i class="fas fa-circle"></i>
                    All services operational
                </div>

            </div>

        </div>


        <!-- DASHBOARD GRID -->

        <div class="dashboard-grid">


            <!-- LEFT -->

            <div>

                <!-- REPOSITORIES -->

                <div class="panel">

                    <div class="panel-header">

                        <h2>
                            Repositories
                        </h2>

                        <a href="#" onclick="showToast('Repository management opened'); return false;">
                            View all
                        </a>

                    </div>

                    <div class="panel-body">

                        <div class="repo-grid" id="repoGrid">


                            <div class="repo-card"
                                 data-name="maven-releases">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-cube"></i>
                                        </div>

                                        maven-releases

                                    </div>

                                    <span class="status">
                                        ONLINE
                                    </span>

                                </div>

                                <div class="repo-type">
                                    Maven Hosted
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/maven-releases/
                                </div>

                            </div>


                            <div class="repo-card"
                                 data-name="maven-snapshots">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-cube"></i>
                                        </div>

                                        maven-snapshots

                                    </div>

                                    <span class="status">
                                        ONLINE
                                    </span>

                                </div>

                                <div class="repo-type">
                                    Maven Hosted
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/maven-snapshots/
                                </div>

                            </div>


                            <div class="repo-card"
                                 data-name="maven-central">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-layer-group"></i>
                                        </div>

                                        maven-central

                                    </div>

                                    <span class="status">
                                        ONLINE
                                    </span>

                                </div>

                                <div class="repo-type">
                                    Maven Proxy
                                </div>

                                <div class="repo-url">
                                    https://repo1.maven.org/maven2/
                                </div>

                            </div>


                            <div class="repo-card"
                                 data-name="npm-public">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fab fa-npm"></i>
                                        </div>

                                        npm-public

                                    </div>

                                    <span class="status">
                                        ONLINE
                                    </span>

                                </div>

                                <div class="repo-type">
                                    npm Group
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/npm-public/
                                </div>

                            </div>


                        </div>

                    </div>

                </div>


                <!-- COMPONENTS -->

                <div class="panel table-panel">

                    <div class="panel-header">

                        <h2>
                            Recent Components
                        </h2>

                        <a href="#">
                            Browse components
                        </a>

                    </div>


                    <div class="table-toolbar">

                        <div class="filter-buttons">

                            <button
                                class="filter-btn active"
                                onclick="filterComponents('all', this)"
                            >
                                All
                            </button>

                            <button
                                class="filter-btn"
                                onclick="filterComponents('maven', this)"
                            >
                                Maven
                            </button>

                            <button
                                class="filter-btn"
                                onclick="filterComponents('npm', this)"
                            >
                                npm
                            </button>

                        </div>

                    </div>


                    <table>

                        <thead>

                            <tr>
                                <th>Component</th>
                                <th>Version</th>
                                <th>Repository</th>
                                <th>Type</th>
                                <th>Size</th>
                                <th>Updated</th>
                            </tr>

                        </thead>

                        <tbody id="componentTable">

                            <tr data-type="maven">

                                <td class="component-name">
                                    ecommerce-api
                                </td>

                                <td>
                                    1.4.2
                                </td>

                                <td>
                                    maven-releases
                                </td>

                                <td>
                                    <span class="tag">
                                        JAR
                                    </span>
                                </td>

                                <td class="size">
                                    14.8 MB
                                </td>

                                <td>
                                    5 min ago
                                </td>

                            </tr>


                            <tr data-type="maven">

                                <td class="component-name">
                                    spring-security
                                </td>

                                <td>
                                    6.5.1
                                </td>

                                <td>
                                    maven-central
                                </td>

                                <td>
                                    <span class="tag">
                                        JAR
                                    </span>
                                </td>

                                <td class="size">
                                    2.3 MB
                                </td>

                                <td>
                                    18 min ago
                                </td>

                            </tr>


                            <tr data-type="npm">

                                <td class="component-name">
                                    react
                                </td>

                                <td>
                                    19.1.0
                                </td>

                                <td>
                                    npm-public
                                </td>

                                <td>
                                    <span class="tag">
                                        npm
                                    </span>
                                </td>

                                <td class="size">
                                    8.6 MB
                                </td>

                                <td>
                                    32 min ago
                                </td>

                            </tr>


                            <tr data-type="maven">

                                <td class="component-name">
                                    spring-boot
                                </td>

                                <td>
                                    3.5.4
                                </td>

                                <td>
                                    maven-central
                                </td>

                                <td>
                                    <span class="tag">
                                        JAR
                                    </span>
                                </td>

                                <td class="size">
                                    4.1 MB
                                </td>

                                <td>
                                    1 hour ago
                                </td>

                            </tr>

                        </tbody>

                    </table>

                </div>

            </div>


            <!-- RIGHT -->

            <div>


                <!-- STORAGE -->

                <div class="panel">

                    <div class="panel-header">

                        <h2>
                            Storage
                        </h2>

                    </div>

                    <div class="panel-body">

                        <div class="storage-value">

                            <span>
                                Repository Storage
                            </span>

                            <strong>
                                68 GB / 100 GB
                            </strong>

                        </div>

                        <div class="progress">

                            <div class="progress-bar"></div>

                        </div>

                        <div class="storage-info">

                            <span>
                                68% used
                            </span>

                            <span>
                                32 GB available
                            </span>

                        </div>

                    </div>

                </div>


                <!-- SYSTEM -->

                <div class="panel">

                    <div class="panel-header">

                        <h2>
                            System Status
                        </h2>

                    </div>

                    <div class="panel-body">

                        <div class="system-row">

                            <span>
                                Nexus Repository
                            </span>

                            <span class="online">
                                <i class="fas fa-circle"></i>
                                Running
                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Database
                            </span>

                            <span class="online">
                                <i class="fas fa-circle"></i>
                                Connected
                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Blob Store
                            </span>

                            <span class="online">
                                <i class="fas fa-circle"></i>
                                Healthy
                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Memory
                            </span>

                            <span>
                                2.4 GB
                            </span>

                        </div>

                    </div>

                </div>


                <!-- ACTIVITY -->

                <div class="panel">

                    <div class="panel-header">

                        <h2>
                            Recent Activity
                        </h2>

                    </div>

                    <div class="panel-body">


                        <div class="activity">

                            <div class="activity-icon">
                                <i class="fas fa-upload"></i>
                            </div>

                            <div class="activity-text">

                                <strong>
                                    ecommerce-api
                                </strong>

                                uploaded to maven-releases

                                <div class="activity-time">
                                    5 minutes ago
                                </div>

                            </div>

                        </div>


                        <div class="activity">

                            <div class="activity-icon">
                                <i class="fas fa-download"></i>
                            </div>

                            <div class="activity-text">

                                Maven dependency downloaded

                                <div class="activity-time">
                                    18 minutes ago
                                </div>

                            </div>

                        </div>


                        <div class="activity">

                            <div class="activity-icon">
                                <i class="fas fa-sync"></i>
                            </div>

                            <div class="activity-text">

                                Repository metadata updated

                                <div class="activity-time">
                                    31 minutes ago
                                </div>

                            </div>

                        </div>


                        <div class="activity">

                            <div class="activity-icon">
                                <i class="fas fa-user"></i>
                            </div>

                            <div class="activity-text">

                                Administrator logged in

                                <div class="activity-time">
                                    1 hour ago
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

</main>


<!-- TOAST -->

<div class="toast" id="toast">
    <i class="fas fa-check-circle"></i>
    <span id="toastMessage"></span>
</div>


<script>

    /* =========================
       MOBILE SIDEBAR
    ========================== */

    const mobileMenu =
        document.getElementById("mobileMenu");

    const sidebar =
        document.getElementById("sidebar");

    mobileMenu.addEventListener("click", () => {

        sidebar.classList.toggle("open");

    });


    /* =========================
       NAVIGATION
    ========================== */

    function selectNav(element) {

        document
            .querySelectorAll(".nav-item")
            .forEach(item => item.classList.remove("active"));

        element.classList.add("active");

        showToast(element.innerText.trim());

    }


    /* =========================
       TOAST
    ========================== */

    function showToast(message) {

        const toast =
            document.getElementById("toast");

        const messageBox =
            document.getElementById("toastMessage");

        messageBox.innerText = message;

        toast.classList.add("show");

        setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

    }


    /* =========================
       SEARCH REPOSITORIES
    ========================== */

    document
        .getElementById("searchInput")
        .addEventListener("input", function() {

            const search =
                this.value.toLowerCase();

            const repositories =
                document.querySelectorAll(".repo-card");

            repositories.forEach(repo => {

                const name =
                    repo.dataset.name.toLowerCase();

                if (name.includes(search)) {

                    repo.style.display = "";

                } else {

                    repo.style.display = "none";

                }

            });

        });


    /* =========================
       FILTER COMPONENTS
    ========================== */

    function filterComponents(type, button) {

        document
            .querySelectorAll(".filter-btn")
            .forEach(btn => btn.classList.remove("active"));

        button.classList.add("active");

        const rows =
            document.querySelectorAll("#componentTable tr");

        rows.forEach(row => {

            if (type === "all") {

                row.style.display = "";

            } else if (row.dataset.type === type) {

                row.style.display = "";

            } else {

                row.style.display = "none";

            }

        });

    }


    /* =========================
       UPLOAD COMPONENT
    ========================== */

    function uploadComponent() {

        showToast("Upload component dialog opened");

        setTimeout(() => {

            showToast(
                "Component uploaded successfully"
            );

        }, 1200);

    }


    /* =========================
       REFRESH DASHBOARD
    ========================== */

    function refreshDashboard() {

        showToast("Refreshing Nexus Repository...");

        setTimeout(() => {

            showToast(
                "Dashboard refreshed successfully"
            );

        }, 1000);

    }


    /* =========================
       REPOSITORY CLICK
    ========================== */

    document
        .querySelectorAll(".repo-card")
        .forEach(card => {

            card.addEventListener("click", () => {

                const name =
                    card.dataset.name;

                showToast(
                    "Opening repository: " + name
                );

            });

        });

</script>

</body>
</html>
