//
//  ViewController.swift
//  contactos
//
//  Created by Alumno on 01/11/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [Contacto] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblCorreo.text = contactos[indexPath.row].correo
        celda.lblCelular.text = contactos[indexPath.row].numero
        
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 129
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Contactos"
        
        contactos.append(Contacto(nombre: "Romina", correo: "emails", numero: "6421372801"))
        contactos.append(Contacto(nombre: "Romina", correo: "emails", numero: "6421372801"))
        contactos.append(Contacto(nombre: "Romina", correo: "emails", numero: "6421372801"))
    }


}

