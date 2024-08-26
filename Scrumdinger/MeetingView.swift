//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Kumar, Gaurav on 8/26/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total:15)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
           .accessibilityElement(children: .ignore)
           .accessibilityLabel("Time remanining")
           .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 14)
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action:{}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
