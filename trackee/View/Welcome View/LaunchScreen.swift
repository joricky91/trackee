//
//  InputNameView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 22/07/22.
//

import SwiftUI

struct LaunchScreen: View {
    var size = SizeHelper()
    @State var selection: Int? = nil
    @ObservedObject var vm: LearningViewModel
    
    var body: some View {
        NavigationView {
            if vm.savedLearning.isEmpty {
                ZStack {
                    Color("lightBlue")
                        .ignoresSafeArea()
                    
                    VStack(alignment: .center) {
                        Spacer()
                        
                        LogoView()
                            
                        Spacer()
                        
                        OnboardImage()
                        
                        Text("#TrackYourLearning")
                            .fontWeight(.bold)
                        
                        TextDescription()
                        
                        Spacer()
                        
                        NavigationLink(destination: DashboardView(), tag: 1, selection: $selection) {
                            Button {
                                self.selection = 1
                            } label: {
                                Text("Start")
                                    .foregroundColor(Color("lightBlue"))
                                    .fontWeight(.semibold)
                            }
                            .frame(width: size.buttonWidth, height: size.buttonHeight)
                            .background(Color("darkBlue"))
                        .cornerRadius(8)
                        }
                        
                        Spacer()
                    }
                    
                }
                .navigationTitle("")
                .navigationBarHidden(true)
            } else {
                DashboardView()
            }
        }
    }
    
}

//struct LaunchScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        LaunchScreen()
//    }
//}
