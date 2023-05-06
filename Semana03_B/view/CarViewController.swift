//
//  CarViewController.swift
//  Semana03_B
//
//  Created by MAC37 on 15/04/23.
//

import UIKit

class CarViewController: UIViewController {
    
    @IBOutlet weak var txtBrand: UITextField!
    
    @IBOutlet weak var txtModel: UITextField!
    
    @IBOutlet weak var txtPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapSaveCar(_ sender: UIButton) {
        let brand = txtBrand.text!
        let model = txtModel.text!
        let price = txtPrice.text!
        
        if brand.isEmpty || model.isEmpty || price.isEmpty {
            // LANZAMOS UNA ALERTA PARA QUE EL USUARIO COMPLETE LOS CAMPOS
            Alerts.makeAlert(title: "Error", message: "Complete los campos", controller: self)
            return
        }
        
        CarViewModel.storeCar(car: Car(
            marca: brand,
            model: model,
            price: Float(price) ?? 0.0)
        )
        
        print(CarViewModel.getCars())
        
        txtModel.text = ""
        txtPrice.text = ""
        txtBrand.text = ""
        
        Alerts.makeAlert(title: "Success", message: "Guardado correctamente", controller: self)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
