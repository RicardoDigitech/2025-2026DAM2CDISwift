//
//  ViewController.swift
//  2025-2026 DAM 2C DI Swift
//
//  Created by Ricardo on 22/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Tipos de variables
        var numero: Int = 0
        var booleano: Bool = false
        var texto: String = "Hola"
        var teXto: String = "Adios"

        // Opcionales
        var nula: String? = nil

        // Crear en la misma línea
        var num: Int = 1
        var txt: String = "A"

        // Inferencia
        var num1 = "123"

        //Typealias
        var texto1: String = "A"
        typealias textito = String
        var texto2: textito = "A"

        // Unwrap
        var o: String? = nil
        var opcional: String = o!

        // Casteo
        var entero: Int = 5
        var doble: Double
        doble = Double(entero)

        // Upcasting
        var etiqueta: UILabel = UILabel()
        var vista: UIView = etiqueta as UIView

        // Downcasting
        var vistaEtiqueta: UIView = UILabel()
        var etiquietaVista: UILabel = vistaEtiqueta as! UILabel

        // Tuplas
        let lenguajes = ("Swift", "Java")
        print("Ahora estamos aprendiendo \(lenguajes.0)")
        let (lenguaje1, lenguaje2) = lenguajes
        var alumno = (nombre: "Alejandro", apellido: "Vázquez", edad: 98)

        // Operadores
        var suma: Int = 1 + 2
        let resta: Int = 1 - 2
        let multiplicacion: Int = 1 * 2
        let division: Int = 1 / 2
        let modulo: Int = 1 % 2
        suma += 1
        suma -= 1

        let igual: Bool = suma == resta
        let mayor: Bool = suma > resta
        let menor: Bool = suma < resta
        let diferente: Bool = suma != resta

        let and: Bool = igual && igual
        let or: Bool = igual || igual
        let not: Bool = !and

        // COMENTARIO DE UNA LÍNEA

        /*
         COMENTARIO DE VARIAS LÍNEAS
         */

        // Clases
        let miReloj = RelojModel(
            marca: "patata",
            movimiento: "tomate",
            precio: 10,
            digital: true,
            duenyo: .Mario
        )
        miReloj.mostrarValores()
        let marca = miReloj.marca
        miReloj.precio = 20
        print(RelojModel.hola())

        // Herencias
        let casio: RelojPulseraModel = RelojPulseraModel(
            marca: "Casio",
            movimiento: "Feliz",
            precio: 999,
            digital: true,
            duenyo: .Alejandro,
            tipoCorrea: "Plástico",
            tamanyoCaja: 50
        )
        casio.mostrarValores()

        // Sobreescritura de métodos
        casio.mostrarValores()

        // Estructuras
        let personaMario = PersonaStruct(
            nombre: "Mario",
            apellidos: "Villanueva",
            edad: 2
        )
        printContent(personaMario.nombre)

        // Enumeraciones
        enum FilaTres {
            case pepito, mengano, luigi, patata
        }
        print(casio.duenyo)
        print(casio.duenyo.hashValue)
        if casio.duenyo.hashValue == 0 {
            print("Alejandro es el dueño de todo")
        } else {
            print("Nos conformamos con Mario")
        }
        switch casio.duenyo {
        case .Alejandro:
            print("patata")
        case .Mario:
            print("tomate")
        }
        print(miReloj.marcaPrecio)

        // Colecciones
        var nombreArray: [Int] = [1, 2, 3, 4, 5]
        var arrayString = ["Mario", "Alejandro", "Carla"]
        let arrayVacio = [Bool]()
        nombreArray.append(6)
        nombreArray += [7]
        nombreArray += [8, 9, 10]
        arrayString.insert("Brian", at: 1)
        arrayString[0] = "Giga Mario"
        arrayString.remove(at: 3)
        arrayString.removeLast()
        let nombreBrian = arrayString[1]
        let nuevoArray = arrayString
        let arraySumado = arrayString + nuevoArray
        if nuevoArray.isEmpty {
            print("VACIO")
        }
        print(nuevoArray.count)
        for persona in arraySumado {
            print(persona)
        }

        // Diccionarios
        var diccionarioNotas: [String: Int] = [
            "Mario": 10, "Alejandro": 10,
            "Fabrizio": 0,
        ]
        print(diccionarioNotas["Mario"]!)
        diccionarioNotas.updateValue(5, forKey: "Fabrizio")
        diccionarioNotas.removeValue(forKey: "Fabrizio")
        print(diccionarioNotas.count)
        for (clave, valor) in diccionarioNotas {
            print("\(clave) tiene \(valor)")
        }

        // Sets
        var set = Set(["Alejandro", "Mario", "Brian"])
        set.insert("Óscar")
        set.union(["Carla", "Emma"])
        set.remove("Mario")
        set.subtract(["Brian", "Óscar"])
        print(set.count)
        if set.contains("Emma") {
            print("Emma sí que está")
        }

        // Condicionales
        var edad = 5
        if edad >= 18 {
            print("Toma alcohol")
        } else {
            print("Toma agüita")
        }
        let resultado = edad >= 18 ? "alcohol" : "agüita"
        switch edad {
        case 5:
            print("agüita")
            fallthrough
        case 10:
            print("zumito")
        case 15:
            print("champín")
        case 20:
            print("deudas")
        case 25...99:
            print("dolores de espalda")
        default:
            print("fuera de aqui")
        }

        // Bucles
        for valor in 1...10 {
            print(valor)
        }
        while edad == 5 {
            print("solo vas a tener aguita")
        }
        repeat {
            print("solo vas a tener deudas")
        } while edad >= 20

        // Control de errores
        enum misErrores: Error {
            case error1
            case error2
        }

        do {
            try edad = 20
        } catch misErrores.error1 {
            print("Error 1")
        }
    }

    func suma() throws -> Int {
        return 1 + 2
    }
}
