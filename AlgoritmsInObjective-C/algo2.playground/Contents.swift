import UIKit

var str = "Hello, playground"

func main(count:Int){
    for  _ in 0..<count{
    print("Hello")
  
  }
}

main(count: 3)

print("Enter input count:")
if let name = readLine() {
    if let  count = Int(name){
         for _ in 0..<count{
            print("Hello")
        
         }
    }
//   print("Hello \(name)!")
}
//
print("Input:")
if let sizeStr = readLine() {
  if let arrSize = Int(sizeStr){
    if let arrayString = readLine() {
        let numCharacters = arrayString.split(separator: " ")
      let nums = numCharacters.map{Int(String($0))!}
      print(nums)
    }
  }
}



func maxSlidingWindow(_ nums:[Int], _ k:Int) -> [Int]{
  guard nums.count > 0 else {return []}
  var result = [Int]()
  var maxi = -1
  
  for i in 0...nums.count - k{
    if i > maxi{
      maxi = i
      for j in i+1 ..< i + k{
        if nums[j] >= nums[maxi]{
          maxi = j
        }
      }
    }
    else{
      if nums[i + k - 1] >= nums[maxi]{
        maxi = i + k - 1
      }
    }
    result.append(nums[maxi])
  }
  return result
}

if let wAndSTXT = readLine() {
        let wAndSChars = wAndSTXT.split(separator: " ")
        let w_n_nums = wAndSChars.map{Int(String($0))!}
      print(w_n_nums)
    let w = w_n_nums[0]
    let s = w_n_nums[1]
  
   if let arrayString = readLine() {
          let arrayChars = arrayString.split(separator: " ")
          let nums = arrayChars.map{Int(String($0))!}
          print(nums)
         let res = maxSlidingWindow(nums,w)
        print(res)
    print("",4, separator: " ", terminator:"")

      }
  }


var thing = "plane"

let closure = { [thing] in
  print("I love \(thing)")
}

thing = "trees"

closure()



class Person{
    static func test(){
        
        defer {
            print("1")
        }
        defer {
            print("2")
        }

        print("Person")
        
        defer {
            print("4")
        }
    }

    public func log(mod:String,msg:String){
        print("log\(mod), msg: \(msg)")
    }
}

Person.test()


let objs = ["Car", "Cow", "Tree", "Cow", "Car","Dog"]

// ["Car", "Cow","Tree","Dog"]
1. dict = ["String" : Bool]()

restultArr = [String]()

for object in objs {
  if let data = dict[object] {
    continue
  } else {
    resultArr.append(object)
    dict[object] = true
  }
}
