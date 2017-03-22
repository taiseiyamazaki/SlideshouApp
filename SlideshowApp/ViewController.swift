//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 山崎大聖 on 2017/03/20.
//  Copyright © 2017年 山崎大聖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let photo = [
        "IMG_1986 (1).jpg",
        "IMG_8920.jpg",
        "IMG_1933.jpg",
        "IMG_8986.jpg",
        ]

    
    @IBAction func nextpage(_ sender: Any) {
        performSegue(withIdentifier: "nextpage", sender: nil)
    }
    
    var timer: Timer!
    
    @IBOutlet weak var ss: UIButton!
    @IBAction func ss(_ sender: Any) {
        if self.timer == nil{
        self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            ss.setTitle("停止", for: UIControlState.normal)
            }
      else{
            ss.setTitle("再生", for: UIControlState.normal)
            self.timer.invalidate()
            self.timer = nil
    }
    }
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBAction func previous(_ sender: Any) {
        if self.timer == nil{
        imageno -= 1
        disimage()
    }
    }
    
    
    @IBAction func next(_ sender: Any) {
        if self.timer == nil{
        imageno += 1
        disimage()
    }
    }
    
    
    var imageno = 0
    
   
    
    func disimage(){
        if imageno<0{
            imageno = 3
        }
        if imageno>3{
            imageno = 0
        }
        let name = photo[imageno]
        let image = UIImage(named: name)
        imageview.image = image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "IMG_1986 (1).jpg")
        imageview.image = image
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateTimer(timer: Timer){
        imageno += 1
        disimage()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next : NextViewController = segue.destination as! NextViewController
        next.x = imageno
        next.photos = photo
    }
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}

