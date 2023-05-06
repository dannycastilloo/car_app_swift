//
//  CarViewModel.swift
//  Semana03_B
//
//  Created by MAC37 on 22/04/23.
//

import Foundation

class CarViewModel {
    
    public static var cars: [Car] = [Car]()
    
    static func getCars() -> [Car] {
        return cars
    }
    
    static func storeCar(car: Car) {
        cars.append(car)
    }
    
}
