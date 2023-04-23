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
    
    //自定义类当属性
    var testClass : TestClass = TestClass()
    
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
        
//        vari(5,4,3,2,1,2,3,4,5) //无限参数方法
        
//        let func1 = makeIncrementor(forIncrement: 10)
//        print(func1())
//        print(func1())
//        print(func1())
        
//      var mark =  markStruct(mark1: 75, mark2: 60, mark3: 120, mark4: 120)
//      print("政治：\(mark.mark1) 英语\(mark.mark2) 数学\(mark.mark3) 计算机基础\(mark.mark4) 总分:\(mark.mark1+mark.mark2+mark.mark3+mark.mark4)")
//        var test = TestClass()
//        test.countAdd()
//        print(test.number)
        
//        self.testClass.countAdd()
//        print(self.testClass.number)
//
//        self.testClass.countAddNumber(count: 5)
//        print(self.testClass.number)
//
//        self.testClass.reset()
//        print(self.testClass.number)
        
    //类方法
//    print(TestClass.absoluteValue(count: -20))
        
//    let number1 = 99
//    let division = subexample(decrementer: number1)
//    print("计算\(number1)除以9==\(division[9])")
  
    //分类，扩展
//        let addition = 3.add
//        print("加法运算后的值：\(addition)")
//
//        let subtraction = 120.sub
//        print("减法运算后的值：\(subtraction)")
//
//        let multiplication = 39.mul
//        print("乘法运算后的值：\(multiplication)")
//
//        let division = 55.div
//        print("除法运算后的值: \(division)")
//
//        let mix = 30.add + 34.sub
//        print("混合运算结果：\(mix)")
        
//
        
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
    
/// 无限参数的方法
/// - Parameter members: 类似为动态数组
    func vari<A>(_ members: A...){
        for temp in members{
            print("\(temp)\n")
        }
    }
    
    /// 返回一个 返回值为int类型的 方法
    /// - Parameter amount: amount 入参
    /// - Returns:  () -> Int   返回值为int的方法
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementor() -> Int {
        //var runningTotal = 0
            print(amount,runningTotal)
            runningTotal += amount
            return runningTotal
        }
        return incrementor
    }
    
    struct markStruct{
        var mark1: Int
        var mark2: Int
        var mark3: Int
        var mark4: Int
        
        init(mark1: Int, mark2: Int, mark3: Int, mark4: Int){
            self.mark1 = mark1
            self.mark2 = mark2
            self.mark3 = mark3
            self.mark4 = mark4
        }
    }

}

class TestClass {
    var number: Int = 0 {
        willSet(newTotal){
//            print("willSet:\(newTotal)")
        }
        didSet{
//            if number > oldValue {
//                print("didSet:\(number - oldValue)")
//            }
        }
    }
    
    class func absoluteValue(count:Int) -> Int{
        if count < 0 {
            return (-count)
        }else{
            return  count
        }
    }

    func countAdd () {
        number += 1
        print(number)
    }
    
    func countAddNumber (count:Int) {
        number += count
        print(number)
    }
    
    func reset (){
        number = 0;
        print(number)
    }
}

/// 下标脚本
struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}

extension Int {
   var add: Int {return self + 100 }
   var sub: Int { return self - 10 }
   var mul: Int { return self * 10 }
   var div: Int { return self / 5 }
}


protocol tcpprotocol {
    init(no1: Int)
}

class mainClass {
    var no1: Int // 局部变量
    init(no1: Int) {
        self.no1 = no1 // 初始化
    }
}

class subClass: mainClass, tcpprotocol {
    var no2: Int
    init(no1: Int, no2 : Int) {
        self.no2 = no2
        super.init(no1:no1)
    }
    
    //便利构造函数必须调用当前类的构造函数完成初始化
    //便利构造函数不能被子类重写或者是从子类中以super的方式被调用
    
    // 因为遵循协议，需要加上"required"; 因为继承自父类，需要加上"override"
    required override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}
