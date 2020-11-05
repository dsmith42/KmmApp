import SwiftUI
import shared

struct RocketLaunchRow: View {
  var rocketLaunch: RocketLaunch

  var body: some View {
    HStack() {
      VStack(alignment: .leading, spacing: 10.0) {
        Text("Launch name: \(rocketLaunch.missionName)")
        Text(launchText)
          .foregroundColor(launchColor)
        Text("Launch year: \(String(rocketLaunch.launchYear))")
      }
      Spacer()
    }
  }
}

extension RocketLaunchRow {
  private var launchText: String {
    if let isSuccess = rocketLaunch.launchSuccess {
      return isSuccess.boolValue ? "Successful" : "Unsuccessful"
    }
    return "No data"
  }

  private var launchColor: Color {
    if let isSuccess = rocketLaunch.launchSuccess {
      return isSuccess.boolValue ? Color.green : Color.red
    }
    return Color.gray
  }
}
