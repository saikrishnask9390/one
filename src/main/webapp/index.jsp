```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Nexus Repository Manager</title>

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --sidebar: #151515;
            --sidebar-hover: #252525;
            --sidebar-active: #ff6b00;

            --orange: #ff6b00;
            --orange-dark: #e85d00;
            --orange-light: #fff1e7;

            --background: #f5f6f8;
            --card: #ffffff;

            --border: #e3e6ea;

            --text: #20242a;
            --text-light: #69727d;
            --text-muted: #929aa4;

            --green: #1d9b55;
            --green-light: #eaf8f0;

            --red: #d64545;
            --red-light: #fff0f0;

            --blue: #3275d6;
            --blue-light: #edf4ff;

            --purple: #7657d9;
            --purple-light: #f2efff;
        }

        body {
            font-family: "Inter", Arial, sans-serif;
            background: var(--background);
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

        a {
            text-decoration: none;
            color: inherit;
        }


        /* =========================================================
           SIDEBAR
        ========================================================= */

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;

            width: 255px;
            height: 100vh;

            background: var(--sidebar);
            color: white;

            display: flex;
            flex-direction: column;

            z-index: 1000;

            transition: transform 0.3s ease;
        }

        .brand {
            height: 76px;

            display: flex;
            align-items: center;

            padding: 0 22px;

            border-bottom: 1px solid rgba(255,255,255,0.08);
        }

        .brand-icon {
            width: 40px;
            height: 40px;

            background: var(--orange);

            border-radius: 9px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 19px;

            margin-right: 12px;
        }

        .brand-name {
            font-size: 17px;
            font-weight: 800;
            letter-spacing: -0.3px;
        }

        .brand-subtitle {
            font-size: 10px;
            color: #8d8d8d;
            margin-top: 3px;
        }

        .sidebar-content {
            padding: 22px 12px;
            overflow-y: auto;
        }

        .menu-title {
            color: #777;
            font-size: 10px;
            font-weight: 700;

            text-transform: uppercase;
            letter-spacing: 1px;

            padding: 0 12px;
            margin-bottom: 8px;
        }

        .nav-item {
            display: flex;
            align-items: center;

            gap: 13px;

            padding: 11px 13px;

            color: #b9b9b9;

            border-radius: 7px;

            margin-bottom: 4px;

            font-size: 13px;
            font-weight: 500;

            transition: all 0.2s;
        }

        .nav-item i {
            width: 18px;
            text-align: center;
            font-size: 14px;
        }

        .nav-item:hover {
            background: var(--sidebar-hover);
            color: white;
        }

        .nav-item.active {
            background: var(--orange);
            color: white;
        }

        .sidebar-footer {
            margin-top: auto;

            padding: 15px 12px;

            border-top: 1px solid rgba(255,255,255,0.08);
        }

        .version {
            font-size: 10px;
            color: #666;
            padding: 10px 13px;
        }


        /* =========================================================
           MAIN
        ========================================================= */

        .main {
            margin-left: 255px;
            min-height: 100vh;
        }


        /* =========================================================
           TOP BAR
        ========================================================= */

        .topbar {
            height: 72px;

            background: white;

            border-bottom: 1px solid var(--border);

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 30px;

            position: sticky;
            top: 0;

            z-index: 500;
        }

        .breadcrumb {
            display: flex;
            align-items: center;
            gap: 8px;

            font-size: 13px;
            color: var(--text-light);
        }

        .breadcrumb strong {
            color: var(--text);
        }

        .mobile-menu {
            display: none;

            border: none;
            background: transparent;

            font-size: 20px;
            margin-right: 12px;
        }

        .top-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            width: 280px;
            height: 39px;

            display: flex;
            align-items: center;

            background: #f7f8fa;

            border: 1px solid var(--border);
            border-radius: 7px;

            padding: 0 12px;

            transition: border 0.2s;
        }

        .search:focus-within {
            border-color: var(--orange);
        }

        .search i {
            color: var(--text-muted);
            margin-right: 9px;
            font-size: 13px;
        }

        .search input {
            border: none;
            outline: none;

            background: transparent;

            width: 100%;

            font-size: 12px;
            color: var(--text);
        }

        .top-btn {
            width: 39px;
            height: 39px;

            background: white;

            border: 1px solid var(--border);
            border-radius: 7px;

            color: var(--text-light);

            transition: 0.2s;
        }

        .top-btn:hover {
            border-color: var(--orange);
            color: var(--orange);
            background: var(--orange-light);
        }

        .user {
            display: flex;
            align-items: center;
            gap: 9px;

            margin-left: 5px;
        }

        .avatar {
            width: 36px;
            height: 36px;

            border-radius: 50%;

            background: var(--orange);

            color: white;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 12px;
            font-weight: 700;
        }

        .user-info {
            line-height: 1.3;
        }

        .user-name {
            font-size: 12px;
            font-weight: 600;
        }

        .user-role {
            font-size: 9px;
            color: var(--text-muted);
        }


        /* =========================================================
           CONTENT
        ========================================================= */

        .content {
            padding: 30px;
            max-width: 1700px;
            margin: auto;
        }

        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 25px;
        }

        .page-header h1 {
            font-size: 25px;
            font-weight: 700;
            letter-spacing: -0.6px;
        }

        .page-header p {
            margin-top: 5px;

            color: var(--text-light);

            font-size: 12px;
        }

        .primary-btn {
            border: none;

            background: var(--orange);
            color: white;

            padding: 11px 17px;

            border-radius: 7px;

            font-size: 12px;
            font-weight: 600;

            box-shadow: 0 3px 8px rgba(255,107,0,0.2);

            transition: 0.2s;
        }

        .primary-btn:hover {
            background: var(--orange-dark);
            transform: translateY(-1px);
        }

        .primary-btn i {
            margin-right: 7px;
        }


        /* =========================================================
           STATISTICS
        ========================================================= */

        .stats {
            display: grid;

            grid-template-columns: repeat(4, 1fr);

            gap: 17px;

            margin-bottom: 22px;
        }

        .stat-card {
            background: var(--card);

            border: 1px solid var(--border);

            border-radius: 10px;

            padding: 19px;

            transition: 0.2s;
        }

        .stat-card:hover {
            transform: translateY(-2px);

            box-shadow: 0 8px 25px rgba(0,0,0,0.05);
        }

        .stat-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .stat-label {
            font-size: 10px;

            color: var(--text-muted);

            text-transform: uppercase;
            letter-spacing: 0.7px;

            font-weight: 700;
        }

        .stat-icon {
            width: 38px;
            height: 38px;

            border-radius: 9px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: var(--orange-light);
            color: var(--orange);
        }

        .stat-value {
            font-size: 25px;

            font-weight: 700;

            margin-top: 14px;

            letter-spacing: -0.5px;
        }

        .stat-change {
            margin-top: 7px;

            color: var(--green);

            font-size: 10px;
            font-weight: 500;
        }

        .stat-change i {
            margin-right: 4px;
        }


        /* =========================================================
           MAIN GRID
        ========================================================= */

        .dashboard-grid {
            display: grid;

            grid-template-columns: minmax(0, 2fr) minmax(280px, 0.85fr);

            gap: 20px;
        }


        /* =========================================================
           PANEL
        ========================================================= */

        .panel {
            background: white;

            border: 1px solid var(--border);

            border-radius: 10px;

            overflow: hidden;

            margin-bottom: 20px;
        }

        .panel-header {
            padding: 16px 19px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            border-bottom: 1px solid var(--border);
        }

        .panel-header h2 {
            font-size: 14px;
            font-weight: 700;
        }

        .panel-header p {
            font-size: 10px;
            color: var(--text-muted);
            margin-top: 3px;
        }

        .panel-link {
            color: var(--orange);

            font-size: 10px;
            font-weight: 600;

            cursor: pointer;
        }

        .panel-link:hover {
            text-decoration: underline;
        }

        .panel-body {
            padding: 19px;
        }


        /* =========================================================
           REPOSITORIES
        ========================================================= */

        .repo-grid {
            display: grid;

            grid-template-columns: repeat(2, 1fr);

            gap: 14px;
        }

        .repo-card {
            border: 1px solid var(--border);

            border-radius: 9px;

            padding: 16px;

            cursor: pointer;

            transition: all 0.2s;

            background: white;
        }

        .repo-card:hover {
            border-color: var(--orange);

            box-shadow: 0 7px 20px rgba(0,0,0,0.06);

            transform: translateY(-2px);
        }

        .repo-head {
            display: flex;

            align-items: center;
            justify-content: space-between;
        }

        .repo-name {
            display: flex;
            align-items: center;

            gap: 10px;

            font-size: 13px;
            font-weight: 700;
        }

        .repo-icon {
            width: 34px;
            height: 34px;

            border-radius: 8px;

            background: var(--orange-light);

            color: var(--orange);

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .repo-status {
            display: flex;
            align-items: center;

            gap: 5px;

            font-size: 9px;
            font-weight: 700;

            color: var(--green);

            background: var(--green-light);

            padding: 5px 8px;

            border-radius: 20px;
        }

        .repo-status i {
            font-size: 6px;
        }

        .repo-type {
            color: var(--text-light);

            font-size: 10px;

            margin-top: 14px;
        }

        .repo-url {
            margin-top: 11px;

            padding: 8px 9px;

            background: #f7f8fa;

            border: 1px solid #eceef1;

            border-radius: 6px;

            font-size: 9px;

            color: #68717b;

            white-space: nowrap;

            overflow: hidden;

            text-overflow: ellipsis;
        }


        /* =========================================================
           COMPONENT TABLE
        ========================================================= */

        .table-toolbar {
            padding: 12px 19px;

            display: flex;
            justify-content: space-between;

            border-bottom: 1px solid var(--border);
        }

        .filter-buttons {
            display: flex;
            gap: 6px;
        }

        .filter-btn {
            border: 1px solid var(--border);

            background: white;

            color: var(--text-light);

            padding: 6px 11px;

            border-radius: 6px;

            font-size: 10px;
            font-weight: 500;

            transition: 0.2s;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background: var(--orange-light);

            color: var(--orange);

            border-color: #ffd0b0;
        }

        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;

            border-collapse: collapse;

            min-width: 650px;
        }

        th {
            text-align: left;

            background: #fafbfc;

            color: var(--text-muted);

            font-size: 9px;

            text-transform: uppercase;

            letter-spacing: 0.6px;

            padding: 12px 17px;

            border-bottom: 1px solid var(--border);
        }

        td {
            padding: 13px 17px;

            border-bottom: 1px solid #f0f1f3;

            font-size: 10px;

            color: #414850;
        }

        tbody tr:hover td {
            background: #fffaf6;
        }

        .component-name {
            color: var(--orange);

            font-weight: 700;
        }

        .tag {
            padding: 4px 7px;

            border-radius: 5px;

            background: #f1f3f5;

            color: #606871;

            font-size: 8px;

            font-weight: 600;
        }

        .version {
            color: #555d66;
        }

        .size {
            color: var(--text-light);
        }


        /* =========================================================
           STORAGE
        ========================================================= */

        .storage-top {
            display: flex;
            justify-content: space-between;

            margin-bottom: 11px;
        }

        .storage-label {
            font-size: 11px;
            color: var(--text-light);
        }

        .storage-total {
            font-size: 11px;
            font-weight: 700;
        }

        .progress {
            height: 9px;

            background: #eceff2;

            border-radius: 20px;

            overflow: hidden;
        }

        .progress-bar {
            width: 68%;
            height: 100%;

            background: var(--orange);

            border-radius: 20px;
        }

        .storage-info {
            display: flex;
            justify-content: space-between;

            margin-top: 9px;

            color: var(--text-muted);

            font-size: 9px;
        }


        /* =========================================================
           SYSTEM STATUS
        ========================================================= */

        .system-row {
            display: flex;
            justify-content: space-between;
            align-items: center;

            padding: 12px 0;

            border-bottom: 1px solid #f0f1f3;

            font-size: 10px;
        }

        .system-row:last-child {
            border-bottom: none;
            padding-bottom: 0;
        }

        .system-status {
            display: flex;
            align-items: center;
            gap: 5px;

            color: var(--green);

            font-weight: 600;
        }

        .system-status i {
            font-size: 6px;
        }

        .memory {
            color: var(--text-light);
        }


        /* =========================================================
           ACTIVITY
        ========================================================= */

        .activity {
            display: flex;

            gap: 11px;

            padding: 11px 0;

            border-bottom: 1px solid #f0f1f3;
        }

        .activity:last-child {
            border-bottom: none;
            padding-bottom: 0;
        }

        .activity-icon {
            width: 31px;
            height: 31px;

            border-radius: 8px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: var(--orange-light);

            color: var(--orange);

            font-size: 11px;

            flex-shrink: 0;
        }

        .activity-text {
            font-size: 10px;

            line-height: 1.5;

            color: #4d555d;
        }

        .activity-text strong {
            color: var(--text);

            font-weight: 700;
        }

        .activity-time {
            margin-top: 3px;

            font-size: 8px;

            color: var(--text-muted);
        }


        /* =========================================================
           QUICK ACTIONS
        ========================================================= */

        .quick-actions {
            display: grid;

            grid-template-columns: repeat(2, 1fr);

            gap: 9px;
        }

        .quick-action {
            border: 1px solid var(--border);

            background: white;

            padding: 12px 8px;

            border-radius: 8px;

            text-align: center;

            color: var(--text-light);

            font-size: 9px;

            transition: 0.2s;
        }

        .quick-action i {
            display: block;

            color: var(--orange);

            font-size: 15px;

            margin-bottom: 7px;
        }

        .quick-action:hover {
            border-color: var(--orange);

            background: var(--orange-light);

            color: var(--orange);
        }


        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;

            right: 25px;
            bottom: 25px;

            display: flex;
            align-items: center;
            gap: 9px;

            background: #222;

            color: white;

            padding: 12px 16px;

            border-radius: 8px;

            font-size: 11px;

            box-shadow: 0 10px 30px rgba(0,0,0,0.2);

            transform: translateY(100px);

            opacity: 0;

            transition: 0.3s;

            z-index: 2000;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        .toast i {
            color: #6fd69a;
        }


        /* =========================================================
           MOBILE
        ========================================================= */

        @media(max-width: 1100px) {

            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .dashboard-grid {
                grid-template-columns: 1fr;
            }
        }


        @media(max-width: 800px) {

            .sidebar {
                transform: translateX(-100%);
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
                padding: 0 18px;
            }

            .search {
                width: 210px;
            }

            .content {
                padding: 20px;
            }
        }


        @media(max-width: 650px) {

            .stats {
                grid-template-columns: 1fr;
            }

            .repo-grid {
                grid-template-columns: 1fr;
            }

            .search {
                display: none;
            }

            .user-info {
                display: none;
            }

            .page-header {
                align-items: flex-start;

                gap: 15px;
            }

            .page-header h1 {
                font-size: 21px;
            }

            .primary-btn {
                padding: 9px 11px;
            }

            .primary-btn span {
                display: none;
            }

            .primary-btn i {
                margin: 0;
            }

            .content {
                padding: 16px;
            }
        }

    </style>
</head>


<body>


<!-- =========================================================
     SIDEBAR
========================================================= -->

<aside class="sidebar" id="sidebar">

    <div class="brand">

        <div class="brand-icon">
            <i class="fas fa-cubes"></i>
        </div>

        <div>
            <div class="brand-name">
                Nexus Repository
            </div>

            <div class="brand-subtitle">
                Repository Manager
            </div>
        </div>

    </div>


    <div class="sidebar-content">

        <div class="menu-title">
            Main
        </div>

        <div class="nav-item active"
             onclick="selectNav(this, 'Dashboard')">

            <i class="fas fa-chart-pie"></i>

            Dashboard

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Repositories')">

            <i class="fas fa-database"></i>

            Repositories

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Components')">

            <i class="fas fa-box-open"></i>

            Components

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Browse')">

            <i class="fas fa-folder-tree"></i>

            Browse

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Upload')">

            <i class="fas fa-cloud-arrow-up"></i>

            Upload

        </div>


        <br>


        <div class="menu-title">
            Administration
        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Security')">

            <i class="fas fa-shield-halved"></i>

            Security

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'Settings')">

            <i class="fas fa-gear"></i>

            Settings

        </div>


        <div class="nav-item"
             onclick="selectNav(this, 'System')">

            <i class="fas fa-server"></i>

            System

        </div>

    </div>


    <div class="sidebar-footer">

        <div class="nav-item"
             onclick="showToast('Help center opened')">

            <i class="fas fa-circle-question"></i>

            Help & Support

        </div>

        <div class="version">
            Nexus Repository Manager 3.x
        </div>

    </div>

</aside>



<!-- =========================================================
     MAIN
========================================================= -->

<main class="main">


    <!-- TOP BAR -->

    <header class="topbar">

        <div class="breadcrumb">

            <button class="mobile-menu"
                    id="mobileMenu">

                <i class="fas fa-bars"></i>

            </button>

            <strong>Nexus</strong>

            <span>/</span>

            <span>Dashboard</span>

        </div>


        <div class="top-actions">


            <!-- SEARCH -->

            <div class="search">

                <i class="fas fa-search"></i>

                <input
                    type="text"
                    id="searchInput"
                    placeholder="Search repositories..."
                >

            </div>


            <!-- REFRESH -->

            <button
                class="top-btn"
                onclick="refreshDashboard()"
                title="Refresh">

                <i class="fas fa-rotate"></i>

            </button>


            <!-- NOTIFICATION -->

            <button
                class="top-btn"
                onclick="showToast('No new notifications')"
                title="Notifications">

                <i class="far fa-bell"></i>

            </button>


            <!-- USER -->

            <div class="user">

                <div class="avatar">
                    SK
                </div>

                <div class="user-info">

                    <div class="user-name">
                        Administrator
                    </div>

                    <div class="user-role">
                        System Administrator
                    </div>

                </div>

            </div>

        </div>

    </header>



    <!-- =====================================================
         CONTENT
    ====================================================== -->

    <section class="content">


        <!-- PAGE HEADER -->

        <div class="page-header">

            <div>

                <h1>
                    Dashboard
                </h1>

                <p>
                    Monitor repositories, components and system health.
                </p>

            </div>


            <button
                class="primary-btn"
                onclick="uploadComponent()">

                <i class="fas fa-cloud-arrow-up"></i>

                <span>Upload Component</span>

            </button>

        </div>



        <!-- =================================================
             STATISTICS
        ================================================== -->

        <div class="stats">


            <!-- REPOSITORIES -->

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



            <!-- COMPONENTS -->

            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        Components
                    </div>

                    <div class="stat-icon">

                        <i class="fas fa-box-open"></i>

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



            <!-- STORAGE -->

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



            <!-- SYSTEM -->

            <div class="stat-card">

                <div class="stat-top">

                    <div class="stat-label">
                        System Status
                    </div>

                    <div class="stat-icon">

                        <i class="fas fa-heart-pulse"></i>

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



        <!-- =================================================
             DASHBOARD GRID
        ================================================== -->

        <div class="dashboard-grid">


            <!-- =================================================
                 LEFT COLUMN
            ================================================== -->

            <div>


                <!-- REPOSITORIES -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                Repositories
                            </h2>

                            <p>
                                Active artifact repositories
                            </p>

                        </div>

                        <span
                            class="panel-link"
                            onclick="showToast('Repository management opened')">

                            View all

                        </span>

                    </div>


                    <div class="panel-body">

                        <div
                            class="repo-grid"
                            id="repoGrid">


                            <!-- MAVEN RELEASES -->

                            <div
                                class="repo-card"
                                data-name="maven-releases">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-cube"></i>
                                        </div>

                                        maven-releases

                                    </div>

                                    <div class="repo-status">

                                        <i class="fas fa-circle"></i>

                                        ONLINE

                                    </div>

                                </div>

                                <div class="repo-type">
                                    Maven Hosted Repository
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/maven-releases/
                                </div>

                            </div>



                            <!-- MAVEN SNAPSHOTS -->

                            <div
                                class="repo-card"
                                data-name="maven-snapshots">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-cube"></i>
                                        </div>

                                        maven-snapshots

                                    </div>

                                    <div class="repo-status">

                                        <i class="fas fa-circle"></i>

                                        ONLINE

                                    </div>

                                </div>

                                <div class="repo-type">
                                    Maven Hosted Repository
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/maven-snapshots/
                                </div>

                            </div>



                            <!-- MAVEN CENTRAL -->

                            <div
                                class="repo-card"
                                data-name="maven-central">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fas fa-layer-group"></i>
                                        </div>

                                        maven-central

                                    </div>

                                    <div class="repo-status">

                                        <i class="fas fa-circle"></i>

                                        ONLINE

                                    </div>

                                </div>

                                <div class="repo-type">
                                    Maven Proxy Repository
                                </div>

                                <div class="repo-url">
                                    https://repo1.maven.org/maven2/
                                </div>

                            </div>



                            <!-- NPM -->

                            <div
                                class="repo-card"
                                data-name="npm-public">

                                <div class="repo-head">

                                    <div class="repo-name">

                                        <div class="repo-icon">
                                            <i class="fab fa-npm"></i>
                                        </div>

                                        npm-public

                                    </div>

                                    <div class="repo-status">

                                        <i class="fas fa-circle"></i>

                                        ONLINE

                                    </div>

                                </div>

                                <div class="repo-type">
                                    npm Group Repository
                                </div>

                                <div class="repo-url">
                                    http://localhost:8081/repository/npm-public/
                                </div>

                            </div>


                        </div>

                    </div>

                </div>



                <!-- COMPONENTS -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                Recent Components
                            </h2>

                            <p>
                                Recently uploaded artifacts
                            </p>

                        </div>

                        <span
                            class="panel-link"
                            onclick="showToast('Component browser opened')">

                            Browse

                        </span>

                    </div>


                    <div class="table-toolbar">

                        <div class="filter-buttons">

                            <button
                                class="filter-btn active"
                                onclick="filterComponents('all', this)">

                                All

                            </button>

                            <button
                                class="filter-btn"
                                onclick="filterComponents('maven', this)">

                                Maven

                            </button>

                            <button
                                class="filter-btn"
                                onclick="filterComponents('npm', this)">

                                npm

                            </button>

                        </div>

                    </div>


                    <div class="table-container">

                        <table>

                            <thead>

                                <tr>

                                    <th>
                                        Component
                                    </th>

                                    <th>
                                        Version
                                    </th>

                                    <th>
                                        Repository
                                    </th>

                                    <th>
                                        Type
                                    </th>

                                    <th>
                                        Size
                                    </th>

                                    <th>
                                        Updated
                                    </th>

                                </tr>

                            </thead>


                            <tbody id="componentTable">


                                <tr data-type="maven">

                                    <td class="component-name">
                                        ecommerce-api
                                    </td>

                                    <td class="version">
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

                                    <td class="version">
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

                                    <td class="version">
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

                                    <td class="version">
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

            </div>



            <!-- =================================================
                 RIGHT COLUMN
            ================================================== -->

            <div>


                <!-- STORAGE -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                Storage
                            </h2>

                            <p>
                                Repository storage usage
                            </p>

                        </div>

                    </div>


                    <div class="panel-body">

                        <div class="storage-top">

                            <span class="storage-label">
                                Repository Storage
                            </span>

                            <span class="storage-total">
                                68 GB / 100 GB
                            </span>

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



                <!-- SYSTEM STATUS -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                System Status
                            </h2>

                            <p>
                                Service health
                            </p>

                        </div>

                    </div>


                    <div class="panel-body">


                        <div class="system-row">

                            <span>
                                Nexus Repository
                            </span>

                            <span class="system-status">

                                <i class="fas fa-circle"></i>

                                Running

                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Database
                            </span>

                            <span class="system-status">

                                <i class="fas fa-circle"></i>

                                Connected

                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Blob Store
                            </span>

                            <span class="system-status">

                                <i class="fas fa-circle"></i>

                                Healthy

                            </span>

                        </div>


                        <div class="system-row">

                            <span>
                                Memory
                            </span>

                            <span class="memory">
                                2.4 GB
                            </span>

                        </div>

                    </div>

                </div>



                <!-- RECENT ACTIVITY -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                Recent Activity
                            </h2>

                            <p>
                                Latest repository events
                            </p>

                        </div>

                    </div>


                    <div class="panel-body">


                        <div class="activity">

                            <div class="activity-icon">

                                <i class="fas fa-cloud-arrow-up"></i>

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

                                <i class="fas fa-arrows-rotate"></i>

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



                <!-- QUICK ACTIONS -->

                <div class="panel">

                    <div class="panel-header">

                        <div>

                            <h2>
                                Quick Actions
                            </h2>

                            <p>
                                Common repository operations
                            </p>

                        </div>

                    </div>


                    <div class="panel-body">

                        <div class="quick-actions">


                            <div
                                class="quick-action"
                                onclick="uploadComponent()">

                                <i class="fas fa-cloud-arrow-up"></i>

                                Upload

                            </div>


                            <div
                                class="quick-action"
                                onclick="showToast('Browse repositories opened')">

                                <i class="fas fa-folder-open"></i>

                                Browse

                            </div>


                            <div
                                class="quick-action"
                                onclick="showToast('Repository creation dialog opened')">

                                <i class="fas fa-plus"></i>

                                New Repo

                            </div>


                            <div
                                class="quick-action"
                                onclick="refreshDashboard()">

                                <i class="fas fa-rotate"></i>

                                Refresh

                            </div>


                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>

</main>



<!-- =========================================================
     TOAST
========================================================= -->

<div class="toast" id="toast">

    <i class="fas fa-circle-check"></i>

    <span id="toastMessage"></span>

</div>



<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>


    /* =========================================================
       MOBILE MENU
    ========================================================= */

    const mobileMenu =
        document.getElementById("mobileMenu");

    const sidebar =
        document.getElementById("sidebar");


    mobileMenu.addEventListener("click", () => {

        sidebar.classList.toggle("open");

    });



    /* =========================================================
       NAVIGATION
    ========================================================= */

    function selectNav(element, pageName) {

        document
            .querySelectorAll(".nav-item")
            .forEach(item => {

                item.classList.remove("active");

            });


        element.classList.add("active");


        showToast(pageName + " selected");


        if (window.innerWidth <= 800) {

            sidebar.classList.remove("open");

        }

    }



    /* =========================================================
       TOAST
    ========================================================= */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");

        const messageBox =
            document.getElementById("toastMessage");


        messageBox.innerText = message;


        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer = setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

    }



    /* =========================================================
       SEARCH REPOSITORIES
    ========================================================= */

    const searchInput =
        document.getElementById("searchInput");


    searchInput.addEventListener("input", function () {

        const search =
            this.value
                .toLowerCase()
                .trim();


        const repositories =
            document.querySelectorAll(".repo-card");


        repositories.forEach(repo => {

            const name =
                repo.dataset.name
                    .toLowerCase();


            if (name.includes(search)) {

                repo.style.display = "";

            } else {

                repo.style.display = "none";

            }

        });

    });



    /* =========================================================
       FILTER COMPONENTS
    ========================================================= */

    function filterComponents(type, button) {


        document
            .querySelectorAll(".filter-btn")
            .forEach(btn => {

                btn.classList.remove("active");

            });


        button.classList.add("active");


        const rows =
            document.querySelectorAll(
                "#componentTable tr"
            );


        rows.forEach(row => {

            if (type === "all") {

                row.style.display = "";

            }

            else if (row.dataset.type === type) {

                row.style.display = "";

            }

            else {

                row.style.display = "none";

            }

        });


        showToast(
            type === "all"
                ? "Showing all components"
                : "Showing " + type + " components"
        );

    }



    /* =========================================================
       UPLOAD COMPONENT
    ========================================================= */

    function uploadComponent() {

        showToast(
            "Upload component dialog opened"
        );


        setTimeout(() => {

            showToast(
                "Component uploaded successfully"
            );

        }, 1200);

    }



    /* =========================================================
       REFRESH
    ========================================================= */

    function refreshDashboard() {

        const refreshIcon =
            document.querySelector(
                ".top-btn .fa-rotate"
            );


        refreshIcon.classList.add("fa-spin");


        showToast(
            "Refreshing Nexus Repository..."
        );


        setTimeout(() => {

            refreshIcon.classList.remove("fa-spin");

            showToast(
                "Dashboard refreshed successfully"
            );

        }, 1000);

    }



    /* =========================================================
       REPOSITORY CLICK
    ========================================================= */

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



    /* =========================================================
       CLOSE SIDEBAR WHEN CLICKING OUTSIDE
    ========================================================= */

    document.addEventListener("click", function (event) {

        if (window.innerWidth > 800) {
            return;
        }


        if (
            !sidebar.contains(event.target) &&
            !mobileMenu.contains(event.target)
        ) {

            sidebar.classList.remove("open");

        }

    });


</script>


</body>
</html>
```
