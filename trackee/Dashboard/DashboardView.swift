//
//  DashboardView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 23/07/22.
//

import SwiftUI

struct DashboardView: View {
    var dummyArr: [LearningModel] = [
        LearningModel(title: "Core Data", category: "chevron.left.forwardslash.chevron.right", duration: 1),
        LearningModel(title: "Sketch 101", category: "scribble", duration: 1)
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightBlue")
                    .ignoresSafeArea()
                
                VStack {
                    DashboardHeader()
                        .ignoresSafeArea()
                    
                    VStack {
                        ForEach(dummyArr) { data in
                            NavigationLink(destination: LearningView()) {
                                CardComponent(categ: data.category, title: data.title, dur: data.duration)
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
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
