//
//  ContentView.swift
//  correctNumber
//
//  Created by 주진형 on 2023/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var isCorrectName: String = "버튼을 눌러 주세요"
    @State var randomNumber = Int.random(in: 0...9)
    @State var randomNumber1 = Int.random(in: 0...9)
    @State var randomNumber2 = Int.random(in: 0...9)
    @State var randomNumber3 = Int.random(in: 0...9)
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Text(isCorrectName)
            Spacer()
            Group{
                HStack{
                    Group{
                        Button {
                            isCorrectNumber(0)
                        } label: {
                            Text("0")
                        }
                        Button ("1") {
                            print("\(randomNumber)")
                            isCorrectNumber(1)
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(2)
                        } label: {
                            Text("2")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(3)
                        } label: {
                            Text("3")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(4)
                        } label: {
                            Text("4")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(5)
                        } label: {
                            Text("5")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(6)
                        } label: {
                            Text("6")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(7)
                        } label: {
                            Text("7")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(8)
                        } label: {
                            Text("8")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(9)
                        } label: {
                            Text("9")
                        }
                    }
                }.font(.title)
                HStack{
                    Group{
                        Button {
                            isCorrectNumber(0)
                        } label: {
                            Text("0")
                        }
                        Button ("1") {
                            print("\(randomNumber)")
                            isCorrectNumber(1)
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(2)
                        } label: {
                            Text("2")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(3)
                        } label: {
                            Text("3")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(4)
                        } label: {
                            Text("4")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(5)
                        } label: {
                            Text("5")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(6)
                        } label: {
                            Text("6")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(7)
                        } label: {
                            Text("7")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(8)
                        } label: {
                            Text("8")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(9)
                        } label: {
                            Text("9")
                        }
                    }
                }.font(.title)
                HStack{
                    Group{
                        Button {
                            isCorrectNumber(0)
                        } label: {
                            Text("0")
                        }
                        Button ("1") {
                            print("\(randomNumber)")
                            isCorrectNumber(1)
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(2)
                        } label: {
                            Text("2")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(3)
                        } label: {
                            Text("3")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(4)
                        } label: {
                            Text("4")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(5)
                        } label: {
                            Text("5")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(6)
                        } label: {
                            Text("6")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(7)
                        } label: {
                            Text("7")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(8)
                        } label: {
                            Text("8")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(9)
                        } label: {
                            Text("9")
                        }
                    }
                }.font(.title)
                HStack{
                    Group{
                        Button {
                            isCorrectNumber(0)
                        } label: {
                            Text("0")
                        }
                        Button ("1") {
                            print("\(randomNumber)")
                            isCorrectNumber(1)
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(2)
                        } label: {
                            Text("2")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(3)
                        } label: {
                            Text("3")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(4)
                        } label: {
                            Text("4")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(5)
                        } label: {
                            Text("5")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(6)
                        } label: {
                            Text("6")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(7)
                        } label: {
                            Text("7")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(8)
                        } label: {
                            Text("8")
                        }
                        Button {
                            print("\(randomNumber)")
                            isCorrectNumber(9)
                        } label: {
                            Text("9")
                        }
                    }
                }.font(.title)
            }
            Group {
                Spacer()
                Spacer()
                Spacer()
            }
            Button  {
                randomNumber = Int.random(in: 0...9)
            }label: {
                Text("새로운 게임하기")
            }
            Group {
                Spacer()
                Spacer()
                Spacer()
            }
        }
        .padding()
    }
    func isCorrectNumber(_ index: Int){
        if randomNumber == index {
            isCorrectName = "숫자를 맞췄습니다."
        }
        else {
            if index > randomNumber {
                isCorrectName = "숫자가 큽니다 낮춰보세요"
            }
            else if index < randomNumber {
                isCorrectName = "숫자가 작습니다 높여보세요"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
