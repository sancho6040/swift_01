
//definicion variables de espacios de parqueo
var pCarros = 1
var pMotos = 0
var pBicicletas = 0

//funciones que generan la hora de entrada y de salida
func randomEntrada() -> Int{
  let number = Int.random(in: 4..<12)
  return number
}

func randomSalida() -> Int{
  let number = Int.random(in: 12...22)
  return number
}

//creacion de la tupla, y del arreglo
//se le añade un usuario pre-definido al arreglo
var user:(nombre:String, tipo:String, placa: String, id:String, hEnt:Int, hSal:Int, invitado:Bool) 

user = (nombre: "jhon",
        tipo: "carro",
        placa: "asd459",
        id: "123",
        hEnt: randomEntrada(),
        hSal: randomSalida(),
        invitado: false
        )

var arl = [user]

//funciones de busqueda, agregar e invitado
func busquedaUsuario() {
  print("ingrese su id:")
  let tempID = readLine()
  var usuarioNo = true
  
  for i in arl{
    if(i.id == tempID!){

      if(i.tipo == "carro"){
        pCarros += 1
      }else if(i.tipo == "carro"){
        pMotos += 1
      }else if(i.tipo == "carro"){
        pBicicletas += 1
      }
      print("bienvenido \(i.nombre)")
      print("hora de entrada: \(i.hEnt) am")
      usuarioNo = false
    }
  }

  if(usuarioNo){
    print("usuario no encontrado")
  }
}

func agregarUsuario(){
  print("ingrese su nombre:")
  let agrNombre = readLine() 
  print("ingrese el tipo de su vehiculo (carro, moto, bicicleta):")
  let agrTipo = readLine()
  print("ingrese la placa de su vehiculo:")
  let agrPlaca = readLine()
  print("ingrese su id:")
  let agrID = readLine()

  user = (nombre: agrNombre!,
        tipo: agrTipo!,
        placa: agrPlaca!,
        id: agrID!,
        hEnt: randomEntrada(),
        hSal: randomSalida(),
        invitado: false
        )

  arl += [user]

  if(user.tipo == "carro"){
        pCarros += 1
  }else if(user.tipo == "carro"){
        pMotos += 1
  }else if(user.tipo == "carro"){
        pBicicletas += 1
  }
  
  print("usuario agregado")
  print("hora de entrada \(user.hEnt) am")
}

func entrarInvitado(){
  let invNombre = "invitado"
  print("ingrese el tipo de su vehiculo (carro, moto, bicicleta):")
  let invTipo = readLine()
  let invPlaca = "000"
  let intID = Int.random(in: 100..<200)
  let strID = String(intID)

  user = (nombre: invNombre,
        tipo: invTipo!,
        placa: invPlaca,
        id: strID,
        hEnt: randomEntrada(),
        hSal: randomSalida(),
        invitado: true
        )

  arl += [user]

   if(user.tipo == "carro"){
        pCarros += 1
    }else if(user.tipo == "carro"){
        pMotos += 1
    }else if(user.tipo == "carro"){
        pBicicletas += 1
    }
  
  print("ID provicional \(user.id)")
  print("hora de entrada \(user.hEnt) am")

}


func salida(){
  print("ingrese su id:")
  let tempID = readLine()
  var usuarioNo = true
  
  for i in arl{
    if(i.id == tempID!){
      let cobro = (i.hSal - i.hEnt) * 500
      print("hora de entrada \(i.hEnt) am \nhora de salida: \(i.hSal) pm")
      print("su total a pagar es de: \(cobro)$ pesos")
      
      usuarioNo = false
    }
  }

  if(usuarioNo){
    print("usuario no encontrado")
  }
}


var opcMenu:String?
var opcVehiculo:String? = nil

  while(opcMenu != "3"){
    print()
    print("---------------------------------------------------------")
    print("esrciba 3 para cerrar el programa")
    
    print("desea ingresar al parquiadero? (si/no)")
    opcMenu = readLine()
    if(opcMenu == "si"){

      print("que vehiculo va a ingresar? (carro, moto o bicicleta)")
      let veh = readLine()
      var cupo = false

      if(veh == "carro"){
        if(pCarros > 10){
          print("parquiadero de \(veh!)s lleno")
        }else{
          cupo = true
        }
      }else if(veh == "moto"){
        if(pMotos > 5){
          print("parquiadero de \(veh!)s lleno")
        }else{
          cupo = true
        }
      }else if(veh == "bicicleta"){
        if(pBicicletas > 3){
          print("parquiadero de \(veh!)s lleno")
        }else{
          cupo = true
        }
      }else{ print("opcion incorrecta")}
      
      if(cupo == true){

        print("es un usuario registrado? (si/no)")
        opcMenu = readLine()

        if (opcMenu == "si"){
          //buscar usuario
          busquedaUsuario()
          
        }else if (opcMenu == "no"){
          print("desea registrarse como usuraio? (si/no)")
          opcMenu = readLine()

          if (opcMenu == "si"){
            //añadir usuario
            agregarUsuario()

          }else if(opcMenu == "no"){
            //entrar como invitado
            entrarInvitado()

          }
        }else if (opcMenu == "3"){
          print("salir")

        }else{ print("opcion incorrecta")}

      }

    }else if(opcMenu == "3"){
      print("salir")

    }else if(opcMenu == "no"){
      print("desea retirar un vehiculo del parquiadero? (si/no)")
      opcMenu = readLine()
      if (opcMenu == "si"){
        salida()
      }

    }else{ print("opcion incorrecta")}
    

  }


print("____")
