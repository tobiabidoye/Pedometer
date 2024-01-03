import SwiftUI

enum DisplayType: Int, Identifiable, CaseIterable {
    case list
    case chart

    var id: Int {
        rawValue
    }
}

extension DisplayType {
    var icon: String {
        switch self {
        case .list:
            return "list.bullet"
        case .chart:
            return "chart.bar"
        }
    }
}

struct ContentView: View {
    @State private var healthStore = HealthStore() // Assuming HealthStore is a defined type
    @State private var displayType: DisplayType = .list

    private var steps: [Step] {
        healthStore.steps.sorted { lhs, rhs in
            lhs.date > rhs.date
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                if let step = steps.first {
                    TodayStepReview(step: step)
                }
                Picker("Selection", selection: $displayType) {
                    ForEach(DisplayType.allCases) { displayType in
                        Image(systemName: displayType.icon).tag(displayType)
                    }
                }
                .pickerStyle(.segmented)
                switch displayType{
                case.list:
                    StepListView(steps: Array(steps.dropFirst()))
                case.chart:
                    chart(steps:steps )
                }
               
            }
            .task {
                await healthStore.requestAuthorization()
                do {
                    try await healthStore.calculateSteps()
                } catch {
                    print(error)
                }
            }
            .padding()
            .navigationTitle("LETS GO!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

