//
//  LearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct LearningView: View {
    var learning: Learning
    @ObservedObject var vm: LearningViewModel
    
    var body: some View {
        ZStack {
            Color("lightBlue")
                .ignoresSafeArea()
            
            VStack {
                LearningHeader(learn: learning)
                    .ignoresSafeArea()
                
                VStack {
                    TimerView(vm: vm)
                    
                    ResourceListView(learn: learning, vm: vm)
                }
                Spacer()
                .padding(.top, -20)
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
}

//struct LearningView_Previews: PreviewProvider {
//    static var previews: some View {
//        LearningView()
//    }
//}
