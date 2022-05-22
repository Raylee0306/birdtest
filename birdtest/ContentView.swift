//
//  ContentView.swift
//  birdtest
//
//  Created by RAY on 2022/5/22.
//

import SwiftUI

struct ContentView: View {
    var birddata :[[String]] = [
        ["0","1","2","3","4","5","6"],
        ["1","0","0","4","0","0","0"],
        ["2","唐白鷺","黃嘴白鷺","4",
         "全身白色。枕部有飾羽；肩部、下頸及胸披簑羽。夏季喙黃色；腳黑色，趾黃色；眼先裸出部藍色。冬季飾羽和簑羽均脫落；喙黑褐色，下喙基部黃色；跗蹠和趾黃綠色；眼先裸出部黃色。",
         "https://taieol.tw/pages/72657",
         "https://macaulaylibrary.org/zh/asset/368396971"]
    
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach (1..<birddata.count) { index in
                    NavigationLink(birddata[index][1]){
                        birdmod(birdnumber: birddata[index][0], birdname: birddata[index][1], birdname_: birddata[index][2], birdinfo: birddata[index][4], birdimg:birddata[index][3], birdlink1: birddata[index][5], birdlink2: birddata[index][6])
                    }
                }
            }   .background(Color(UIColor.secondarySystemBackground))
                .navigationTitle("bird")
        }
        
    }
}
