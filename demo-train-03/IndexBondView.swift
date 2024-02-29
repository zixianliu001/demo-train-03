import SwiftUI

struct IndexBondView: View {
    @StateObject private var viewModel = BondViewModel()

    var body: some View {
        VStack {
            Text("已绑定设备")
                .font(.system(size: 12))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal,10)
            ScrollView {  // 使用 ScrollView + ForEach 代替 List
                     ForEach(viewModel.bondList, id: \.id) { item in
                         NavigationLink(destination: HomeView(devId: item.devId ?? "")) {
                             HStack {
                                 Image("lock_image")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(height: 40)
                                     .padding(.leading, 10)
                                 Text(item.devName ?? "Unknown device")
                                     .foregroundColor(.black)
                                     .font(.system(size: 12))
                              
                                 Spacer()
                                 Image("right_brackets")
                                     .resizable()
                                     .scaledToFit()
                                     .frame(height: 15)
                                     .padding(.leading, 10)
                             }
                             .padding(.horizontal)  // 根据需要调整水平内边距
                             .frame(maxWidth: .infinity, alignment: .leading)  // 确保 HStack 填充整个宽度并左对齐
                         }
                     }
                 }
                 .frame(maxWidth: .infinity)  // 确保 ScrollView 填充整个宽度
             }

    


        
    }


    struct LoginPageView_Previews: PreviewProvider {
        static var previews: some View {
            IndexBondView()
        }
}
}



