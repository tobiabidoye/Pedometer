//
//  TodayStepReview.swift
//  pedometer
//
//  Created by Tobi Abidoye on 1/1/24.
//

import SwiftUI

struct TodayStepReview: View {
    let step: Step;
    var body: some View{
        VStack{
            Text("\(step.count)")
                .font(.largeTitle)
            
        }.frame(maxWidth: .infinity, maxHeight: 150)
            .background(.orange)
            .clipShape(RoundedRectangle(cornerRadius: 16.0,style : .continuous))
            .overlay(alignment: .topLeading){
                HStack{
                    Image(systemName: "flame")
                        .foregroundStyle(.red)
                    Text("Steps")
                }.padding()
            }
            .overlay(alignment: .bottomTrailing){
                Text(step.date.formatted(date: .abbreviated,time:.omitted))
                    .font(.caption)
                    .padding()
                
                
            }

        
        
        
        
        
    }
}

