<%--
  Created by IntelliJ IDEA.
  User: YC£
  Date: 13/10/2023
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Easy Bank</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/CostumeCss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Marcellus+SC&family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

</head>
<body>
<jsp:include page="../component/navBar.jsp" />

<section class="w-full">

    <form class="d-flex-col align-items-center form-add bg-white padding-20  margin-x-auto" style="gap:18px" method="post" action="clients?action=update">

            <div class="Title-form">
            <h4>Update Client</h4>
        </div>
        <div class="d-flex w-full justify-between">
            <div class="d-flex-col">
                <label class="label-input color-black">Your Code*</label>
                <input class="inputs padding-10" type="text" name="code" value="${client.code}" placeholder="Code" readonly>
            </div>
            <div class="d-flex-col ">
                <label class="label-input color-black">Your First Name*</label>
                <input class="inputs padding-10" type="text" name="firstName" value="${client.prenom}" placeholder="First Name">
            </div>
        </div>

        <div class="d-flex w-full justify-between">
            <div class="d-flex-col ">

                <label class="label-input color-black">Your Last Name*</label>
                <input class="inputs padding-10" type="text" name="lastName" value="${client.nom}" placeholder="Last Name">
            </div>
            <div class="d-flex-col">
                <label class="label-input color-black">Your N°Phone*</label>
                <input class="inputs padding-10" type="tel" name="phone" value="${client.tel}" placeholder="+212696102690">
            </div>
        </div>

        <div class="d-flex w-full justify-between">
            <div class="d-flex-col">
                <label class="label-input color-black">Your Birth Day*</label>
                <input class="inputs padding-10" type="date" name="date" value="${client.dateNaissance}" placeholder="01/01/1900">
            </div>
            <div class="d-flex-col">
                <label class="label-input color-black">Your Adresse*</label>
                <input class="inputs padding-10" type="text" name="adresse" value="${client.address}" placeholder=" Your Adresse">
            </div>
        </div>

        <button type="submit" class="padding-10 btn-dash color-white bg-blue ">Submit</button>

    </form>


</section>

</body>
</html>
