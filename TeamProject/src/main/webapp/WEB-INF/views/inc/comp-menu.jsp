<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <head>
     <meta charset="utf-8" />
 <meta
   name="viewport"
   content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
 />

 <meta name="description" content="" />

 <!-- Favicon -->
 <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon.ico" />

 <!-- Fonts -->
 <link rel="preconnect" href="https://fonts.googleapis.com" />
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
 <link
   href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
   rel="stylesheet"
 />

 <!-- Icons. Uncomment required icon fonts -->
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/fonts/boxicons.css" />

 <!-- Core CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/demo.css" />

 <!-- Vendors CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendor/libs/apex-charts/apex-charts.css" />

 <!-- Page CSS -->

 <!-- Helpers -->
 <script src="${pageContext.request.contextPath }/resources/assets/vendor/js/helpers.js"></script>

 <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
 <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
 <script src="${pageContext.request.contextPath }/resources/assets/js/config.js"></script>
 </head>
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item active">
              <a href="compMain" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">업체홈으로</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/updateAccount" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">업체정보수정</div>
              </a>
            </li>

<!--             <li class="menu-header small text-uppercase"> -->
<!--               <span class="menu-header-text">계정</span> -->
<!--             </li> -->
		<li class="menu-header small text-uppercase"><span class="menu-header-text">상품관리</span></li>

            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/insertGoods" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">상품신규등록</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/deleteProd" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">상품삭제</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/updateProd" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">상품수정</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/prodList" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">상품목록</div>
              </a>
            </li>
        <li class="menu-header small text-uppercase"><span class="menu-header-text">주문관리</span></li>
            <!-- Cards -->
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/ordList" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">주문목록</div>
              </a>
            </li>

            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/comp/prodRefund" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">환불관리</div>
              </a>
            </li>



            <!-- Components -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Components</span></li>
            <!-- Cards -->
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/member/cards-basic" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">Cards</div>
              </a>
            </li>

            <!-- Forms & Tables -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">Forms &amp; Tables</span></li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Elements">Form Elements</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="${pageContext.request.contextPath }/member/forms-basic-inputs" class="menu-link">
                    <div data-i18n="Basic Inputs">Basic Inputs</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="${pageContext.request.contextPath }/member/forms-input-groups" class="menu-link">
                    <div data-i18n="Input groups">Input groups</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Form Layouts">Form Layouts</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="${pageContext.request.contextPath }/member/form-layouts-vertical" class="menu-link">
                    <div data-i18n="Vertical Form">Vertical Form</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="${pageContext.request.contextPath }/member/form-layouts-horizontal" class="menu-link">
                    <div data-i18n="Horizontal Form">Horizontal Form</div>
                  </a>
                </li>
                 <li class="menu-item">
                  <a href="${pageContext.request.contextPath }/member/form-layouts-vertical" class="menu-link">
                    <div data-i18n="Vertical Form">페이지</div>
                  </a>
                </li>
              </ul>
            </li>
            <!-- Tables -->
            <li class="menu-item">
              <a href="${pageContext.request.contextPath }/member/tables" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">Tables</div>
              </a>
            </li>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="container-xxl navbar navbar-expand-xl align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu"><span>업체 페이지 메뉴</span></i>
              </a>
            </div>

          </nav>

          <!-- / Navbar -->
