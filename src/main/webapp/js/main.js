let form = document.getElementById("form-section");
let isActive = true;
let defaultRangeInput;
let defaultRangeMounth ;
let TotalInput;

function display() {
    form.style.display = "block";
}

function Nodisplay() {
    form.style.display = "none";
}


function calculateMonthlyPayment(M, n) {
    let t = 0.03 / 12;
    let denominator = 1 - Math.pow((1 + t),-n);

    return (M * t) / denominator;
}

function switchValue(value) {
    defaultRangeInput =  document.getElementById("default-range").value;
     defaultRangeMounth = document.getElementById("defaultMounth").value;
     TotalInput = document.getElementById("totalInput");

    let displayValueMounth = document.getElementById("displayMounth");
    let displayValue = document.getElementById("display-value");
    displayValue.setAttribute("value", defaultRangeInput + " DH");
    displayValueMounth.setAttribute("value", defaultRangeMounth);
    let Result = calculateMonthlyPayment(defaultRangeInput,defaultRangeMounth)
    TotalInput.value = Result.toFixed(2) ;
}

function displaySlide() {
    let slide = document.getElementById("slideInfo");
    let buttonClick = document.getElementById("buttonSlide");
    if (isActive) {
        slide.style.left = "78%";
        slide.style.transition = "left 1s ease-out";
        slide.style.boxShadow = "10px 19px 10px 10px black";
        buttonClick.style.transform = "rotate(0deg)";
        buttonClick.style.transition = "transform 1s ease-out";
        isActive = false;
    } else {
        slide.style.left = "98%";
        slide.style.transition = "left 1s ease-out";
        slide.style.boxShadow = "none";
        buttonClick.style.transform = "rotate(181deg)";
        buttonClick.style.transition = "transform  1s ease-out";
        isActive = true;
    }
}

function addInfo() {
    let detailsArea = document.getElementById("detailsArea");
    let step1 = document.getElementById("step1")
    let step2 = document.getElementById("step2")
    let step3 = document.getElementById("step3")
    let ArrayElement = [step1.className,step2.className,step3.className];

    if (ArrayElement[0].includes("d-flex-col")){

        step1.classList.replace("d-flex-col","hidden");
        step2.classList.replace("hidden", "d-flex-col");

        detailsArea.innerHTML = `
        <div class="w-full h-auto">
            <div class="w-full h-[40px] p-2 bg-gray-300 font-semibold ">
                Détails de mon crédit
            </div>
            <div class="w-[91%] pl-2 pt-1 border-b border-slate-300 d-flex justify-between h-[34px]">
                <p class="text-md font-normal text-slate-600">Montant :</p>
                <span class="text-blue-600 font-semibold text-md">${defaultRangeInput} DH</span>
            </div>
             <div class="w-[91%] pl-2 pt-1 border-b border-slate-300 d-flex justify-between h-[34px]">
                <p class="text-md font-normal text-slate-600">Durée :</p>
                <span class="text-blue-600 font-semibold text-md">${defaultRangeMounth} mois</span>
            </div>
             <div class="w-[91%] pl-2 pt-1 border-b border-slate-300 d-flex justify-between h-[34px]">
                <p class="text-md font-normal text-slate-600">Mensualité : </p>
                <span class="text-blue-600 font-semibold text-md">${TotalInput.value} DH</span>
            </div>
        </div>`;
        displaySlide();
    }else if (ArrayElement[1].includes("d-flex-col")){
        step2.classList.replace("d-flex-col","hidden");
        step3.classList.replace("hidden", "d-flex-col");
        detailsArea.insertAdjacentHTML("beforebegin" ,`
        <div class="w-full h-auto">
            <div class="w-full h-[40px] p-2 bg-gray-300 font-semibold ">
                Détails Personelle
            </div>
            <div class="w-[91%] pl-2 pt-1 border-b border-slate-300 d-flex justify-between h-[34px]">
                <p class="text-md font-normal text-slate-600">Nom :</p>
                <span class="text-blue-600 font-semibold text-md"> salahDH</span>
            </div>
             <div class="w-[91%] pl-2 pt-1 border-b border-slate-300 d-flex justify-between h-[34px]">
                <p class="text-md font-normal text-slate-600">Eamil :</p>
                <span class="text-blue-600 font-semibold text-md">salaheddine@gamil.com</span>
            </div>
        </div>`);

        document.getElementById("montantForm").value =  defaultRangeInput +" DH" ;
        document.getElementById("mensualiteForm").value =TotalInput.value + " DH";

    }else if (ArrayElement[2].includes("d-flex-col")){
        Swal.fire({
            position: 'top-end',
            title: 'Do You Want To Confirme Your Credit Request',
            color:"#ffffff",
            background:"red",
            showConfirmButton: true,
            confirmButtonColor:"#00ea3e",
            confirmButtonText:"Of-course",
            showCancelButton:true,
            cancelButtonColor:"black",
            toast: true,
        }).then((result) => {
                if(result.isConfirmed){


                }
            })
    }


}
