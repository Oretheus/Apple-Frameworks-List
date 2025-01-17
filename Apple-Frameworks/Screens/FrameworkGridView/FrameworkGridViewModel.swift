//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Abdullah Zawahreh on 7/26/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
}
