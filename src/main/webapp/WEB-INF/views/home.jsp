<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/27/2022
  Time: 12:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <jsp:include page="./include/css.jsp"/>
</head>
<body>
<div class="font-sans antialiased bg-grey-lightest">
    <!-- Top Nav -->
    <div class="w-full bg-green fixed shadow z-1">
        <div class="container mx-auto">
            <div class="w-full flex justify-between items-center py-4 px-8">
                <!-- Brand -->
                <div class="text-center text-white font-bold">Your Company</div>
                <!-- Navigation -->
                <div class="items-center hidden sm:flex">
                    <a href="#" class="text-white hover:text-green-lightest no-underline mx-2 px-2 py-2">Link 1</a>
                    <a href="#" class="text-white hover:text-green-lightest no-underline mx-2 px-2 py-2">Link 2</a>
                    <a href="#" class="bg-green-dark hover:bg-green-darker rounded-full text-white no-underline mx-2 px-4 py-2">Link 3</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Content -->
    <div class="w-full bg-grey-lightest" style="padding-top: 4rem;">
        <div class="container mx-auto py-8">
            <div class="w-5/6 lg:w-1/2 mx-auto bg-white rounded shadow">
                <div class="py-4 px-8 text-black text-xl border-b border-grey-lighter">Register for a free account</div>
                <div class="py-4 px-8">
                    <%--@elvariable id="registrationDto" type="com.example.springbootdockerizedexample.dto.request.RegistrationDto"--%>
                    <form:form action="${pageContext.request.contextPath}/response" method="POST" modelAttribute="registrationDto">

                        <div class="flex mb-4">
                            <div class="w-1/2 mr-1">
                                <label class="block text-grey-darker text-sm font-bold mb-2" for="first_name">First Name</label>
                                <form:input class="appearance-none border rounded w-full py-2 px-3 text-grey-darker" id="first_name" type="text" path="firstName" placeholder="Your first name"/>
                            </div>
                            <div class="w-1/2 ml-1">
                                <label class="block text-grey-darker text-sm font-bold mb-2" for="last_name">Last Name</label>
                                <form:input class="appearance-none border rounded w-full py-2 px-3 text-grey-darker" id="last_name" type="text" path="lastName" placeholder="Your last name"/>
                            </div>
                        </div>
                        <div class="mb-4">
                            <label class="block text-grey-darker text-sm font-bold mb-2" for="email">Email Address</label>
                            <form:input class="appearance-none border rounded w-full py-2 px-3 text-grey-darker" id="email" type="email" path="email" placeholder="Your email address"/>
                        </div>
                        <div class="mb-4">
                            <label class="block text-grey-darker text-sm font-bold mb-2" for="password">Password</label>
                            <form:input class="appearance-none border rounded w-full py-2 px-3 text-grey-darker" id="password" type="password" path="password" placeholder="Your secure password"/>
                            <p class="text-grey text-xs mt-1">At least 6 characters</p>
                        </div>
                        <div class="flex items-center justify-between mt-8">
                            <button class="block w-full bg-yellow-400 hover:bg-yellow-300 p-4 rounded text-yellow-900 hover:text-yellow-800 transition duration-300">
                                Sign Up
                            </button>
                        </div>

                    </form:form>


                </div>
            </div>
            <p class="text-center my-4">
                <a href="#" class="text-grey-dark text-sm no-underline hover:text-grey-darker">I already have an account</a>
            </p>
        </div>
    </div>
    <!-- Footer -->
    <footer class="w-full bg-grey-lighter py-8">
        <div class="container mx-auto text-center px-8">
            <p class="text-grey-dark mb-2 text-sm">This is a product of <span class="font-bold">Your Company</span></p>
        </div>
    </footer>
</div>
<%--<div class="w-screen h-screen p-10 bg-gray-100 text-slate-700">--%>
<%--    <!-- header -->--%>
<%--    <h1 class="max-w-md mx-auto text-center text-2xl font-bold">--%>
<%--        Simple Counter Application--%>
<%--    </h1>--%>

<%--    <!-- counters -->--%>
<%--    <div class="mx-auto max-w-md mt-10 space-y-5">--%>
<%--        <div--%>
<%--                class="p-4 h-auto flex flex-col items-center justify-center space-y-5 bg-white rounded shadow"--%>
<%--        >--%>
<%--            <div id="counter" class="text-2xl font-semibold"></div>--%>
<%--            <div class="flex space-x-3">--%>
<%--                <button--%>
<%--                        id="increment"--%>
<%--                        class="bg-indigo-400 text-white px-3 py-2 rounded shadow"--%>
<%--                        id="increment"--%>
<%--                >--%>
<%--                    Increment--%>
<%--                </button>--%>
<%--                <button--%>
<%--                        id="decrement"--%>
<%--                        class="bg-red-400 text-white px-3 py-2 rounded shadow"--%>
<%--                        id="decrement"--%>
<%--                >--%>
<%--                    Decrement--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

</body>
</html>
