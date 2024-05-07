/**
 * 
 */

 // Apartado de las operativas de los botones que añaden el monto a la cesta - PAGINA DE PRODUCTOS


// Obtener referencia al elemento de total
/*const totalElements = document.getElementById('totalCesta');
const totalElementCestas = document.getElementById('total-cesta');

let total = 0;


// Función para sumar 99 al total

function ArtisanCraftersSuma() {
  total += 89;
  totalElements.textContent = total;
}


function FashionFusionHQSuma() {
  total += 89;
  totalElements.textContent = total;
}

function MindfulMeditatorSuma() {
  total += 120;
  totalElements.textContent = total;
}


function CulinaryCraftsmenSuma() {
  total += 88;
  totalElements.textContent = total;
}




// Función para restar 99 al total, si el total es mayor o igual a 99
function restar() {
  if (total >= 99) {
    total -= 99;
    totalElements.textContent = total;
  }
}

// Agregar listeners a los botones

document.getElementById('ArtisanCraftersSuma').addEventListener('click', ArtisanCraftersSuma);
document.getElementById('FashionFusionHQSuma').addEventListener('click', FashionFusionHQSuma);
document.getElementById('MindfulMeditatorSuma').addEventListener('click', MindfulMeditatorSuma);
document.getElementById('CulinaryCraftsmenSuma').addEventListener('click', CulinaryCraftsmenSuma);



document.getElementById('restarBtn').addEventListener('click', restar);*/
  // Inicializamos el total en 0
  let total = 0;
  let impuestosDinero = 0; 
  let totalCompleto = 0;
  
  let vivaElBetis = 0;
  
  const totalDisplay = document.getElementById("total");
  const impuestos = document.getElementById("totalImpuestos");
  // Función para sumar la cantidad al total
  function sumar(cantidad) {
    total += cantidad;
    totalDisplay.textContent = total +"€";
    impuestosDinero = total*0.21 ;
    
    vivaElBetis++;
    
    totalCompleto = total + impuestosDinero;
    document.getElementById("totalImpuestos").innerHTML = impuestosDinero +"€";
    document.getElementById("totalCompleto").innerHTML = totalCompleto  +"€";
    document.getElementById("vivaElBetis").innerHTML = vivaElBetis ;


  }



  // Función para restar la cantidad al total
  function restar(cantidad) {
	  
    if((total -= cantidad) < 0){
		
		total = 0;
	impuestosDinero = total*0.21 ;
    
    totalCompleto = total + impuestosDinero;
    document.getElementById("totalImpuestos").innerHTML = impuestosDinero +"€";
    document.getElementById("totalCompleto").innerHTML = totalCompleto  +"€";
            document.getElementById("vivaElBetis").innerHTML = vivaElBetis ;


    vivaElBetis--;

	}
	
	else{
		
		 if((total -= cantidad) < 0){
		
		total = 0;
		    vivaElBetis--;

		
	impuestosDinero = total*0.21 ;
    
    totalCompleto = total + impuestosDinero;
    document.getElementById("totalImpuestos").innerHTML = impuestosDinero +"€";
    document.getElementById("totalCompleto").innerHTML = totalCompleto  +"€";
    document.getElementById("vivaElBetis").innerHTML = vivaElBetis ;



	}
	}
    
   

    totalDisplay.textContent = total +"€";
  }


  // Event listeners para los botones de sumar
  document.getElementById("btnAdd89").addEventListener("click", function() {
    sumar(89);
  });

  document.getElementById("btnAdd120").addEventListener("click", function() {
    sumar(120);
  });

  document.getElementById("btnAdd88").addEventListener("click", function() {
    sumar(88);
  });

  document.getElementById("btnAdd75").addEventListener("click", function() {
    sumar(75);
  });

  // Event listeners para los botones de resta
  document.getElementById("btnSubtract89").addEventListener("click", function() {
    restar(89);
  });

  document.getElementById("btnSubtract120").addEventListener("click", function() {
    restar(120);
  });

  document.getElementById("btnSubtract88").addEventListener("click", function() {
    restar(88);
  });

  document.getElementById("btnSubtract75").addEventListener("click", function() {
    restar(75);
  });