//
//  MovieDetail.swift
//  MovieGallery-SwiftUI
//
//  Created by Abdul Sami Sultan on 20/09/2023.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack(alignment: .bottom) {
                Image(movie.thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(movie.title)
                            .foregroundColor(.white)
                            .bold()
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            VStack(alignment: .center,spacing: 15) {
                Text(movie.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineSpacing(14)
                
//                WatchButton(movie: movie)
                    .padding()
            }.padding(.all)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity, alignment: .topLeading)
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: moviesData.first!)
    }
}
