//
//  NextViewController.swift
//  SlideshowApp
//
//  Created by 山崎大聖 on 2017/03/22.
//  Copyright © 2017年 山崎大聖. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var syasin: UIImageView!
    var x:Int = 0

    var  photos = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = photos[x]
        let image = UIImage(named: name)
        syasin.image = image

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
