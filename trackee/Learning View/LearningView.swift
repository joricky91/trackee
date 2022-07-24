//
//  LearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct LearningView: View {
    var body: some View {
        ZStack {
            Color("lightBlue")
                .ignoresSafeArea()
            
            VStack {
                LearningHeader()
                    .ignoresSafeArea()
                
                VStack {
                    TimerView()
                    
                    ResourceListView()
                }
                .padding(.top, -20)
            }
        }
    }
}

struct LearningView_Previews: PreviewProvider {
    static var previews: some View {
        LearningView()
    }
}
