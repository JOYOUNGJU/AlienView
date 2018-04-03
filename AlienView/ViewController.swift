//
//  ViewController.swift
//  AlienView
//
//  Created by D7703_27 on 2018. 4. 3..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var direction = true;
    @IBOutlet weak var imgview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      imgview.image = UIImage(named: "frame1.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    @IBOutlet weak var lbl: UILabel!
    @IBAction func btn2(_ sender: Any) {
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        if direction == true {
            count += 1;
        } else if direction == false {
            count = count - 4
        }
        imgview.image = UIImage (named: "frame\(count).png"
        )
        
        lbl.text = "\(count)"
    }
    
    @IBAction func btn(_ sender: Any) {
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        if direction == true {
            count += 1;
        } else if direction == false {
            count = count - 1
        }
        imgview.image = UIImage (named: "frame\(count).png"
        )
        lbl.text = "\(count)"
        
    }
}

