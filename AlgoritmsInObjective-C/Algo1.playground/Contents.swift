import UIKit

var str = "Hello, playground"


func minNum(threshold: Int, points: [Int]) -> Int {
    // Write your code here
    let count = points.count
    
    if count <= 1 {
        return count
    }
    
    var outputCount = 1
    var i = 1
    while i <= count - 2 {
        outputCount = outputCount + 1
        let next = points[i]
        let nextNext = points[i+1]
        if nextNext - points[0] <= threshold {
            print(nextNext)
            i = i + 2
        }
        else if next - points[0] <= threshold  {
            print(next)

            i = i + 1
        }
        else{
            print("Exit")
            break;
        }
    }
    if i == count {//iterate through all
        return count - 1
    }
    return outputCount
}

let res = minNum(threshold: 4, points: [1,2,3,5,8])
//let res = minNum(threshold: 2, points: [1,2,3])
//let res = minNum(threshold: 650, points: [10,82,112,134,178,206,229,238,278,293,335])



//print(res)

func minimumMoves(arr1: [Int], arr2: [Int]) -> Int {
    // Write your code here
    if arr1.count != arr2.count{
        return 0
    }
    let count = arr1.count
    var totalSteps = 0
    for i in 0..<count {
        totalSteps += getStepsBetweenTwoIntegers(int1: arr1[i], int2: arr2[i])
    }
    return totalSteps
}

func getStepsBetweenTwoIntegers(int1: Int, int2: Int) -> Int{
    var remaining1 = int1
    var remaining2 = int2
    var dig1 = 0
    var dig2 = 0
    var steps = 0
    while remaining1 > 0 {
        dig1 = remaining1 % 10
        dig2 = remaining2 % 10
        steps += abs(dig1 - dig2)
        remaining1 = remaining1 / 10
        remaining2 = remaining2 / 10
    }
    return steps
}

//let steps = getStepsBetweenTwoIntegers(int1: 123, int2: 321)







func countUniques<T: Comparable>(_ array: Array<T>) -> Int {
  let sorted = array.sorted()
  let initial: (T?, Int) = (.none, 0)
  let reduced = sorted.reduce(initial) {
    ($1, $0.0 == $1 ? $0.1 : $0.1 + 1)
  }
    print(reduced)
  return reduced.1
}

countUniques([1, 2, 3, 3])















let arr = [1,3,5,4,6,8,9,10]

//int ipow(int base, int exp)
//{
//    int result = 1;
//    for (;;)
//    {
//        if (exp & 1)
//            result *= base;
//        exp >>= 1;
//        if (!exp)
//            break;
//        base *= base;
//    }
//
//    return result;
//}

func iPow(base:Int, exp:Int) -> Int{
    
    var res = 1
    var expVar = exp
    var baseVar = base
    
    while true {
        
        if expVar & 1 == 1 {
            
            res = res * baseVar
            print("Res:\(res)")
        }
        expVar >>= 1
        print("expVar:\(expVar)")

        if (expVar == 0){
            break;
            
        }
        baseVar *= baseVar;
        print("baseVar:\(baseVar)")

    }
    return res
}

let val = iPow(base: 2, exp: 10)


class Solution {
    var combinations = ["(":")"]
    func checkValidString(_ s: String) -> Bool {
        
        return true
    }
    
}

class LIS_Non_Contiguous{
    
    class func lis(arr:[Int]) -> Int {
        
        let count = arr.count
        var lis:[Int] = Array.init(repeating: 1, count: arr.count)
        
        for i in 0..<count {
            //            print(arr[i])
            
            for j in 0..<i {
                if arr[j] < arr[i] {
                    if lis[i] < lis[j] + 1
                    {
                        lis[i] = lis[j] + 1
                        print(lis[i])
                    }
                }
            }
        }
        
        return lis.max() ?? 0
    }
}

let resVal = LIS_Non_Contiguous.lis(arr: [10, 22, 9, 33, 21, 50, 41, 60])
print(resVal)



