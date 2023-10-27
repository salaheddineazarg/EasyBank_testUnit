<%--
  Created by IntelliJ IDEA.
  User: YC£
  Date: 18/10/2023
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/CostumeCss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Marcellus+SC&family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="overflow-y-hidden">
<jsp:include page="../component/navBar.jsp" />

<section class="w-full bg-blue-50 h-[100vh]  position-relative padding-20">
    <div class="d-flex-col mx-auto mt-10 w-[70%] bg-white h-auto border-2 border-blue-400 rounded-md">
    <div id="step1" class="d-flex-col  w-full  h-auto bg-white  ">
    <div class=" d-flex ">
    <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[200px]">
    <label class="text-xl text-lime-700 font-poppins">Montant(en DH)</label>
        <input id="display-value"  value="5000 DH"   class="border-none w-[100px] rounded-md shadow-inner inset-2 p-1 text-base font-bold text-blue-600 " readonly type="text">
        <input id="default-range" step="1000" type="range" min="5000" max="600000" onmousemove="switchValue(value)" value="5000" class="w-full h-1 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700">
        <p class="font-normal text-sm text-gray-600">Min 5000 DH - Max 600000 DH</p>
    </div>
   <div class="w-[50%] border-b  p-5 d-flex-col gap-5 p-4 border-gray-300 h-[200px]">
       <label class="text-xl text-lime-700 font-poppins">Duée (en mois)</label>
       <input id="displayMounth"  value="12"   class="border-none w-[70px] rounded-md shadow-inner inset-2 p-1 text-base font-bold text-blue-600 " readonly type="text">
       <input id="defaultMounth" type="range" step="6" min="12" max="120" onmousemove="switchValue(value)" value="12" class="w-full h-1 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700">
       <p class="font-normal text-sm text-gray-600">Min 12 mois - Max 120 mois</p>
   </div>
    </div>
    <div class="w-full   d-flex justify-around items-center h-[66px] border-b border-blue-100">
        <div class="d-flex gap-4">
     <p class="text-md font-bold font-poppins text-lime-700">
         Expected monthly payment :
     </p>
      <input id="totalInput" type="text" value="" class="border-none w-[100px] rounded-md shadow-inner inset-2 p-1 text-base font-bold text-blue-600 " >

        </div>
    </div>
    </div>
    <div id="step2" class="hidden  w-full   h-auto bg-white  ">
        <div class=" d-flex ">
            <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                <label class="text-xl text-lime-700 font-poppins">Employee</label>
                <select>
                    <option>Employee 1</option>
                    <option>Employee 2</option>
                    <option>Employee 3</option>
                </select>
            </div>
            <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                <label class="text-xl text-lime-700 font-poppins">Client</label>
                <select>
                    <option>Client 1</option>
                    <option>Client 2</option>
                    <option>Client 3</option>
                </select>
            </div>
        </div>
    </div>
        <form id="step3" class="hidden  w-full  h-auto bg-white  ">
            <div class=" d-flex ">
                <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                    <label class="text-md text-lime-700 font-poppins">Nom</label>
                    <input type="text" class="w-full h-[40px] p-1 text-base font-bold text-blue-600 rounded-md border border-blue-300 ">
                </div>
                <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                    <label class="text-md text-lime-700 font-poppins">Email</label>
                    <input type="text" class="w-full h-[40px] p-1 text-base font-bold text-blue-600 rounded-md border border-blue-300 ">
                </div>
            </div>
            <div class=" d-flex ">
                <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                    <label class="text-md text-lime-700 font-poppins">Montant</label>
                    <input id="montantForm" type="text" class="w-full p-1 text-base font-bold text-blue-600 h-[40px] rounded-md border border-blue-300 ">
                </div>
                <div class="w-[50%] border-b  border-r-2 p-5 d-flex-col gap-5 p-4 border-gray-300 h-[150px]">
                    <label class="text-md text-lime-700 font-poppins">Mensualité</label>
                    <input id="mensualiteForm" type="text" class="w-full p-1 text-base font-bold text-blue-600 h-[40px] rounded-md border border-blue-300 ">
                </div>
            </div>

        </form>
     <div class="w-full d-flex-col items-center justify-center h-[70px] border-t border-slate-300">
       <button  onclick="addInfo()" class="w-[132px] text-white  rounded-xl h-[47px] bg-blue-600 ">Confirmé</button>
     </div>
    </div>
</section>

<section id="slideInfo" class="w-[300px] h-[98vh] position-absolute top-[13%] left-[98%] bg-white">
  <div id="detailsArea" class="w-full d-flex-col h-auto">
   <div></div>

  </div>

<span id="buttonSlide" onclick="displaySlide()" class="w-[50px] bg-blue position-absolute rotate-[181deg] top-[40%] left-[-9%] text-center h-[50px] rounded-full"><i class="fa-solid fa-arrow-right text-white mt-3 text-lg"></i></span>
</section>



<script src="../js/main.js">
</script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
