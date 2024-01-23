//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Andrew Abotomey on 23/1/2024.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    Text("Hello, World!")
                        .font(.title)
                        .padding(.bottom)
                    Text(errorWrapper.error.localizedDescription)
                        .font(.headline)
                    Text(errorWrapper.guidance)
                        .font(.caption)
                        .padding(.top)
                    Spacer()
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(16)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Dismiss") {
                            dismiss()
                        }
                    }
                }
            }
        } else {
            NavigationView {
                VStack {
                    Text("Hello, World!")
                        .font(.title)
                        .padding(.bottom)
                    Text(errorWrapper.error.localizedDescription)
                        .font(.headline)
                    Text(errorWrapper.guidance)
                        .font(.caption)
                        .padding(.top)
                    Spacer()
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(16)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Dismiss") {
                            dismiss()
                        }
                    }
                }
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired,
                     guidance: "You can safely ignore this error.")
    }
    
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}
