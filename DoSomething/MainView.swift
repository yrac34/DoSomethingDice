//
//  MainView.swift
//  DoSomething
//
//  Created by Amy Chun on 8/29/22.
//

import SwiftUI

struct MainView: View {
  
  // activity, food, dessert
  private var activity = ["cocktail", "dining", "gym", "hiking", "theatre"]
  @State private var activityN = [1, 2, 0]
  private var food = ["noodles", "pizza", "dining"]
  @State private var foodN = [0, 1]
  private var dessert = ["boba", "cupcake", "cocktail", "icecream"]
  @State private var dessertN = [3, 2, 0, 1]
  @State var credits = 0
//  private var betAmount = 5
  
    var body: some View {
      
      ZStack {
        
        VStack {
          
          Spacer()
          
          HStack {
            Text("Do Something Dice 🎲")
              .bold()
          }.scaleEffect(2)
          
          Spacer()
          
          Text("Rolled: " + String(credits))
            .padding(10)
            .background(Color.teal.opacity(0.2))
            .cornerRadius(20)
          
          Spacer()
          
          HStack {
            
            Spacer()
            VStack {
              
              Text("Activity")
              
              Image(activity[activityN[0]])
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)
            }
   
            VStack {
              
              Text("Food")
              Image(food[foodN[0]])
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)
            }
          
            VStack {
              
              Text("Dessert")
              Image(dessert[dessertN[0]])
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .background(Color.white.opacity(0.5))
                .cornerRadius(20)
            }
            
            Spacer()
            
          }
          
          Spacer()
          
          Button(action: {
            
            self.credits += 1
            
            self.activityN[0] = Int.random(in: 0...self.activity.count - 1)
            
            self.foodN[0] = Int.random(in: 0...self.food.count - 1)
            
            self.dessertN[0] = Int.random(in: 0...self.dessert.count - 1)
            
            // Check winnings
//            if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
//
//              //Won
//              self.credits += self.betAmount * 10
//            }
//            else {
//
//              self.credits -= self.betAmount
//
//            }
            
          }) {
            
            Text("Spin")
              .bold()
              .foregroundColor(.white)
              .padding(.all, 10)
              .padding([.leading, .trailing], 30)
              .background(Color.teal.opacity(0.7))
              .cornerRadius(20)
            
          }
          
          Spacer()
          
        }
      
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
//      .edgesIgnoringSafeArea(.all)
//      .navigationTitle("Do Something Dice 🎲")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
