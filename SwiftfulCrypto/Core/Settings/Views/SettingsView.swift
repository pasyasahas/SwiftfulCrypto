//
//  SettingsView.swift
//  SwiftfulCrypto
//
//  Created by Pasya Sahas on 11/7/24.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "http://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coingecoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/pasyasahas")!
    
    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .tint(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    private var swiftfulThinkingSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a course on youtube. It uses MVVM architecture, Combine, CoreData and SwiftUI.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding()
            Link("Reffer the course", destination: youtubeURL)
        } header: {
            Text("Swiftful Thinking")
        }
    }
    private var coinGeckoSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto currency data used in the app comes from the free API provided by Coingecko. Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding()
            Link("Visit CoinGecko", destination: coingecoURL)
        } header: {
            Text("Coingecko")
        }
    }
    
    private var developerSection: some View {
        Section {
            VStack(alignment: .leading) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Sahhas Reddy Pasya. It uses SwiftUI and is written in Swift. This project benifits from multi-threading, publisher-subscriber pattern and CoreData for persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding()
            Link("Visit portfolio", destination: personalURL)
        } header: {
            Text("Developer")
        }
    }
    
    private var applicationSection: some View {
        Section {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        } header: {
            Text("Application")
        }
    }
}
