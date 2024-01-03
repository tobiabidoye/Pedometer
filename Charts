import SwiftUI
import Charts
struct chart: View {
    let steps: [Step ]
    var body: some View {
        Chart{
            ForEach(steps){step in
                BarMark(x: .value("Date", step.date), y: .value("Count", step.count))
                    .foregroundStyle(isUnder10000(count: step.count) ? .red : .green)
                
            }
        }
    }
}
