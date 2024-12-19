

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 10)
                    .foregroundColor(Color.gray.opacity(0.3))

                RoundedRectangle(cornerRadius: 10)
                    .frame(width: progress * 200, height: 10) 
                    .foregroundColor(.orange)
            }
            .padding()
    }
}

