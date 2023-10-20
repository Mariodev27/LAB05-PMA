//
//  ViewController.swift
//  TablasSantisteban
//
//  Created by Alumno on 29/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Tabla: UITableView! // Conexión a la UITableView en la interfaz.
    var contenidoCeldas = ["Usando", "TableView", "en", "aplicativo", "ios"] // Array con el contenido de las celdas.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Asigna este controlador como el dataSource y delegate de la tabla.
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    
    // Define el número de filas en la tabla basado en el tamaño del array contenidoCeldas.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    // Configura y devuelve una celda de la tabla con el contenido del array.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell() // Crea una nueva celda.
        celda.textLabel?.text = contenidoCeldas[indexPath.row] // Establece el texto de la celda.
        return celda // Devuelve la celda configurada.
    }
}


