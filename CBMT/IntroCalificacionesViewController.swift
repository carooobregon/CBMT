//
//  IntroCalificacionesViewController.swift
//  CBMT
//
//  Created by Caro Obregon on 18/10/20.
//  Copyright © 2020 carooobregon. All rights reserved.
//

import UIKit

class AlCalificacionesViewCell: UITableViewCell {
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var alNombre: UILabel!
    @IBOutlet weak var alGrado: UILabel!
    @IBOutlet weak var alMaestra: UILabel!
    
}

class IntroCalificacionesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listaAlumnos = [
        Alumno(nombre: "Gaby Corona"),
        Alumno(nombre: "Caro Obregon"),
        Alumno(nombre: "Lucia Cantu")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    MARK: - Metodos de protocolo Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAlumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda")
        return celda!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
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
