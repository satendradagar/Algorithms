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



class ROMAN_TO_INT{

   class func valueForChar(r:Character) -> Int {
        // This function returns value of a Roman symbol
        
        if (r == "I"){
            return 1;
        }
        if (r == "V"){
            return 5;
        }
        if (r == "X"){
            return 10;
        }
        if (r == "L"){
            return 50;
        }
        if (r == "C"){
            return 100;
        }
        if (r == "D"){
            return 500;
        }
        if (r == "M"){
            return 1000;
        }
        return -1;
    }
    
    class func convertToInt(romanString:String) -> Int {
        
        let arr = Array(romanString)
        let leng = arr.count
        var res = 0;

        for var i in 0..<leng {
            print(i)
            // Initialize result
            
                // Getting value of symbol s[i]
                let s1 = valueForChar(r: arr[i]);
                
                // Getting value of symbol s[i+1]
                if (i+1 < leng)
                {
                    let s2 = valueForChar(r: arr[i+1]);
                    
                    // Comparing both values
                    if (s1 >= s2)
                    {
                        // Value of current symbol is greater
                        // or equalto the next symbol
                        res = res + s1;
                    }
                    else
                    {
                        res = res + s2 - s1;
                        i = i + 1
                         // Value of current symbol is
                        // less than the next symbol
                    }
                }
                else
                {
                    res = res + s1;
                    i = i + 1

                }
            }
        return 0
    }
}

let intRes = ROMAN_TO_INT.convertToInt(romanString: "MCMIV")
print(intRes)

struct Stack<T> {
    private var myArray: [T] = []
    
    mutating func push(_ element: T) {
        myArray.append(element)
    }
    
    mutating func pop() -> T? {
        return myArray.popLast()
    }
    
    func peek() -> T? {
        return myArray.last
    }
    
    func storage() -> [T] {
        return myArray
    }
    
}

class RemoveSimilarMatching{
    
   static func removeMAtching(input:String) -> String {

        let characters = Array(input)
//        print(characters)
//        return String(characters);
    var stack = Stack<String.Element>()
    var shouldPopChar = false;
        for char in characters {
            if stack.peek() == char {
                shouldPopChar = true
            }
            else{
                if  true == shouldPopChar{
                    var popDone = 0
                    shouldPopChar = false
//                    var lastPoped = stack.peek()
                    repeat{
                         stack.pop() //Atleast once is recommended
                        popDone = popDone + 1
                    }while (stack.peek() == char)
                    if popDone > 1 {
                        continue
                    }
                }
                stack.push(char)
            }
//            print("\(stack.storage()), char:\(char)")
        }
    if true == shouldPopChar { //If last one was matched to finish, exit from for loop
        stack.pop()
    }
        let arr = stack.storage()
        return String(arr);
        
    }
    
    class func test(){

//        String mpie = "mississipie";//mipie
//        String input = "baabbba"; // output a
//        String input1 = "aaabba";// "a"
//        String input2 = "abbab";// "b"
//        String input3 = "abaaba";// ""
//        String input4 = "abaab";// "a"
//        String input5 = "abaabaab";// "b"
//        String input6 = "abbad";// "d"
         print(RemoveSimilarMatching.removeMAtching(input: "mississipie"))
        print(RemoveSimilarMatching.removeMAtching(input: "baabbba"))
        print(RemoveSimilarMatching.removeMAtching(input: "aaabba"))
        print(RemoveSimilarMatching.removeMAtching(input: "abbab"))
        print(RemoveSimilarMatching.removeMAtching(input: "abaaba"))
        print(RemoveSimilarMatching.removeMAtching(input: "abaab"))
        print(RemoveSimilarMatching.removeMAtching(input: "abaabaab"))
        print(RemoveSimilarMatching.removeMAtching(input: "abbad"))


    }
}

RemoveSimilarMatching.test()

class LongestPalindromSolution {
    class func longestPalindrome(_ s: String) -> String {
        
        let s = Array(s)
        
        var input = [Character](repeating: "?", count: s.count * 2 + 1)
        
        var index: Int = 1
        
        for c in s {
            input[index] = c
            index += 2
        }
        
        var p = [Int](repeating: 0, count: input.count)
        
        var resultLength: Int = 0
        var resultCenter: Int = 0
        
        for i in 1..<input.count {
            
            var left = i - 1
            var right = i + 1
            
            while left >= 0 && right < input.count && input[left] == input[right] {
                left -= 1
                right += 1
                p[i] += 1
            }
            
            
            if p[i] > resultLength {
                resultLength = p[i]
                resultCenter = i
            }
        }
        
        let resultStartIndex = (resultCenter - resultLength) / 2
        let resultEndIndex = resultStartIndex + resultLength
        
        return String(s[resultStartIndex..<resultEndIndex])
    }
    
    class func test() {
        print("Start \(self)-\(#function)" )
        print( self.longestPalindrome("babad"))
        print( self.longestPalindrome("cbbd"))

    }
}

LongestPalindromSolution.test()

func longestConsecutive(_ nums: [Int]) -> Int {
    var countMap = [Int: Int]()
    var result = 0
    for num in nums {
        if countMap[num] == nil {
            let leftSum = countMap[num - 1] ?? 0
            let rightSum = countMap[num + 1] ?? 0
            let streak = leftSum + rightSum + 1
            countMap[num] = streak
            print("leftSum:\(leftSum), rightSum:\(rightSum), streak:\(streak)")
            if leftSum != 0 { countMap[num-leftSum] = streak }
            if rightSum != 0 { countMap[num+rightSum] = streak }
            print(countMap)
            result = max(result, streak)
            
        }
    }
    return result
}

print(longestConsecutive([10, 22, 9, 8, 21, 50, 41, 60]))


//precedencegroup ExponentPrecedence {
//  higherThan: MultiplicationPrecedence
//  associativity: right
//}
//
//infix operator ^^: ExponentPrecedence
//
//func ^^(base: Int, exponent: Int) -> Int {
//  let l = Double(base)
//  let r = Double(exponent)
//  let p = pow(l, r)
//  return Int(p)
//}
//
//struct NodeM{
//
//    var node1: NodeM?
//
//}

class FindNextPermutationSolution {
    /*
     1,2,3 → 1,3,2
     3,2,1 → 1,2,3
     1,1,5 → 1,5,1
     */
    
      func nextPermutation(_ nums: inout [Int]) {
        
        guard nums.count > 1 else { return }
        
        let length = nums.count;
        var i = length - 2;
        while (i >= 0 && nums[i] >= nums[i + 1]) {
            i = i - 1 ;
        }
        
        if (i < 0) {
            reverse(&nums, 0, length - 1);
            return;
        }
        
        var j = length - 1;
        while (j > i && nums[i] >= nums[j]) {
            j = j - 1;
        }

        nums.swapAt( i, j);
        reverse(&nums, i + 1, length - 1);
     }
     
     func reverse(_ nums: inout [Int], _ left: Int, _ right: Int) {
         var l = left, r = right
         while l < r {
             nums.swapAt(l, r)
             l += 1
             r -= 1
         }
     }
    
    func test() -> Void {
        var arr1 = [1,2,3]
//        nextPermutation(&arr1)
//        print(arr1)
//        arr1 = [9, 5, 4, 3, 1]
//        nextPermutation(&arr1)
//        print(arr1)
//        arr1 = [1, 5, 8, 4, 7, 6, 5, 3,1]
//        nextPermutation(&arr1)
//        print(arr1)
        arr1 = [1, 3,2]
         nextPermutation(&arr1)
         print(arr1)
    }
    
    
}

FindNextPermutationSolution().test()

class SolutionFindCombinations {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var current = [Int]()
        findPairOfSum(candidates, target, currentRes: &current , result: &res, currentIndex: 0)
        print("Input:\(candidates), :target:\(target), res:\(res)")
        return res
    }
    
    func findPairOfSum(_ candidates: [Int], _ remainder: Int, currentRes: inout [Int], result:inout [[Int]], currentIndex:Int) {
        
        if remainder < 0 {
            return
        }
        else if remainder == 0 {
            result.append(currentRes)
            
        }
        else{
            
            for i in currentIndex..<candidates.count {
                
                //            if currentRes.contains(candidates[i]) == true{ //Already exist, continue
                //                continue
                //            }
                
                let rem = remainder - candidates[i]
                currentRes.append(candidates[i])
                findPairOfSum(candidates, rem, currentRes: &currentRes, result: &result, currentIndex: i)
                currentRes.popLast()
            }
        }
        
    }
    
    static func test() {
        SolutionFindCombinations().combinationSum([2,3,6,7], 7)
        SolutionFindCombinations().combinationSum([2,3,6,7], 8)
        SolutionFindCombinations().combinationSum([2,3,5], 8)

    }
}


class SolutionFindCombinations2 {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var current = [Int]()
        findPairOfSum(candidates.sorted(), target, currentRes: &current , result: &res, currentIndex: 0)
        print("Input:\(candidates), :target:\(target), res:\(res)")
        return res
    }
    
    func findPairOfSum(_ candidates: [Int], _ remainder: Int, currentRes: inout [Int], result:inout [[Int]], currentIndex:Int) {
        
        if remainder < 0 {
            return
        }
        else if remainder == 0  {
            if result.contains(currentRes) == false{
                result.append(currentRes)
            }
        }
        else{
            
            for i in currentIndex..<candidates.count {
//                if i > currentIndex && candidates[i] == candidates[i - 1] {
//                    continue
//                }
//                if currentRes.contains(candidates[i]) == true{ //Already exist, continue
//                    continue
//                }
                
                let rem = remainder - candidates[i]
                currentRes.append(candidates[i])
                findPairOfSum(candidates, rem, currentRes: &currentRes, result: &result, currentIndex: i + 1)
                currentRes.popLast()
            }
        }
    }
    
    static func test() {
        SolutionFindCombinations().combinationSum([2,3,6,7,2,5,7], 7)
        SolutionFindCombinations().combinationSum([2,3,6,7,2], 8)
        SolutionFindCombinations().combinationSum([2,3,5,5,3,2], 8)

    }
}



SolutionFindCombinations2.test()
