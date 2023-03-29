//
//  FaceView.swift
//  test
//
//  Created by fai Mogbel on 26/08/1444 AH.
//

import SwiftUI

struct FaceView: View {
    var body: some View {
        Image("face")
            .resizable()
                     .scaledToFit()
                     .frame(width: 60, height: 60)
                     .clipShape(Circle())
    }
}

struct FaceView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView()
    }
}
