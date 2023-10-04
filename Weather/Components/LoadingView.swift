//
//  LoadingView.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
