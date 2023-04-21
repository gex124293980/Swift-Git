//
//  ViewController.swift
//  SwiftP
//
//  Created by Gex on 2023/4/7.
//

import UIKit
import Masonry
import Alamofire

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
        //        var a:Int? = 10
        //        a = nil
        //        print(a as Any)
        //
        //        var b:Int? = 15
        //        let c = (b ?? 0) + 20
        //        var d = 10
        //        let res = 20 + d
        //
        //        print(res,(b ?? 0),c,d)
        
        //          var age1: Int? = 15
        //          var age2: Int? = 20
        //          let age3: Int? = 25
        //          let age4: Int? = 30
        //          guard age1 == age3,age2 == age4 else {
        //              //条件不满足
        //              print("嘎嘎嘎")
        //              return
        //          }
        //         //条件满足
        //          print("111")
        
        //5-------AF网络请求
        //       let url = "https://www.baidu.com"
        //                //使用Alamofile发起请求
        //       AF.request(url).responseData(completionHandler: {response in
        //           //response.result为枚举类型，所以需要使用switch
        //           switch response.result {
        //           //使用let，后面就能使用临时变量
        //           case let .success(data):
        //               print("success\(data)")
        //               break
        //           case let .failure(error):
        //               print("fail:\(error)")
        //               break
        //           }
        //        })
        
        //6-------循环
        //        var num = 5
        //        while num > 0 {
        //            num -= 1;
        //            print("num ==\(num)\n")
        //        }
        
        //        var num = -4
        //        repeat {
        //            num += 1
        //            print("num == \(num)\n")
        //        }while(num < 0)
        
        //7-------range
        //        let range = 0...9
        //        let isHave = range.contains(10)//是否包含某个元素
        //        print(isHave)
        
        //        let range1: ClosedRange<Int> = 1...5
        //        let range2: Range<Int> = 1..<6
        //        let range3: PartialRangeThrough<Int> = ...5
        //
        //        print("\(range1)\n")
        //        print("\(range2),\(range2.contains(6))\n")
        //        print("\(range3),\(range3.contains(-111))\n")
        
//        let time = 13
//        let margin = 2
////        for item in stride(from: 1, to: time, by: margin){
////            print(item)//不包括13
////        }
//        for item in stride(from: 1, through: time, by: margin){
//            print(item)//包括13
//        }

//8-------字符串
//        let str1 = "长得帅可以撩妹,长丑是骚扰"
//        //长度
//        let len = str1.lengthOfBytes(using: .utf8)
//        print(len)
//        //字符集合
//        let length = str1.count
//        print(length)
//        let z = 9
//        let x = 1
//        let h = 20
//        // 09:01:20
//        //可以接受可变参数
//        let res5 = String(format: "%02d:%02d:%02d", z,x,h)
//        print(res5)
        
//9----where
        //where搭配switch语法的使用
//        let point = (1, 1)
//        switch point {
//        case let (x, y) where x == y :
//            print("特殊点",x,y)
//            break
//        default:
//            break
//        }
//
//        //where搭配for循环语法的使用
//
//        let items = [12,14,23,42,23,100]
//
//        for item in items where item > 99 {
//            print(item)
//            //结果:100
//        }
        
         //从上面列子可以看出where就是一个条件选择
         //print(functest(width: 10, height: 10))
         //print(functest(a: 10, b: 10))

//10-----闭包（oc的block）
       
//        let result = block3(3,9)
//        print(result)
        
//        loadData { result in
//            print(result)
//        }
          
//        loadData(name: "Hunt") { result in
//            print(result)
//        }
    }
    let block1 = { () in
        print("无参数返回值")
    }
    
    let block2 = {(a:Int, b:Int) in
        print(a*b)
    }
    
    let block3 = {(a:Int, b:Int)->Int in
        return (a*b)
    }
    
//    func loadData(finishedCallBack: @escaping (String) -> ()) {
//           //1.在全局队列中做耗时操作
//           DispatchQueue.global().async {
//               //在全局队列中休眠
//               Thread.sleep(forTimeInterval: 1)
//               //2.在主队列中回调数据
//               DispatchQueue.main.async {
//                   //执行闭包
//                   finishedCallBack("哈哈哈哈哈哈哈哈哈")
//               }
//           }
//       }
      
    func loadData(name: String,finishedCallBack: @escaping (String) -> ()){
        print("\(name)\n")
          //1.在全局队列中做耗时操作

             DispatchQueue.global().async {
         //在全局队列中休眠
                Thread.sleep(forTimeInterval: 1)
         //2.在主队列中回调数据
                 DispatchQueue.main.async {
                     //执行闭包
                   finishedCallBack("哈哈哈哈哈哈哈哈哈")
                 }
            }
    }
       
    
//    func functest(width a:Int,height b:Int) ->Int{
//        return a*b
//    }
//    func functest(a:Int, b:Int) ->Int{
//        return a*b
//    }
    
    lazy var nameLable = UILabel()
}

