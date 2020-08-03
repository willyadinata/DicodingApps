//
//  ViewController.swift
//  DicodingApps
//
//  Created by Willy Adinata Saragih on 30/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func editProfile(_ sender: Any) {
        let alert = UIAlertController(title: "Apakah anda berniat untuk mengubah profile?", message: "Anda dapat memperbaharui profile Anda sekarang juga.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ya", style: .default, handler: { ACTION in print("Mengganti Profile.")
        }))
        
        alert.addAction(UIAlertAction(title: "Tidak", style: .cancel, handler: { ACTION in print("Membatalkan ubah profile.")
        }))
        
        self.present(alert, animated: true)
    }
}

