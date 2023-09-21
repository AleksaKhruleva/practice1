//
//  ViewController.swift
//  seminar1
//
//  Created by Aleksa Khruleva on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        iOSNis.students = [
            Student(grades: [3.51, 10, 9], fullName: "Ушакова Ангелина"),
            Student(grades: [7, 8, 7.5], fullName: "Алибек Адхамов")
        ]
        print(normalizeGrades(students: iOSNis.students))
    }
    
    func normalizeGrades(students: [Student]) -> [String : Double] {
        let maxMid = iOSNis.getMaxMid()
        var result: [String : Double] = [:]
        
        for student in students {
            result[student.fullName] = student.getGrades() / maxMid
        }
        
        return result
    }
}

