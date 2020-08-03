//
//  ChallengesViewController.swift
//  DicodingApps
//
//  Created by Willy Adinata Saragih on 01/05/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {


    @IBOutlet weak var arChallenge: UIStackView!
    @IBOutlet weak var guestBookChallenge: UIStackView!
    @IBOutlet weak var educationChallenge: UIStackView!
    @IBOutlet weak var flutterChallenge: UIStackView!
    @IBOutlet weak var webChallenge: UIStackView!
    
    var challenges = [
        ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
        ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
        ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
        ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
        ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapped(parameter: &arChallenge)
        addTapped(parameter: &guestBookChallenge)
        addTapped(parameter: &educationChallenge)
        addTapped(parameter: &flutterChallenge)
        addTapped(parameter: &webChallenge)
    }
    
    func addTapped(parameter: inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case (arChallenge):
            controller.detail = challenges[0]
        case (guestBookChallenge):
            controller.detail = challenges[1]
        case (educationChallenge):
            controller.detail = challenges[2]
        case (flutterChallenge):
            controller.detail = challenges[3]
        case (webChallenge):
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]
        }
         
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
