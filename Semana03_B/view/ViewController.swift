//
//  ViewController.swift
//  Semana03_B
//
//  Created by MAC37 on 15/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // una funcion del ciclo de vida
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CarViewModel.cars.count //al inicio vale 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let car = CarViewModel.cars[indexPath.row]
        
        var contentConfiguration = UIListContentConfiguration.cell()
        
        
        contentConfiguration.text = car.marca
        //detalle
        contentConfiguration.secondaryText = car.model
        //imagen
        contentConfiguration.image = UIImage(systemName:"car.rear")
        
        cell.contentConfiguration = contentConfiguration
        
        return cell
    }
}

