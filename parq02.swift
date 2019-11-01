//prueba con tuplas
//definicion variables de espacios de parqueo
var pCarros = 0
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
      print("bienvenido \(i.nombre)")
      print("hora de entrada: \(i.hEnt)")
      opcMenu = "3"
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
}

func entrarInvitado(){
  let invNombre = "invitado"
  print("ingrese el tipo de su vehiculo (carro, moto, bicicleta):")
  let invTipo = readLine()
  let invPlaca = 000
  let invID = 000

  user = (nombre: invNombre,
        tipo: invTipo!,
        placa: invPlaca,
        id: invID,
        hEnt: randomEntrada(),
        hSal: randomSalida(),
        invitado: true
        )

  arl += [user]

}


func salida(){
  print("desea retirar un vehiculo del parquiadero? (si/no)")
}


var opcMenu:String?
var opcVehiculo:String? = nil

  while(opcMenu != "3"){
    print("esrciba 3 para salir")
    
    print("desea ingresar al parquiadero? (si/no)")
    opcMenu = readLine()
    if(opcMenu == "si"){
      
     /* while(opcVehiculo == nil){
        print("que vehiculo va a ingresar?(carro, moto, bicicleta)")
        opcVehiculo = readLine()

        if(opcVehiculo == "carro"){
          pCarros += 1
        }else if(opcVehiculo == "moto"){
          pMotos += 1
        }else if(opcVehiculo == "bicicleta"){
          pBicicletas += 1
        }else{
          print("opcion incorrecta")
          opcVehiculo = nil
        }
      }
      */

      print("es un usuario registrado? (si/no)")
      opcMenu = readLine()

      if (opcMenu == "si"){
        //buscar usuario
        busquedaUsuario()
        opcMenu = "no"
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
        salida()

      }else if (opcMenu == "3"){
        print("salir")

      }else{ print("opcion incorrecta")}

    }else if(opcMenu == "3"){
      print("salir")

    }else if(opcMenu == "no"){
      salida()

    }else{ print("opcion incorrecta")}
    

  }


print("____")
