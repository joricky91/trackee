//
//  DashboardView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 23/07/22.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject var vm = LearningViewModel()
    
    var body: some View {
        ZStack {
            Color("lightBlue")
                .ignoresSafeArea()
            
            VStack {
                DashboardHeader(vm: vm)
                    .ignoresSafeArea()
                
                if vm.savedLearning.isEmpty {
                    EmptyLearningView()
                } else {
                    ScrollView {
                        ForEach(vm.savedLearning) { data in
                            NavigationLink(destination:
                                LearningView(learning: data, vm: vm)
                                .onAppear {
                                    vm.selectedLearning = data
                                }) {
                                    CardComponent(categ: data.domain ?? "", title: data.title ?? "", dur: Int(data.duration))
                                        .padding(.top, 10)
                                        .padding(.horizontal)
                                }
                                .buttonStyle(PlainButtonStyle())
                            
                        }
                        
                        
                        Spacer()
                    }
                    .padding(.top, -35)
                }
                
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
        
    }
}

//struct DashboardView_Previews: PreviewProvider {
//    static var previews: some View {
//        DashboardView()
//    }
//}
