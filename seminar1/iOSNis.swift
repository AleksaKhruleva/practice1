//
//  iOSNis.swift
//  seminar1
//
//  Created by Aleksa Khruleva on 08.09.2023.
//

final class Student {
    var grades: [Double] = []
    var fullName: String
    
    init(grades: [Double] = [], fullName: String) {
        self.grades = grades
        self.fullName = fullName
    }
    
    func getGrades() -> Double {
        var sum = 0.0
        
        for grade in grades {
            sum += grade
        }
        
        return sum / Double(grades.count)
    }
    
}

final class iOSNis {
    static var students: [Student] = []
    
    static func getMaxMid() -> Double {
        var maxMid = 0.0;
        
        for student in students {
            maxMid = max(student.getGrades(), maxMid)
        }
        
        return maxMid / 10
    }
}
