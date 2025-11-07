//
//  MiClaseModel.swift
//  2025-2026 DAM 2C DI Swift
//
//  Created by Ricardo on 22/10/25.
//

import Foundation

class RelojModel{
    enum Duenyo {
        case Alejandro, Mario
    }
    
    var marca: String
    var movimiento: String
    var precio: Double
    var digital: Bool
    var duenyo: Duenyo
    
    init(marca: String, movimiento: String, precio: Double, digital: Bool, duenyo: Duenyo){
        self.marca = marca
        self.movimiento = movimiento
        self.precio = precio
        self.digital = digital
        self.duenyo = duenyo
    }
    
    var marcaPrecio: String{
        get{
            return (marca + " " + String(precio))
        }
        set{
            self.marca = newValue
            self.precio = Double(newValue)!
        }
    }
    
    deinit{
        print("Adios por el momento")
    }
    
    func mostrarValores(){
        print("Mi reloj es de marca \(marca).")
    }
    
    class func hola() -> String{
        return "Hola"
    }
}
