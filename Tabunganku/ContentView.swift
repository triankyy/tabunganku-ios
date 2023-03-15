//
//  ContentView.swift
//  Tabunganku
//
//  Created by Kyy on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Divider()
                    let color: Array<Color> = [.blue, .red, .yellow, .cyan, .green, .orange, .indigo, .teal, .purple]
                    ForEach(0..<10) { item in
                        HStack(spacing: 20) {
                            if let randomColor = color.randomElement() {
                                RoundedRectangle(cornerRadius: 50, style: .circular)
                                    .fill(randomColor)
                                    .frame(width: 60, height: 60)
                                    .overlay {
                                        Text("T")
                                            .foregroundColor(.white)
                                    }
                            }
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Tabunganku")
                                    .font(.subheadline)
                                    .bold()
                                    .lineLimit(1)
                                
                                Text("Rp. 200.000")
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                                
                                Divider()
                                    .padding([.top])
                            }
                        }
                        .padding([.top, .bottom], 8)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("Tabunganku")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: {}) {
                        Text("Edit")
                    }
                }
                ToolbarItem {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
