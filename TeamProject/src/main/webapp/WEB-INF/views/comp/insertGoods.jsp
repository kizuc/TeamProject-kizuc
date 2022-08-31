<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-relative"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
  <head>
  </head>

  <body>
  <!-- 메뉴단 -->
<jsp:include page="../inc/menu.jsp"/>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">

<!-- 		큰화면 버티컬 시작-->
		<jsp:include page="../inc/comp-menu.jsp"/>
<!-- 		큰화면 버티컬 끝 -->


           <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
<!-- 화면줄였을때 버티컬 메뉴 및 큰화면에서는 시작 -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4">
                <span class="text-muted fw-light">상품관리 </span>
              </h4>

              <div class="row">
                <div class="col-md-12">
                  <ul class="nav nav-pills flex-column flex-md-row mb-3">
                    <li class="nav-item">
                      <a class="nav-link" href="${pageContext.request.contextPath }/comp/updateProd">
                        <i class="bx bx-user me-1"></i>신규등록 </a>
                  </ul>
<!--  화면줄였을때 버티컬 및 큰화면에서는 시작 매뉴끝                  -->



                 <div class="col-xl">
                  <div class="card mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <h5 class="mb-0">용품신규등록</h5>
                      <small class="text-muted float-end"></small>
                    </div>
                    <div class="card-body">
                      <form action="${pageContext.request.contextPath }/comp/insertGoodsPro" method="post" enctype="multipart/form-data">
					 <label class="form-label" for="basic-default-fullname">제품타입</label>
					 <div class="form-check mt-3">
                            <input
                              name="default-radio-1"
                              class="form-check-input"
                              type="radio"
                              value="prod"
                              id="defaultRadio1"
                            />
                            <label class="form-check-label" for="defaultRadio1"> 용품 </label>
                          </div>
                          <div class="form-check">
                            <input
                              name="default-radio-1"
                              class="form-check-input"
                              type="radio"
                              value="food"
                              id="defaultRadio2"
                              checked
                            />
                            <label class="form-check-label" for="defaultRadio2"> 식품 </label>
                          </div>
<!--                      <div class="mb-3"> -->
<!--                           <label class="form-label" for="basic-default-fullname">제품타입코드</label> -->
<!--                           <input type="text" class="form-control" id="basic-default-fullname" name="prodLType" value="goods" readonly> -->
<!--                      </div> -->
                     <div class="mb-3">
                          <label class="form-label" for="basic-default-fullname">업체ID</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodLCompNm" value="${sessionScope.compId }" readonly/>
                    </div>
                     <div class="mb-3">
                          <label class="form-label" for="basic-default-fullname">제품코드</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodLCode" placeholder="제품코드 입력" />
                    </div>

					<div class="mb-3">
                          <label class="form-label" for="basic-default-fullname"  >상품명</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodLProdNm" placeholder="상품명 입력" />
                    </div>
					<div class="mb-3">
                          <label class="form-label" for="basic-default-fullname"  >옵션코드1</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodLOption1" placeholder="상품명 입력" />
                    </div>
					<div class="mb-3">
                          <label class="form-label" for="basic-default-fullname"  >옵션명1</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodOptionNm1" placeholder="상품명 입력" />
                    </div>
					<div class="mb-3">
                          <label class="form-label" for="basic-default-fullname"  >옵션코드2</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodLOption2" placeholder="상품명 입력" />
                    </div>
					<div class="mb-3">
                          <label class="form-label" for="basic-default-fullname"  >옵션명2</label>
                          <input type="text" class="form-control" id="basic-default-fullname" name="prodOptionNm2" placeholder="상품명 입력" />
                    </div>


                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company"  >가격</label>
                          <input type="text" class="form-control" id="basic-default-company" name="prodLPrice" placeholder="가격은 숫자만 입력" />
                        </div>
                        <div class="mb-3">
                          <label class="form-label" for="basic-default-company"  >수량</label>
                          <input type="text" class="form-control" id="basic-default-company" name="prodLQuantity" placeholder="수량은 숫자만 입력" />
                        </div>

                        <div class="mb-3">
                          <label class="form-label" for="basic-default-message">상품상세설명</label>
                          <textarea
                            id="basic-default-message"
                            name="ProdLDetail"
                            class="form-control"
                            placeholder="상세상품설명 입력"
                          ></textarea>
                        </div>
                        <div class="card">
                    <label class="form-label" for="basic-default-message">상품 메인 사진 첨부</label>
                    <div class="card-body">
                      <div class="mb-3">
                        <label for="formFile" class="form-label">상품사진 선택</label>
                        <input class="form-control" type="file" id="formFile" name="prodLMainImg" />
                      </div>
                    </div>
                  	<label class="form-label" for="basic-default-message">상품 서브 사진 첨부</label>
                    <div class="card-body">
                      <div class="mb-3">
                        <label for="formFile" class="form-label">상품사진 선택</label>
                        <input class="form-control" type="file" id="formFile" name="prodLSubImg"/>
                      </div>
                    </div>

                  </div>
                        <button type="submit" class="btn btn-primary">등록</button>
                         <button type="submit" class="btn btn-primary">취소</button>
                      </form>
                    </div>
                  </div>
                </div>




                </div>
              </div>
            </div>
            <!--/ Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a
                    href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                    target="_blank"
                    class="footer-link me-4"
                    >Documentation</a
                  >

                  <a
                    href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                    target="_blank"
                    class="footer-link me-4"
                    >Support</a
                  >
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- 화면 줄였을때 Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${pageContext.request.contextPath }/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <!-- Footer Section Begin -->
    <jsp:include page="../inc/footer.jsp"/>
</body>

</html>