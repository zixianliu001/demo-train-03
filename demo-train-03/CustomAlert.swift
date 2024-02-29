//
//  CustomAlert.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import SwiftUI

struct CustomAlert: View {
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("生成一次性密码")
                    .font(.system(size: 13))
                    .bold()
                    .foregroundColor(Color.black)
               

                Spacer()

                Button("取消") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .padding(.trailing)
                .font(.system(size: 10))
                .frame( height: 10, alignment: .leading)
            }
            .padding(.top, 10)
            .padding(.bottom, 10)

            HStack {
                TextField("请输入管理员密码", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .frame(height: 40)
         

                Button(action: {
                    self.isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                        .foregroundColor(.gray)
                }
       
 
            }
            .padding(.horizontal, 16)

            Spacer().frame(height: 20)

            Button("生成一次性密码") {
                // 确认按钮的动作
            }
            .padding()
            .frame(width:150,height: 30)
            .font(.system(size: 9))
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
           
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlert()
    }
}
