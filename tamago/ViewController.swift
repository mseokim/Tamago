//
//  ViewController.swift
//  tamago
//
//  Created by 김민서 on 2017. 5. 13..
//  Copyright © 2017년 minseo. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var count = 100
    @IBOutlet weak var eggImg: UIImageView!
    @IBOutlet weak var countLbl: UILabel!
    @IBOutlet weak var tstLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        eggImg.image = UIImage(named : "egg_start.png")
        countLbl.text = "100"
        countLbl.textAlignment = .center
        tstLbl.text = " "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnEgg() {
        count -= 1
        countLbl.text = "\(count)"
        
        if count > 60 && count <= 80
        {
            eggImg.image = UIImage(named : "egg_little.png")
        }else if count > 40 && count <= 60
        {
            eggImg.image = UIImage(named : "egg_many.png")
        }else if count > 20 && count <= 40
        {
            eggImg.image = UIImage(named : "egg_end.png")
        }else if count > 0 && count <= 20
        {
            eggImg.image = UIImage(named : "egg_soon end.png")
        }else if count <= 0
        {
            eggImg.image = UIImage(named : "egg_real end.png")
            countLbl.text = "0"
            tstLbl.text = "안냥!!"
            tstLbl.textColor = .white
            tstLbl.textAlignment = .center
            tstLbl.backgroundColor = .black
        }
    }
    @IBAction func rstBtn() {
        count = 100
        countLbl.text = "100"
        eggImg.image = UIImage(named : "egg_start.png")
        tstLbl.text = " "
        tstLbl.backgroundColor = .white
    }
    
}
