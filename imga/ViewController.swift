//
//  ViewController.swift
//  imga
//
//  Created by dit06 on 2019. 3. 26..
//  Copyright © 2019년 dit06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var cou: UILabel!
    var count=1;
    var check=false;
    override func viewDidLoad() {
        super.viewDidLoad()
        //이미지 로드하기
        img.image=UIImage(named: "frame\(count).png");
        cou.text=String(count);
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func update(_ sender: UIButton) {
        if count==5{
            check = !check;
        }else if count==1{
            check = !check;
        }
        if check == true{
            count+=1
        }else if check == false{
            count-=1
        }
        img.image=UIImage(named: "frame\(count).png");
        /*
        if(check==false){
            count+=1;
            img.image=UIImage(named: "frame\(count).png");
            if(count==5){
                check = !check;
            }
        }else if(check==true){
            count-=1;
            img.image=UIImage(named: "frame\(count).png");
            if(count==1){
                check = !check;
            }
        }*/
       // count+=1;
        cou.text=String(count);
        /*if(count<6){
            img.image=UIImage(named: "frame\(count).png");
            if(count==5){
                count=0;
            }
        }*/
    }
    
}

