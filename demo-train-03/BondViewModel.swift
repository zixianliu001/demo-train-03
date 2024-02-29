//
//  BondViewModel.swift
//  demo-train-03
//
//  Created by 魏宏 on 2024/2/28.
//

import Foundation
class BondViewModel: ObservableObject {
    @Published var bondList = [Bond]()

    init() {
        loadData()
    }

    func loadData() {
        // 这里可以替换为实际的网络请求逻辑
        // 暂时使用模拟数据
        let mockData = BondResponse(
            errCode: "0",
            bondList: [
                Bond(
                    id: "50",
                    activeFlag: "0",
                    appId: "202cb962ac59075b964b07152d234b70",
                    bindFlag: "1",
                    bindTime: "2024-01-30 17:40:34",
                    create_time: "2024-01-31 11:18:42",
                    devId: "7CDFA19F019A0000",
                    devKey: "FF2E3CB18AA7D6B636F847F47DB8AD66",
                    devName: "yty",
                    update_time: "0001-01-01 00:00:00",
                    userId: "ebdfd93cfbaec3f74a85263c5f18faaf",
                    userOpenId: "o9L3X5eGQQ5---YPBiHKn6o5SyTY",
                    wxMsgFlag: "7"
                ),
                Bond(
                    id: "146",
                    activeFlag: "0",
                    appId: "202cb962ac59075b964b07152d234b70",
                    bindFlag: "1",
                    bindTime: "2024-01-24 16:45:19",
                    create_time: "2024-01-24 16:45:19",
                    devId: "F412FAC135400000",
                    devKey: "200BEFC07F48DC5E331D721F9EA0AC40",
                    devName: "ytuj",
                    update_time: "0001-01-01 00:00:00",
                    userId: "ebdfd93cfbaec3f74a85263c5f18faaf",
                    userOpenId: "o9L3X5eGQQ5---YPBiHKn6o5SyTY",
                    wxMsgFlag: "7"
                )
            ]
        )
        self.bondList = mockData.bondList
    }
    struct Bond: Codable, Identifiable {
        var id: String
        var activeFlag: String?
        var appId: String?
        var appNotify: String?
        var bindFlag: String?
        var bindTime: String?
        var create_by: String?
        var create_time: String?
        var devId: String?
        var devKey: String?
        var devName: String?
        var phone: String?
        var update_by: String?
        var update_time: String?
        var userId: String?
        var userOpenId: String?
        var wxMsgFlag: String?
    }

    // 定义顶层响应的结构体
    struct BondResponse: Codable {
        var errCode: String
        var bondList: [Bond]

    }
}
