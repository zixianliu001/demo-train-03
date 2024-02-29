//
//  RegisterSwift.swift
//  iknocker-ios2
//
//  Created by 魏宏 on 2024/2/22.
//

import SwiftUI

struct RegisterSwift: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var phoneNumber: String = ""
    @State private var isPhoneFocused: Bool = false
    @State private var isPasswordFocused: Bool = false
    @State private var islogin = false

    var body: some View {
        if islogin{
            LoginPageView()
        }else{
            VStack {
                Image("logo")
                    .resizable() // 使图片可以调整大小
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 50, alignment: .center)


                Text("小扣智家.登录")
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.gray)

                VStack {
                // 用户名输入框
                TextField("用户名", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
              
                // 密码输入框
                SecureField("密码", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
           
                // 确认密码输入框
                SecureField("确认密码", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
        

                // 手机号输入框
                TextField("手机号", text: $phoneNumber)
                    
                    
                    .keyboardType(.phonePad) // 设置键盘类型为电话键盘
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                } .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
      
                    .scaleEffect(isPhoneFocused ? 1.1 : 1) // 当聚焦时放大
                    .onTapGesture {
                        self.isPhoneFocused = true
                        self.isPasswordFocused = false
                                }.onTapGesture {
                                    // 点击其他区域时取消放大
                                    self.isPhoneFocused = false
                                    self.isPasswordFocused = false
                                    hideKeyboard()
                                }
                HStack {
                    Spacer()
                    Button("立即注册") {
                        // 执行注册逻辑，包括格式检查
                        registerUser()
                    }
                    .padding()
                    .frame(width: 120, height: 50)
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    
                    Spacer()
                    
                    Button("返回登录") {
                       ToLoginPage()
                    }
                    .padding()
                    .frame(width: 120, height: 50)
                    .font(.system(size: 18, weight: .regular, design: .default).italic())
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    Spacer()
                }

          

     

     
        }
        }

        
    }
    // 隐藏键盘
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    private func registerUser() {
        // 在这里添加注册逻辑，包括格式的验证
        // 验证用户名、密码、确认密码和手机号
    }
    private func ToLoginPage(){
        self.islogin=true
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterSwift()
    }
}
