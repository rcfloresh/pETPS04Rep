//
//  colorDeFondo.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

struct colorDeFondo: View {
    var body: some View {
        Rectangle()
            .fill(.colorDeFondo)
            .ignoresSafeArea()
    }
}

#Preview {
    colorDeFondo()
}
