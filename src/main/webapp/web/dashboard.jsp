<%--
  Created by IntelliJ IDEA.
  User: YC£
  Date: 11/10/2023
  Time: 15:04
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
<jsp:include page="../component/navBar.jsp"/>
  <section class="w-full table-area">

     <div class="container-table margin-x-auto d-flex-col  align-items-center" style="gap: 28px">
    <div class="table-rowP  ">
        <span>Code</span>
        <span>First Name</span>
        <span>Last Name</span>
        <span>N°Phone</span>
        <span>Date Of Birth</span>
        <span>Adresse</span>
        <span onclick="display()" ><i class="fa-solid fa-user-plus" width="6px" style="color: #0000ff;"></i></span>
     </div>
        <c:forEach var="client" items="${clients}">

         <div class="table-row ">
             <span class="column-info">${client.code}</span>
            <span class="column-info" >${client.prenom}</span>
             <span class="column-info">${client.nom}</span>
             <span class="column-info">${client.tel}</span>
              <span class="column-info">${client.dateNaissance}</span>
             <span class="column-info">${client.address}</span>
             <span class="d-flex justify-center column-info align-items-center " style="gap:5px">
              <form action="clients?action=delete" method="POST">
                  <input type="hidden" value="${client.code}" name="clientId">
        <button type="submit"><i class="fa-solid fa-trash iconD "></i></button>
              </form>
               <a href="client?code=${client.code}" class="cursor-pointer"> <i class="fa-solid fa-pen iconE"></i> </a>
             </span>
         </div>
        </c:forEach>



      </div>
  </section>

<section id="form-section" class="form-area w-full ">


<form class="d-flex-col align-items-center form-add bg-white padding-20  margin-x-auto" style="gap:18px" method="post" action="clients?action=save">
    <div class="d-flex-col w-full align-items-end cursor-pointer " onclick="Nodisplay()">
        <span class="close-right"></span>
        <span class="close-left"></span>

    </div>
    <div class="Title-form">
        <h4>Create Client</h4>
    </div>
    <div class="d-flex w-full justify-between">
    <div class="d-flex-col ">
        <label class="label-input color-black">Your First Name*</label>
        <input class="inputs padding-10" type="text" name="firstName" value="" placeholder="First Name">
    </div>
        <div class="d-flex-col ">

            <label class="label-input color-black">Your Last Name*</label>
            <input class="inputs padding-10" type="text" name="lastName" value="" placeholder="Last Name">
        </div>

    </div>

    <div class="d-flex w-full justify-between">

    <div class="d-flex-col">
        <label class="label-input color-black">Your N°Phone*</label>
        <input class="inputs padding-10" type="tel" name="phone" value="" placeholder="+212696102690">
    </div>
        <div class="d-flex-col">
            <label class="label-input color-black">Your Birth Day*</label>
            <input class="inputs padding-10" type="date" name="date" value="" placeholder="01/01/1900">
        </div>
    </div>

    <div class="d-flex w-full justify-between">

    <div class="d-flex-col">
        <label class="label-input color-black">Your Adresse*</label>
        <input class="inputs padding-10" type="text" name="adresse" value="" placeholder=" Your Adresse">
    </div>
    </div>

    <button type="submit" class="padding-10 btn-dash color-white bg-blue ">Submit</button>
</form>
</section>



<script src="../js/main.js">

</script>
</body>
</html>
