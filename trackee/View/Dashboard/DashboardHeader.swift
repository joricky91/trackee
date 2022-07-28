//
//  DashboardHeader.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 23/07/22.
//

import SwiftUI

struct DashboardHeader: View {
    let radius = CGFloat(15)
    @State var isPresented = false
    @ObservedObject var vm: LearningViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isPresented = true
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                }
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width)
            .padding(.top, 45)
            
            Spacer()
            
            HStack {
                Text("Your Learning")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(maxHeight: UIScreen.main.bounds.width * 0.39)
        .background(Color("darkBlue"))
        .padding(.top, radius)
        .cornerRadius(radius)
        .padding(.top, -radius)
        .sheet(isPresented: $isPresented) {
            NewLearningView(isPresented: $isPresented, vm: vm)
        }
    }
}

//struct DashboardHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        DashboardHeader()
//    }
//}
