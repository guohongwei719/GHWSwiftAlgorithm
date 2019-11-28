//
//  ViewController.swift
//  GHWSwiftAlgorithm
//
//  Created by 郭宏伟 on 2019/9/18.
//  Copyright © 2019 guohw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//

//
        
    }


    
    // 53. 最大子序和
    // print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var result = nums[0], currentSum = 0
        
        for value in nums {
            currentSum = max(currentSum + value, value)
            result = max(currentSum, result)
        }
        
        return result
    }
    
    
    // print(lengthOfLongestSubstring("pwwkew"))
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0, left = 0, set = Set<Character>()
        let characterArray = Array(s)
        
        print(characterArray)
        
        for (i, char) in characterArray.enumerated() {

            if set.contains(char) {
//                print(set)
                while characterArray[left] != char {
                    set.remove(characterArray[left])
                    left = left + 1
                }
//                print(left)
                left = left + 1
//                print(maxLength)
                maxLength = max(maxLength, i - left + 1)
            } else {
                set.insert(char)
                maxLength = max(maxLength, i - left + 1)

            }
        }

        
        return maxLength
    }


}

