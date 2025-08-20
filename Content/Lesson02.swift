//
//  ContentView.swift
//  IOSBootcamp-SwiftUILayout-2
//
//  Created by umitalbayrak on 20.08.2025.
//

import SwiftUI

//MARK: View
struct ContentView: View {
    var body: some View {
        VStack {
            //MARK: Header
            HeaderView()
            //MARK:  Name and descripton...
            CustomTitleText (text: Constants.Texts.name, font: .title, fontWeight: .bold)
            CustomTitleText(text: Constants.Texts.description, font: .footnote, fontWeight: .light)
            Spacer( minLength: 20)
            //MARK:  Message and Follow Button
            HStack {
                CustomButton(title: Constants.Texts.message, backgroundColor: Color(.systemGray6), systemImage: "message.fill" , action: {} )
                CustomButton(title: Constants.Texts.follow, backgroundColor: Color(.systemGray6), systemImage: "person.fill.badge.plus" , action: {} )
            }
            Spacer( minLength: 20)
            //MARK: Like Following and Follow Card
            HStack {
                CustomCard(title: Constants.Texts.followeersName, value: Constants.Texts.value, color: .black)
                CustomCard(title: Constants.Texts.followeersUpName, value: Constants.Texts.value, color: .black)
                CustomCard(title: Constants.Texts.like, value: Constants.Texts.value, color: .black)
            }
            Spacer( minLength: 20)
            //MARK: About
            CustomTitleText(text: Constants.Texts.aboutMe, font: .headline, fontWeight: .bold)
            ScrollView {
                CustomTitleText(text: Constants.Texts.abotMeText, font: .headline, fontWeight: .bold)
            }
            
        }.padding()
    
    }
}

#Preview {
    ContentView()
}




//Header View
struct HeaderView: View {
var body: some View {
    ZStack{
        Circle()
            .fill(Color(.systemGray6))
            .frame(width: 150, height: 150)
            .overlay(
                Circle(
                ).stroke(.black, lineWidth: 2) // kenarlık
            )
        Image(systemName: "person")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundStyle(.black)
    }
    }
}

// Text-Label
struct CustomTitleText: View {
    let text: String
    let font: Font
    let fontWeight: Font.Weight
    
    var body: some View {
        Text(text)
            .font(font)
        
            .fontWeight(fontWeight)
    }
}

// Custom-Card
struct CustomCard: View {
    let title: String
    let value: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 8) {
            Text(value)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(color)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity , maxHeight: 40)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}

// Custom-Button
struct CustomButton: View {
    let title: String
    let backgroundColor: Color
    let systemImage: String?
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let systemImage = systemImage {
                    Image(systemName: systemImage)
                        .font(.headline)
                        .foregroundStyle(.black)
                }
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.black)
            }
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(12)
            .shadow(radius: 3)
        }
    }
}


// Constant-Text
struct Constants {
    struct Texts {
        static let name = "Ümit Albayrak"
        static let description = "Mobile Application Develepor at TGS"
        static let followeersName = "Takipçi Sayısı"
        static let followeersUpName = "Takip Edilen"
        static let like = "Beğeni"
        static let value = "400"
        static let aboutMe = "Hakkımda"
        static let abotMeText = "Merhaba, ben Ümit Albayrak. Mobil uygulama geliştirme alanında tutkuyla çalışan bir yazılım geliştiricisiyim. Flutter ile MVVM, Stacked, Provider ve GetX gibi modern durum yönetimi mimarilerini, Dart dilini, Firebase, Supabase ve Git versiyon kontrol sistemlerini kullanarak yenilikçi ve kullanıcı odaklı uygulamalar geliştiriyorum. Aynı zamanda, iOS platformunda Swift dilini, UIKit ve SwiftUI çerçeveleriyle birlikte etkin bir şekilde kullanarak native iOS uygulamaları üretiyorum. Deneyimim, hem Flutter hem de iOS platformlarında kullanıcı dostu, estetik ve yüksek performanslı uygulamalar tasarlamamı sağlıyor."
        static let follow = "Takip Et"
        static let message  = "Mesaj Gönder"
    }
}
