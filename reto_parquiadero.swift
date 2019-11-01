
/*
struct Usuario{

  var nombreU:String
  var marcaU:String
  var placaU:String
  var idU:String
  var hEntradaU:Double
  var hSalidaU:Double

}

//prueba con structuras

var userStruc = Usuario(nombreU:"jhon",marcaU:"audi",placaU:"asd459",idU:"123",hEntradaU:5.10,hSalidaU:6.0)

var arl2:[Usuario] = []

arl2 += [userStruc]

*/



//prueba con tuplas

var pCarros = 0
var pMotos = 0
var pBicicletas = 0

func randomEntrada() -> Int{
  let number = Int.random(in: 4..<12)
  return number
}

func randomSalida() -> Int{
  let number = Int.random(in: 12...22)
  return number
}

var user:(nombre:String, marca:String, placa: String, id:String, hEnt:Int, hSal:Int) 

user = (nombre: "jhon",
        marca: "audi",
        placa: "asd459",
        id: "123",
        hEnt: randomEntrada(),
        hSal: randomSalida()
        )

var arl = [user]

func busquedaUsuario() {
  print("ingrese su id:")
  let tempID = readLine()
  var usuarioNo = true
  
  for i in arl{
    if(i.id == tempID!){
      print("bienvenido \(i.nombre)")
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
  print("ingrese la marca de su vehiculo:")
  let agrMarca = readLine()
  print("ingrese la placa de su vehiculo:")
  let agrPlaca = readLine()
  print("ingrese su id:")
  let agrID = readLine()

  user = (nombre: agrNombre!,
        marca: agrMarca!,
        placa: agrPlaca!,
        id: agrID!,
        hEnt: randomEntrada(),
        hSal: randomSalida()
        )

  arl += [user]
}

func entrarInvitado(){}


var opcMenu:String?
var opcVehiculo:String? = nil

  while(opcMenu != "3"){
    print("esrciba 3 para salir")

    print("desea ingresar al parquiadero? (si/no)")
    opcMenu = readLine()
    if(opcMenu == "si"){
      
      while(opcVehiculo == nil){
        print("que vehiculo va a ingresar?(carro, moto, bicicleta)")
        opcVehiculo = readLine()

        if(opcVehiculo == "carro"){

        }else if(opcVehiculo == "moto"){

        }else if(opcVehiculo == "bicicleta"){

        }else{
          print("opcion incorrecta")
          opcVehiculo = nil
        }
      }

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

    }else if(opcMenu == "3"){
      print("salir")

    }else if(opcMenu == "no"){
      print("desea retirar un vehiculo del parquiadero? (si/no)")

    }else{ print("opcion incorrecta")}
    

  }


print("____")



