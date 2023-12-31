

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../component/top.jsp"></jsp:include>
        </head>
        

            <!-- Hero Start -->
            <div class="container-fluid bg-primary py-5 hero-header mb-5">
                <div class="row py-3">
                    <div class="col-12 text-center">
                        <h1 class="display-3 text-white animated zoomIn">Registration</h1>
                        <a href="" class="h4 text-white">Home</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="" class="h4 text-white">Registration</a>
                    </div>
                </div>
            </div>
            <!-- Hero End -->

            <!-- Contact Start -->
            <div class="container-fluid py-5">
                <div class="container">
                    <form action="Registration" method="POST">
                        <div class="row g-5">
                            <div class="col-xl-4 col-lg-6 wow slideInUp" data-wow-delay="0.1s">
                                <div class="bg-light rounded h-100 p-5">
                                    <div class="section-title">
                                        <h6 class="position-relative d-inline-block text-primary text-uppercase" style="font-size: 20px">Account request</h6>
                                        <h6 class="display-6 mb-4" style="font-size: 15px">The user must comply with the following requirements</h6>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Full Name</h5>
                                            <span style="font-size: 15px">Include lowercase,uppercase and white space</span>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center mb-2">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Password</h5>
                                            <span style="font-size: 15px">Must contains uppercase, lowercase, number, no space and at least 8 characters</span>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-start">
                                            <h5 class="mb-0" style="font-size: 17px">Mobile</h5>
                                            <span style="font-size: 15px">Only number</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 wow slideInUp" data-wow-delay="0.3s">

                                <div class="row g-3">
                                    <div class="col-12">
                                        <input type="text" name="name" class="form-control border-0 bg-light px-4" placeholder="Your Name" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="email" name="email" class="form-control border-0 bg-light px-4" placeholder="Your Email" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="password" name="password" class="form-control border-0 bg-light px-4" placeholder="Your Password" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name="mobile" class="form-control border-0 bg-light px-4" placeholder="Your Number" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name="address" class="form-control border-0 bg-light px-4" placeholder="Your Address" style="height: 55px;">
                                    </div>
                                    <div class="col-12">
                                        <div class="date" id="date1" data-target-input="nearest">
                                            <input type="date" name="dob"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Date of birth" data-target="#date1" data-toggle="datetimepicker" style="height: 55px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-12 wow slideInUp" data-wow-delay="0.3s" >
                                <div class="col-12">
                                    Gender<br/>
                                    <input type="radio" name="gender" value="Male"  > Male<br/><!-- comment -->
                                    <input type="radio" name="gender2" value="Female"> Female<!-- comment -->
                                </div><br/><br/>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Register</button>
                                </div>
                                <div class="col-12">
                                    <h5 style="color: #664d03;">${requestScope.exist}</h5>
                                <h5 style="color: #664d03;">${requestScope.error}</h5>
                                <h5 style="color: green;">${requestScope.ok}</h5>
                            </div>
                        </div>
                    </div></form>
            </div>
        </div>
        <!-- Contact End -->
        <!-- Newsletter Start -->
        <div class="container-fluid position-relative pt-5 wow fadeInUp" data-wow-delay="0.1s" style="z-index: 1;">
            <div class="container">
                <div>

                </div>
            </div>
        </div>
        <!-- Newsletter End -->
    </body><br/><br/>
    <jsp:include page="../component/bottom.jsp"></jsp:include>
</html>
