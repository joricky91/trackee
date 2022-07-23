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
                    ForEach(dummyArr) { data in
                        CardComponent(categ: data.category, title: data.title, dur: data.duration)
                            .padding(.top, 10)
                    }
                    
                    Spacer()
                }
                .padding(.top, 20)
                
            }
            .navigationTitle("Your Learning")
            .navigationBarItems(trailing: Image(systemName: "plus").foregroundColor(Color("lightBlue")))
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor(Color("darkBlue"))

            UINavigationBar.appearance().standardAppearance = appearance

            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
