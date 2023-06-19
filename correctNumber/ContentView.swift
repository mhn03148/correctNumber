//
//  ContentView.swift
//  correctNumber
//
//  Created by 주진형 on 2023/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var isCorrectName: String = "버튼을 눌러 주세요"
    @State var countNumber: Int = 0
    @State var randomNumber = Int.random(in: 0...9)
    @State var randomNumber1 = Int.random(in: 0...9)
    @State var randomNumber2 = Int.random(in: 0...9)
    @State var randomNumber3 = Int.random(in: 0...9)
    @State var isCorrectArray: [Int] = [0,0,0,0]
    @State var currentNumber: [Int] = [0,0,0,0]
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Text(isCorrectName)
            Spacer()
            Group {
                HStack {
                    Group {
                        ForEach (0..<10) { number in
                            Button {
                                isCorrectNumber(0,randomNumber,number)
                            } label: {
                                Text("\(number)")
                            }
                        }
                    }
                }.font(.title)
                HStack {
                    Group {
                        ForEach (0..<10) { number in
                            Button {
                                isCorrectNumber(1,randomNumber1,number)
                            } label: {
                                Text("\(number)")
                            }
                        }
                    }
                }.font(.title)
                HStack {
                    Group {
                        ForEach (0..<10) { number in
                            Button {
                                isCorrectNumber(2,randomNumber2,number)
                            } label: {
                                Text("\(number)")
                            }
                        }
                    }
                }.font(.title)
                HStack {
                    Group {
                        ForEach (0..<10) { number in
                            Button {
                                isCorrectNumber(3,randomNumber3,number)
                            } label: {
                                Text("\(number)")
                            }
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
                randomNumber1 = Int.random(in: 0...9)
                randomNumber2 = Int.random(in: 0...9)
                randomNumber3 = Int.random(in: 0...9)
                countNumber = 0
                isCorrectArray = [0,0,0,0]
                isCorrectName = "버튼을 놀러 주세요."
            }label: {
                Text("새로운 게임하기")
            }
            Text("\(randomNumber)\(randomNumber1)\(randomNumber2)\(randomNumber3)").foregroundColor(Color.white)
            
            Group {
                Text("현재 맞춘 개수 \(countNumber)개")
                Text("현재 당신의 숫자 \(currentNumber[0])\(currentNumber[1])\(currentNumber[2])\(currentNumber[3])")
                Spacer()
                Spacer()
                Spacer()
            }
        }
        .padding()
    }
    func isCorrectNumber(_ Case: Int, _ inputRandomNumber: Int, _ index: Int) {
        var number: Int = 0
        currentNumber[Case] = index
        if inputRandomNumber == index {
            isCorrectArray[Case] = 1
        }
        else {
            isCorrectArray[Case] = 0
        }
        for i in isCorrectArray {
            if i == 1 {
                number += 1
            }
        }
        countNumber = number
        if countNumber > 0{
            isCorrectName = "숫자를 맞췄습니다.\(countNumber)개 맞췄습니다."
        }
        else {
            isCorrectName = "한개도 맞추지 못했습니다."
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
