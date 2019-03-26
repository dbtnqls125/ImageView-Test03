//
//  ViewController.swift
//  ImageView Test03
//
//  Created by D7702_09 on 2019. 3. 26..
//  Copyright © 2019년 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyImageView: UIImageView!
    @IBOutlet weak var Mylabel: UILabel!
    
    var count = 1
    var direction = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MyImageView.image = UIImage(named: "frame1/png")
       
    }

    @IBAction func changeImage(_ sender: Any) {
        if count == 5 {
            direction = false
            
        } else if count == 0 {
            direction = true
        }
        
        if direction == true {
            count += 1
        }else {
            count -= 1
        }
        
   //     if count == 5 {
    //        count = 0
   //          }
    //count = count + 1
        MyImageView.image = UIImage(named: "frame\(count).png")
        
        Mylabel.text = String(count)
    }
    
}

