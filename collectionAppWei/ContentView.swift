//
//  ContentView.swift
//  collectionAppWei
//
//  Created by ALVIN WEI on 9/16/26.
//

import SwiftUI

struct ContentView: View {
    //1
    @State var randomArray: [Int] = []
    
    //8 and 9
    @State var randomDictionary = ["CLC":"Crystal Lake Central", "CLS":"Crystal Lake South", "PR":"Prairie Ridge"]
    
    //18
    let randomTuple = (name: "bobby", age: 15, gpa: 3)
    
    var body: some View {
        VStack {
            Button("hehe"){
                //2
                randomArray.append(5)
                randomArray.append(2)
                
                //3
                print(randomArray[0])
                print(randomArray[1])
                
                //4
                randomArray.insert(3, at: 1)
                
                //5
                for num in randomArray{
                    print(num)
                }
                
                //6
                randomArray.sort()
                
                //7
                for i in 0..<randomArray.count{
                    randomArray[i] += 10
                }
                for num in randomArray{
                    print(num)
                }
                
                //10
                if let x = randomDictionary["CLC"]{
                    print(x)
                }
                
                //11
                randomDictionary["CG"] = "Cary Grove"
                
                //12
                for(a,b) in randomDictionary{
                    print("\(a), \(b)")
                }
                
                //13
                for(a,_) in randomDictionary{
                    print("\(a)")
                }
                
                //14
                for(_,b) in randomDictionary{
                    print("\(b)")
                }
                
                //15
                var initials: [String] = []
                for(a,_) in randomDictionary{
                    initials.append(a)
                }
                initials.sort()
                for i in 0..<randomDictionary.count{
                    print("\(initials[i]), \(randomDictionary[initials[i]] ?? "N/A")")
                }
                
                //16
                let randomNumber = Int.random(in: 5...7)
                
                //17
                switch randomNumber {
                case 5:
                    print("Number five, look alive")
                    
                case 6:
                    print("Number six, come get your portillo's fix")
                    
                case 7:
                    print("seven, come enjoy your portillo's heaven")
                    
                default:
                    print("idk man")
                }
                
                //20
                print("name: \(randomTuple.name)\nage: \(randomTuple.age)\ngpa: \(randomTuple.gpa)")
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
