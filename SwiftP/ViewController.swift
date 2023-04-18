//
//  ViewController.swift
//  SwiftP
//
//  Created by Gex on 2023/4/7.
//

import UIKit
import Masonry

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        let view:UIView = UIView()
        view.backgroundColor = UIColor.blue
        self.view.addSubview(view)
 
        view.mas_makeConstraints { (make) in
            make?.center.isEqual(self.view)
            make?.width.height()?.offset()(100)
        }
        
        swiftFuncTest()
    }
   
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
    return true
    }

    func swiftFuncTest(){
        
//1-------数组
//        var arr:[String] = ["1","2","3","4","5","6"]
//        arr.append("7")
//        //遍历数组
//        for (i ,scoure) in arr.enumerated(){
//            print("count:\(i + 1),scoure:\(scoure)\n")
//        }
        
//2-------字典
//        var dic = [String : String]()
//        dic["a"] = "A"
//        dic["b"] = "B"
//        dic["c"] = "C"
//        dic["d"] = "D"
        
//        var dic:[String : String] = ["a":"A","b":"B","c":"C"]
//        //遍历字典
//        for (_, pair) in dic.enumerated(){
//            print("key:\(pair.key),value:\(pair.value)\n")
//        }
        
//3-------元组
//        let mateArr = (30,"Hunt","SXLG")
//        print("age:\(mateArr.0),name:\(mateArr.1),schllo:\(mateArr.2)")
//
//        let (age,name,_) = mateArr
//        print(age,name)
//
//        let mateArr2 = (age:31,name:"Jack")
//        print(mateArr2.name,mateArr2.age)
        
//4-------可选类型
        var a:Int? = 10
        print(a);
        
        
    }
    
}

