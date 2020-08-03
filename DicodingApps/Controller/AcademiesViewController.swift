//
//  AcademiesViewController.swift
//  DicodingApps
//
//  Created by Willy Adinata Saragih on 01/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    
    var academies = [
        ("Android Developer", "Lorem ipsum dolor sit amet", UIImage(named: "android")),
        ("Unity developer", "Lorem ipsum dolor sit amet", UIImage(named: "unity")),
        ("Cloud Developer", "Lorem ipsum dolor sit amet", UIImage(named: "cloud")),
        ("AR / VR Developer", "Lorem ipsum dolor sit amet", UIImage(named: "arvr"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &arvrAcademy)
        addTapped(parameter: &cloudAcademy)
    }
    
    func addTapped(parameter: inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
    
        switch gesture.view as? UIStackView {
        case(androidAcademy):
            controller.detail = academies[0]
        case(unityAcademy):
            controller.detail = academies[1]
        case(cloudAcademy):
            controller.detail = academies[2]
        case(arvrAcademy):
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        self.present(controller, animated: true, completion: nil)
    }
}
