//
//  TextBindingManager.swift
//  kratos
//
//  Created by Elijah Kajinic on 9/9/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import Foundation

class TextBindingManager: ObservableObject {
    let characterLimit: Int
    init(limit: Int = 5){
        characterLimit = limit
    }
    
    @Published var text = "" {
        didSet {
            if text.count > characterLimit && oldValue.count <= characterLimit {
                text = oldValue
            }
        }
    }

}
