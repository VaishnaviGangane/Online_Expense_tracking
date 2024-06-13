<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-money-check-dollar"></i>Expense Tracker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
        <c:if test="${ empty loginuser}">
        
        <li class="nav-item">
            <a class="nav-link active" href="index.jsp">
             Home
            </a>
          </li>
          
           </c:if>
        
        <c:if test="${not empty loginuser}">
        
        
        <li class="nav-item">
            <a class="nav-link active" href="addexpense.jsp">
              <i class="fa-solid fa-plus"></i></i>Add expense
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="viewexpense.jsp" tabindex="-1"> <i class="fa-solid fa-list"></i></i>view expense</a>
          </li>
           </c:if>
      </ul>

      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <c:if test="${not empty loginuser}">
          <li class="nav-item">
            <a class="nav-link active" href="#"><i class="fa-solid fa-user"></i>
             </i>${loginuser.fullname}
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="../logout" tabindex="-1"> <i class="fa-solid fa-right-from-bracket"></i></i> Logout</a>
          </li>
        </c:if>

        <c:if test="${empty loginuser}">
          <li class="nav-item">
            <a class="nav-link active" href="login.jsp">
              <i class="fa-solid fa-right-to-bracket"></i> Login
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="register.jsp" tabindex="-1"> <i class="fa-regular fa-registered"></i> Register</a>
          </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
