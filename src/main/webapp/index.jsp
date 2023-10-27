
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <title>Easy Bank</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/CostumeCss.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Marcellus+SC&family=Montserrat:ital,wght@0,100;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,600;1,700;1,800;1,900&family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
<a href="dashboard" class="setting-icon" >
    <svg width="50px" height="50px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke=""><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M20.1 9.2214C18.29 9.2214 17.55 7.9414 18.45 6.3714C18.97 5.4614 18.66 4.3014 17.75 3.7814L16.02 2.7914C15.23 2.3214 14.21 2.6014 13.74 3.3914L13.63 3.5814C12.73 5.1514 11.25 5.1514 10.34 3.5814L10.23 3.3914C9.78 2.6014 8.76 2.3214 7.97 2.7914L6.24 3.7814C5.33 4.3014 5.02 5.4714 5.54 6.3814C6.45 7.9414 5.71 9.2214 3.9 9.2214C2.86 9.2214 2 10.0714 2 11.1214V12.8814C2 13.9214 2.85 14.7814 3.9 14.7814C5.71 14.7814 6.45 16.0614 5.54 17.6314C5.02 18.5414 5.33 19.7014 6.24 20.2214L7.97 21.2114C8.76 21.6814 9.78 21.4014 10.25 20.6114L10.36 20.4214C11.26 18.8514 12.74 18.8514 13.65 20.4214L13.76 20.6114C14.23 21.4014 15.25 21.6814 16.04 21.2114L17.77 20.2214C18.68 19.7014 18.99 18.5314 18.47 17.6314C17.56 16.0614 18.3 14.7814 20.11 14.7814C21.15 14.7814 22.01 13.9314 22.01 12.8814V11.1214C22 10.0814 21.15 9.2214 20.1 9.2214ZM12 15.2514C10.21 15.2514 8.75 13.7914 8.75 12.0014C8.75 10.2114 10.21 8.7514 12 8.7514C13.79 8.7514 15.25 10.2114 15.25 12.0014C15.25 13.7914 13.79 15.2514 12 15.2514Z" fill="#57b6ff"></path> </g></svg>
</a>

<jsp:include page="component/navBar.jsp"/>
<section class="header bg-pricipal ">
<div class="imageText">
    <div class="titleContainer d-flex d-flex-col">
         <div>
        <p  class="sub-title">Simple. Transparent. Secure</p>
        <h4 class="title">Banking Solutions</h4>
        <p class="preParagraph">
        Products and services designed to help you reach
        your financial goals.
        </p>
        </div>
        <div class="d-flex Btns">
            <button class="BtnOpenAcc">
               Simulation
            </button>
            <button class="BtnGetTouch">
              Get in touch
            </button>
        </div>

    </div>
    <img class="headerImage" src="https://pixner.net/bankio/assets/images/banner-bg.png">

</div>

</section>
    <section class="partners d-flex align-items-center justify-around">
     <h4 class="textPartner">Partners</h4>
      <div class="d-flex align-items-center" style="gap: 20px">
         <img class= "partnerImgS" src="https://pixner.net/bankio/assets/images/partner-5.png">
         <img class= "partnerImgM" src="https://pixner.net/bankio/assets/images/partner-2.png">
         <img class= "partnerImgP" src="https://pixner.net/bankio/assets/images/partner-4.png">
         <img class= "partnerImgV" src="https://pixner.net/bankio/assets/images/partner-1.png">
         <img class= "partnerImgA" src="https://pixner.net/bankio/assets/images/partner-3.png">
      </div>
    </section>
     <section id="aboutus" class="aboutus">
        <div class="d-flex-col padding-top-20 w-[50%] ">
           <span class="notify"><img src="https://pixner.net/bankio/assets/images/icon/notification.png"></span>
           <p class="sub-title">Smart Banking</p>
            <h2 class="title">Real Time Notifications</h2>
            <p style="margin-bottom: 26px">Your customer stay informed in real time with everything that’s happening on his account:
                payments, transfer, advice. Get visibility on your customers' flows to anticipate their
                needs.</p>
            <span class="but-title d-flex align-items-center" >
                <svg viewBox="0 0 24 24" width="34px" height="34px" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.007 8.27C22.194 9.125 23 10.45 23 12c0 1.55-.806 2.876-1.993 3.73.24 1.442-.134 2.958-1.227 4.05-1.095 1.095-2.61 1.459-4.046 1.225C14.883 22.196 13.546 23 12 23c-1.55 0-2.878-.807-3.731-1.996-1.438.235-2.954-.128-4.05-1.224-1.095-1.095-1.459-2.611-1.217-4.05C1.816 14.877 1 13.551 1 12s.816-2.878 2.002-3.73c-.242-1.439.122-2.955 1.218-4.05 1.093-1.094 2.61-1.467 4.057-1.227C9.125 1.804 10.453 1 12 1c1.545 0 2.88.803 3.732 1.993 1.442-.24 2.956.135 4.048 1.227 1.093 1.092 1.468 2.608 1.227 4.05Zm-4.426-.084a1 1 0 0 1 .233 1.395l-5 7a1 1 0 0 1-1.521.126l-3-3a1 1 0 0 1 1.414-1.414l2.165 2.165 4.314-6.04a1 1 0 0 1 1.395-.232Z" fill="#05592B"></path></g></svg>
                Cards that work all across the world.
            </span>
            <span class="but-title d-flex align-items-center">
                <svg viewBox="0 0 24 24" width="34px" height="34px" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.007 8.27C22.194 9.125 23 10.45 23 12c0 1.55-.806 2.876-1.993 3.73.24 1.442-.134 2.958-1.227 4.05-1.095 1.095-2.61 1.459-4.046 1.225C14.883 22.196 13.546 23 12 23c-1.55 0-2.878-.807-3.731-1.996-1.438.235-2.954-.128-4.05-1.224-1.095-1.095-1.459-2.611-1.217-4.05C1.816 14.877 1 13.551 1 12s.816-2.878 2.002-3.73c-.242-1.439.122-2.955 1.218-4.05 1.093-1.094 2.61-1.467 4.057-1.227C9.125 1.804 10.453 1 12 1c1.545 0 2.88.803 3.732 1.993 1.442-.24 2.956.135 4.048 1.227 1.093 1.092 1.468 2.608 1.227 4.05Zm-4.426-.084a1 1 0 0 1 .233 1.395l-5 7a1 1 0 0 1-1.521.126l-3-3a1 1 0 0 1 1.414-1.414l2.165 2.165 4.314-6.04a1 1 0 0 1 1.395-.232Z" fill="#05592B"></path></g></svg>
                No ATM fees. No minimum balance. No overdrafts.
            </span>

        </div>
         <div class="img-area">
             <img class="about-img" src="https://pixner.net/bankio/assets/images/feature-item-1.png">
         </div>

     </section>


     <section class="aboutus">
         <div class="img-area ">
             <img class="about-img" src="https://pixner.net/bankio/assets/images/feature-item-2.png">
         </div>
    <div class="d-flex-col padding-top-10 w-[50%] ">
        <span class="notify"><img class="w-[40px] h-[40px]" src="https://pixner.net/bankio/assets/images/icon/sheled.png"></span>
        <p class="sub-title">Safe Investments</p>
        <h2 class="title">The Better Way to Save & Invest</h2>
        <p style="margin-bottom: 26px">Bankio helps over 2 million customers achieve their financial goals by helping them save and invest with ease. Put that extra cash to use without putting it at risk with Bankio.</p>
        <span class="but-title d-flex align-items-center" >
                <svg viewBox="0 0 24 24" width="34px" height="34px" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.007 8.27C22.194 9.125 23 10.45 23 12c0 1.55-.806 2.876-1.993 3.73.24 1.442-.134 2.958-1.227 4.05-1.095 1.095-2.61 1.459-4.046 1.225C14.883 22.196 13.546 23 12 23c-1.55 0-2.878-.807-3.731-1.996-1.438.235-2.954-.128-4.05-1.224-1.095-1.095-1.459-2.611-1.217-4.05C1.816 14.877 1 13.551 1 12s.816-2.878 2.002-3.73c-.242-1.439.122-2.955 1.218-4.05 1.093-1.094 2.61-1.467 4.057-1.227C9.125 1.804 10.453 1 12 1c1.545 0 2.88.803 3.732 1.993 1.442-.24 2.956.135 4.048 1.227 1.093 1.092 1.468 2.608 1.227 4.05Zm-4.426-.084a1 1 0 0 1 .233 1.395l-5 7a1 1 0 0 1-1.521.126l-3-3a1 1 0 0 1 1.414-1.414l2.165 2.165 4.314-6.04a1 1 0 0 1 1.395-.232Z" fill="#05592B"></path></g></svg>
               Profitable to invest and Handy to manage
            </span>
        <span class="but-title d-flex align-items-center">
                <svg viewBox="0 0 24 24" width="34px" height="34px" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.007 8.27C22.194 9.125 23 10.45 23 12c0 1.55-.806 2.876-1.993 3.73.24 1.442-.134 2.958-1.227 4.05-1.095 1.095-2.61 1.459-4.046 1.225C14.883 22.196 13.546 23 12 23c-1.55 0-2.878-.807-3.731-1.996-1.438.235-2.954-.128-4.05-1.224-1.095-1.095-1.459-2.611-1.217-4.05C1.816 14.877 1 13.551 1 12s.816-2.878 2.002-3.73c-.242-1.439.122-2.955 1.218-4.05 1.093-1.094 2.61-1.467 4.057-1.227C9.125 1.804 10.453 1 12 1c1.545 0 2.88.803 3.732 1.993 1.442-.24 2.956.135 4.048 1.227 1.093 1.092 1.468 2.608 1.227 4.05Zm-4.426-.084a1 1 0 0 1 .233 1.395l-5 7a1 1 0 0 1-1.521.126l-3-3a1 1 0 0 1 1.414-1.414l2.165 2.165 4.314-6.04a1 1 0 0 1 1.395-.232Z" fill="#05592B"></path></g></svg>
               Highest Returns on your investments
            </span>

    </div>
</section>

<section id="contact" class="w-full p-20 ">
    <div class="bg-[url('https://pixner.net/bankio/assets/images/get-in-touch-bg.png')]">
      <div class="w-full p-20 d-flex-col gap-5 align-items-center">
         <h1 class="text-black font-bold font-poppins text-6xl " >Get in touch with us.</h1>
        <p class="font-poppins font-light text-slate-500">Fill up the form and our team will get back to you within 24 hours</p>
      </div>
        <div class="d-flex w-full">
           <form class="bg-white mx-auto w-[926px] d-flex-col gap-5 h-[540px] rounded-xl drop-shadow-2xl p-10 ">
             <div class="d-flex gap-10 justify-between">
               <div class="d-flex-col w-[50%]">
                <label>Name *</label>
                 <input class="p-2 px-4 text-blue-700 w-full font-body h-12 bg-blue-50 border border-blue-200 rounded-md" type="text" value="" name="" placeholder="What's your name ?">
               </div>
                <div class="d-flex-col w-[50%] ">
                <label>Email*</label>
                <input class="p-2 px-4 text-blue-700 w-full font-body h-12 bg-blue-50 border border-blue-200 rounded-md" type="email" value="" name="" placeholder="What's your email ?">
                </div>
             </div>
              <div class="d-flex gap-10 justify-between">
                  <div class="d-flex-col w-[50%]">
                      <label>Name *</label>
                      <input class="p-2 px-4 text-blue-700 w-full font-body h-12 bg-blue-50 border border-blue-200 rounded-md" type="text" value="" name="" placeholder="What's your name ?">
                  </div>
                  <div class="d-flex-col w-[50%] ">
                      <label>Email*</label>
                      <input class="p-2 px-4 text-blue-700 w-full font-body h-12 bg-blue-50 border border-blue-200 rounded-md" type="email" value="" name="" placeholder="What's your email ?">
                  </div>

              </div>
              <div class="d-flex-col">
                  <label>Message*</label>
                  <textarea class="w-full padding-10 bg-blue-50 border border-blue-200 rounded-xl h-[200px] text-blue-700 " placeholder="Message">

                  </textarea>
              </div>
              <div class="w-full text-center ">
                  <button class="bg-blue rounded-xl padding-10 font-bold w-[250px] color-white ">Submit</button>
              </div>
             </form>
        </div>
    </div>
</section>
<section class="w-full h-auto mb-5 p-20 bg-blue-50">
<div class="w-full d-flex justify-between bg-blue-700 h-[220px] " >
    <div class="p-5 d-flex-col gap-7">
        <h1 class="text-white font-bold font-poppins text-4xl ">Ready to get started ?</h1>
        <p class="text-white font-normal ">It only takes a few minutes to register your FREE Bankio account.</p>
        <button class="p-4 bg-cyan-400 w-[40%] text-white rounded-full">Open an Account</button>
    </div>
     <img class="w-[400px] relative top-[-124px] h-[349px]" src="https://pixner.net/bankio/assets/images/get-start.png">
</div>
</section>


<div class="relative mt-16 bg-deep-purple-accent-400">
    <svg class="absolute top-0 w-full h-6 -mt-5 sm:-mt-10 sm:h-16 text-deep-purple-accent-400" preserveAspectRatio="none" viewBox="0 0 1440 54">
        <path fill="#1D4ED8" d="M0 22L120 16.7C240 11 480 1.00001 720 0.700012C960 1.00001 1200 11 1320 16.7L1440 22V54H1320C1200 54 960 54 720 54C480 54 240 54 120 54H0V22Z"></path>
    </svg>
    <div class="px-4 pt-12 mx-auto sm:max-w-xl md:max-w-full lg:max-w-screen-xl md:px-24 lg:px-8">
        <div class="grid gap-16 row-gap-10 mb-8 lg:grid-cols-6">
            <div class="md:max-w-md lg:col-span-2">
                <a href="/" aria-label="Go home" title="Company" class="inline-flex items-center">
                    <svg class="w-8 text-teal-accent-400" viewBox="0 0 24 24" stroke-linejoin="round" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" stroke="currentColor" fill="none">
                        <rect x="3" y="1" width="7" height="12"></rect>
                        <rect x="3" y="17" width="7" height="6"></rect>
                        <rect x="14" y="1" width="7" height="6"></rect>
                        <rect x="14" y="11" width="7" height="12"></rect>
                    </svg>
                    <span class="ml-2 text-xl font-bold tracking-wide text-gray-100 uppercase">Company</span>
                </a>
                <div class="mt-4 lg:max-w-sm">
                    <p class="text-sm text-deep-purple-50">
                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.
                    </p>
                    <p class="mt-4 text-sm text-deep-purple-50">
                        Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                    </p>
                </div>
            </div>
            <div class="grid grid-cols-2 gap-5 row-gap-8 lg:col-span-4 md:grid-cols-4">
                <div>
                    <p class="font-semibold tracking-wide text-teal-accent-400">
                        Category
                    </p>
                    <ul class="mt-2 space-y-2">
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">News</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">World</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Games</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">References</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <p class="font-semibold tracking-wide text-teal-accent-400">Cherry</p>
                    <ul class="mt-2 space-y-2">
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Web</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">eCommerce</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Business</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Entertainment</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Portfolio</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <p class="font-semibold tracking-wide text-teal-accent-400">Apples</p>
                    <ul class="mt-2 space-y-2">
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Media</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Brochure</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Nonprofit</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Educational</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Projects</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <p class="font-semibold tracking-wide text-teal-accent-400">
                        Business
                    </p>
                    <ul class="mt-2 space-y-2">
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Infopreneur</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Personal</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Wiki</a>
                        </li>
                        <li>
                            <a href="/" class="transition-colors duration-300 text-deep-purple-50 hover:text-teal-accent-400">Forum</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="flex flex-col justify-between pt-5 pb-10 border-t border-deep-purple-accent-200 sm:flex-row">
            <p class="text-sm text-gray-100">
                © Copyright 2020 Lorem Inc. All rights reserved.
            </p>
            <div class="flex items-center mt-4 space-x-4 sm:mt-0">
                <a href="/" class="transition-colors duration-300 text-deep-purple-100 hover:text-teal-accent-400">
                    <svg viewBox="0 0 24 24" fill="currentColor" class="h-5">
                        <path
                                d="M24,4.6c-0.9,0.4-1.8,0.7-2.8,0.8c1-0.6,1.8-1.6,2.2-2.7c-1,0.6-2,1-3.1,1.2c-0.9-1-2.2-1.6-3.6-1.6 c-2.7,0-4.9,2.2-4.9,4.9c0,0.4,0,0.8,0.1,1.1C7.7,8.1,4.1,6.1,1.7,3.1C1.2,3.9,1,4.7,1,5.6c0,1.7,0.9,3.2,2.2,4.1 C2.4,9.7,1.6,9.5,1,9.1c0,0,0,0,0,0.1c0,2.4,1.7,4.4,3.9,4.8c-0.4,0.1-0.8,0.2-1.3,0.2c-0.3,0-0.6,0-0.9-0.1c0.6,2,2.4,3.4,4.6,3.4 c-1.7,1.3-3.8,2.1-6.1,2.1c-0.4,0-0.8,0-1.2-0.1c2.2,1.4,4.8,2.2,7.5,2.2c9.1,0,14-7.5,14-14c0-0.2,0-0.4,0-0.6 C22.5,6.4,23.3,5.5,24,4.6z"
                        ></path>
                    </svg>
                </a>
                <a href="/" class="transition-colors duration-300 text-deep-purple-100 hover:text-teal-accent-400">
                    <svg viewBox="0 0 30 30" fill="currentColor" class="h-6">
                        <circle cx="15" cy="15" r="4"></circle>
                        <path
                                d="M19.999,3h-10C6.14,3,3,6.141,3,10.001v10C3,23.86,6.141,27,10.001,27h10C23.86,27,27,23.859,27,19.999v-10   C27,6.14,23.859,3,19.999,3z M15,21c-3.309,0-6-2.691-6-6s2.691-6,6-6s6,2.691,6,6S18.309,21,15,21z M22,9c-0.552,0-1-0.448-1-1   c0-0.552,0.448-1,1-1s1,0.448,1,1C23,8.552,22.552,9,22,9z"
                        ></path>
                    </svg>
                </a>
                <a href="/" class="transition-colors duration-300 text-deep-purple-100 hover:text-teal-accent-400">
                    <svg viewBox="0 0 24 24" fill="currentColor" class="h-5">
                        <path
                                d="M22,0H2C0.895,0,0,0.895,0,2v20c0,1.105,0.895,2,2,2h11v-9h-3v-4h3V8.413c0-3.1,1.893-4.788,4.659-4.788 c1.325,0,2.463,0.099,2.795,0.143v3.24l-1.918,0.001c-1.504,0-1.795,0.715-1.795,1.763V11h4.44l-1,4h-3.44v9H22c1.105,0,2-0.895,2-2 V2C24,0.895,23.105,0,22,0z"
                        ></path>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</div>

</body>
</html>