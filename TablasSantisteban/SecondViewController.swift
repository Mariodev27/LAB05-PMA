//
//  SecondViewController.swift
//  TablasSantisteban
//
//  Created by Alumno on 6/10/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    let pets: [Pet] = [
        Pet(image: "mascota-1", title: "Mi Loro Carllitos", description: "Es muy alegre pero cuidado muerde!"),
        Pet(image: "mascota-2", title: "Perro meme", description: "Originalmente estaba en venta"),
        Pet(image: "mascota-3", title: "Mbappe", description: "Aparece como la estrella")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PetsTableViewCell
        
        let pet = pets[indexPath.row]
        cell.petImage.image = UIImage(named: pet.image)
        cell.petTitle.text = pet.title
        cell.petDescription.text = pet.description
        
        return cell
    }

}
