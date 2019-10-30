let serie = 0...100

var arl = [ "es par", " es impar", " viva Swift!!!"]

for num in serie{

  if num != 0 {

    let a = num % 5
    if a==0{
      print("\(num) Bingo!")
    }

    let b = num % 2
    switch b {
      case 0:
        print(String(num) + arl[0])
      case 1:
        print(String(num) + arl[1])
      default:
        print("what!!")
    }

  }

  switch num {
    case 30...40:
      print(String(num) + arl[2])
    default:  break
  }

}
