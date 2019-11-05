import UIKit
import Foundation






func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(Set(nums2)))
}

intersection([4, 9, 5], [9, 4, 9, 8, 4])






//func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//    if nums.count <= 1 {
//        return false
//    }
//
//    var dict = [Int: Int]()
//
//    for i in 0..<nums.count {
//        guard let index = dict[nums[i]], i - index <= k else {
//            dict[nums[i]] = i
//            continue
//        }
//
//        return true
//    }
//    return false
//}
//
//containsNearbyDuplicate([1, 0, 1, 1], 2)




//func containsDuplicate(_ nums: [Int]) -> Bool {
//    return nums.count > Set(nums).count
//}
//
//containsDuplicate([1, 2, 3, 1])
//containsDuplicate([1, 2, 3, 4])

//func containsDuplicate(_ nums: [Int]) -> Bool {
//    let freqDic = Dictionary(nums.map {($0, 1)}, uniquingKeysWith: +)
//    for (_, value) in freqDic {
//        if value > 1 {
//            return true
//        }
//    }
//
//    return false
//}
//
//containsDuplicate([1, 2, 3, 1])
//containsDuplicate([1, 2, 3, 4])


//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    var dic = Dictionary(nums1.map{($0, 1)}, uniquingKeysWith: +)
//    print(dic)
//    var freq = [Int]()
//
//    for num in nums2 {
//        if let test0 = dic[num], test0 > 0 {
//            freq.append(num)
//            dic[num] = test0 - 1;
//        }
//    }
//
//    return freq
//}
//
//intersect([1, 2, 2, 1], [2, 2])

//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    let set1 = Set(nums1)
//    var a1: [Int] = []
//    for <#item#> in <#items#> {
//        <#code#>
//    }
//}


//func intersection(_ a1: [Int], _ a2: [Int]) -> [Int] {
//    return Array(Set(a1).intersection(Set(a2)))
//}
//
//intersection([1, 2, 2, 1], [2, 2])



//func firstMissingPositive(_ nums: [Int]) -> Int {
//    var mySet = Set<Int>()
//    nums.forEach {
//        mySet.insert($0)
//    }
//
//    for i in 0..<mySet.count {
//        if !mySet.contains(i + 1) {
//            return i + 1
//        }
//    }
//
//    return mySet.count + 1;
//}
//
//firstMissingPositive([7, 8, 9, 11, 12])
//firstMissingPositive([3, 4, -1, 1])
//firstMissingPositive([1, 2, 0])

//
//func majorityElement(_ nums: [Int]) -> Int {
//    var count = 0, candidate = 0
//    for num in nums {
//        if count == 0 {
//            candidate = num
//        }
//
//        count += (candidate == num) ? 1: -1
//    }
//    return candidate
//}
//
//
//majorityElement([2, 2, 1, 1, 1, 2, 2])




//func islandPerimeter(_ grid: [[Int]]) -> Int {
//    var sum = 0
//    for (i, valueLine) in grid.enumerated() {
//        for (j, value) in valueLine.enumerated() {
//            if value == 1 {
//                sum += 4;
//                if i > 0 && grid[i - 1][j] == 1 {
//                    sum -= 1
//                }
//                if i < grid.count - 1 && grid[i + 1][j] == 1 {
//                    sum -= 1
//                }
//                if j > 0 && grid[i][j - 1] == 1 {
//                    sum -= 1
//                }
//                if j < grid.count - 1 && grid[i][j+1] == 1 {
//                    sum -= 1
//                }
//
//            }
//        }
//    }
//
//    return sum
//}
//
//
//islandPerimeter([[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]])




//func numberOfBoomeranges(_ points: [[Int]]) -> Int {
//    var valueMapNum = [Int:Int]()
//    var sum = 0
//    for i in 0..<points.count {
//        valueMapNum = [Int:Int]()
//        for j in 0..<points.count {
//            if i != j {
//                let distance = (points[i][0] - points[j][0]) * (points[i][0] - points[j][0]) + (points[i][1] - points[j][1]) * (points[i][1] - points[j][1])
//                if let distanceNum = valueMapNum[distance] {
//                    valueMapNum[distance] = distanceNum + 1
//                } else {
//                    valueMapNum[distance] = 1
//                }
//            }
//        }
//
//        for value in valueMapNum.values {
//            if value > 1 {
//                sum = sum + value * (value - 1)
//            }
//        }
//
//    }
//    return sum
//
//}
//
//numberOfBoomeranges([[0, 0], [1, 0], [2, 0], [0, 2]])





//func findMiniRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
//    var i = 0, radius = 0
//    let newHouses = houses.sorted()
//    let newHeaters = heaters.sorted()
//
//    for house in newHouses {
//
//        while i < heaters.count - 1 && 2 * house >= newHeaters[i] + newHeaters[i + 1] {
//            i += 1
//        }
//
//        radius = max(radius, abs(house - heaters[i]))
//    }
//
//    return radius;
//}
//
//findMiniRadius([1, 2, 3], [2])

//func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
//    for (index, obj) in array.enumerated() where obj == object {
//        return index
//    }
//    return nil
//}


//func binarySearch<T: Comparable>(_ array: [T], key: T) -> Int? {
//    var lowBound = 0
//    var upperBound = array.count
//    while lowBound < upperBound {
//        let midBound = lowBound + (upperBound - lowBound)/2
//        if array[midBound] == key {
//            return midBound
//        } else if array[midBound] > key {
//            upperBound = midBound
//        } else if array[midBound] < key {
//            lowBound = midBound + 1
//        }
//    }
//    return nil
//}
//
//let a = [1, 2, 3, 4, 5]
//print(binarySearch(a, key: 5) ?? 0)




//

//func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
//    var a = array;
//    for i in 1..<a.count {
//        var y = i
//        let temp = a[i]
//        while y > 0 && temp < a[y-1] {
//            a[y] = a[y-1]
//            y = y - 1;
//        }
//        a[y] = temp
//    }
//
//    return a
//}
//
//let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
//print(insertionSort(list))




// Stack

//public struct Stack<T> {
//    fileprivate var array = [T]()
//
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    public var count: Int {
//        return array.count
//    }
//
//    public mutating func push(_ element: T) {
//        return array.append(element)
//    }
//
//    public mutating func pop() -> T? {
//        return array.popLast()
//    }
//
//    public var top: T? {
//        return array.last
//    }
//}
//
//var stackOfNames = Stack(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])
//print(stackOfNames.array)
//
//stackOfNames.push("Mike")
//print(stackOfNames.array)
//
//stackOfNames.pop()

