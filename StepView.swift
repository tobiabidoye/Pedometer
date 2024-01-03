//
//  stepview.swift
//  pedometer
//
//  Created by Tobi Abidoye on 12/29/23.
//
import SwiftUI
import Foundation
struct StepListView: View{
    let steps: [Step]
    
    var body: some View{
        List (steps){step in
            HStack{
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundStyle(isUnder10000(count: step.count) ? .red: .green)
                Text("\(step.count)")
                Spacer()
                Text(step.date.formatted(date: .abbreviated, time: .omitted))
            }
            
        }.listStyle(.plain)
    }
}

#Preview{
    StepListView(steps: [] )
}
