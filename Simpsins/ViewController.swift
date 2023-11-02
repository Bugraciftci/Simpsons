//
//  ViewController.swift
//  Simpsins
//
//  Created by Muhammed Buğra on 2.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var TableView: UITableView!
    
    var mySimps = [Simpson]()
    var chosenSimp : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.delegate = self
        TableView.dataSource = self

        
    //simps
        let homer = Simpson(simpname: "Homer simpson" , simpjob: "Nucleer Safety", simpimage: UIImage(named: "homer")!)
        let bart = Simpson(simpname: "Bart simpson" , simpjob: "student ", simpimage: UIImage(named: "bart")!)
        let lisa = Simpson(simpname: "Lisa simpson" , simpjob: " student ", simpimage: UIImage(named: "lisa")!)
        
        mySimps.append(homer)
        mySimps.append(lisa)
        mySimps.append(bart)


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mySimps.count        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimps[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimp = mySimps[indexPath.row]
        self.performSegue(withIdentifier: "detailsvc", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsvc"{
            let destinationVC = segue.destination as! Detailsvc
            destinationVC.selectedsimp = chosenSimp
        }
    }
    
}

