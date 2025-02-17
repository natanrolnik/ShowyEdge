import SwiftUI

struct IndicatorView: View {
    @ObservedObject var userSettings = UserSettings.shared
    @ObservedObject var indicatorColors = IndicatorColors.shared

    var body: some View {
        GeometryReader { metrics in
            if self.userSettings.colorsLayoutOrientation == "horizontal" {
                HStack(spacing: 0) {
                    Rectangle().fill(self.indicatorColors.colors.0).frame(width: metrics.size.width / 3)
                    Rectangle().fill(self.indicatorColors.colors.1).frame(width: metrics.size.width / 3)
                    Rectangle().fill(self.indicatorColors.colors.2).frame(width: metrics.size.width / 3)
                }
            } else {
                VStack(spacing: 0) {
                    Rectangle().fill(self.indicatorColors.colors.0).frame(height: metrics.size.height / 3)
                    Rectangle().fill(self.indicatorColors.colors.1).frame(height: metrics.size.height / 3)
                    Rectangle().fill(self.indicatorColors.colors.2).frame(height: metrics.size.height / 3)
                }
            }
        }
    }
}

struct IndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorView()
            .previewLayout(.sizeThatFits)
    }
}
