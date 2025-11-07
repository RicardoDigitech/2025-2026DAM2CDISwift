//
//  RelojPulseraModel.swift
//  2025-2026 DAM 2C DI Swift
//
//  Created by Ricardo on 22/10/25.
//

import Foundation

class RelojPulseraModel: RelojModel{
    var tipoCorrea: String
    var tamanyoCaja: Int
    
    init(marca: String, movimiento: String, precio: Double, digital: Bool, duenyo: Duenyo, tipoCorrea: String, tamanyoCaja: Int) {
        self.tipoCorrea = tipoCorrea
        self.tamanyoCaja = tamanyoCaja
        super.init(marca: marca, movimiento: movimiento, precio: precio, digital: digital, duenyo: duenyo)
    }
    
    override func mostrarValores() {
        print("Mi reloj de pulsera es de marca \(marca)")
    }
}
