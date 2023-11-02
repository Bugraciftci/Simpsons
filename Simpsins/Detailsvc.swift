//
//  detailsvc.swift
//  Simpsins
//
//  Created by Muhammed Buğra on 2.11.2023.
//

import UIKit

class Detailsvc: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedsimp :Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedsimp?.name
        jobLabel.text = selectedsimp?.job
        imageView.image = selectedsimp?.image

    }
    
}
