
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

var user:(nombre:String, marca:String, placa: String, id:String) 

user = (nombre: "jhon",
        marca: "audi",
        placa: "asd459",
        id: "123")

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
        id: agrID!)

  arl += [user]
}

func entrarInvitado(){}


var opcMenu:String?
  //var opcMenu2:String?

  while(opcMenu != "3"){
    print("esrciba 3 para salir")

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






print("____")



