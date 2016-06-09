//
//  Task.swift
//  Shameful
//
//  Created by Nelson Chow on 2016-06-06.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    
    // MARK: Properties
    dynamic var name = ""
    dynamic var date = NSDate()
    dynamic var isDaily = false
    
}
