//
//  MilestonePopupVIew.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 11/2/25.
//

import SwiftUI

struct MilestonePopupVIew: View {
    @StateObject var viewModel = MilestonePopupViewModel()

    @Binding var isPresented: Bool

    @State var isChecked1 = false
    @State var isChecked2 = false
    @State var isChecked3 = false
    @State var isChecked4 = false
    @State var isChecked5 = false
    @Binding var currentMilestone: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 1.0) {
            Text("Milestone Title: #Date").bold()
            Toggle(isOn: $isChecked1) {
                // 4. Add a label for the Toggle
                Text("Task1:Description").font(.title3)
            }.toggleStyle(CheckboxToggleStyle())
                .onChange(of: isChecked1) {
                    checkAlltoggles()
                }
            Toggle(isOn: $isChecked2) {
                // 4. Add a label for the Toggle
                Text("Task2:Description").font(.title3)
            }.toggleStyle(CheckboxToggleStyle()).onChange(of: isChecked2) {
                checkAlltoggles()
            }
            Toggle(isOn: $isChecked3) {
                // 4. Add a label for the Toggle
                Text("Task3:Description").font(.title3)
            }.toggleStyle(CheckboxToggleStyle())
                .onChange(of: isChecked3) {
                    checkAlltoggles()
                }
            Toggle(isOn: $isChecked4) {
                // 4. Add a label for the Toggle
                Text("Task4:Description").font(.title3)
            }.toggleStyle(CheckboxToggleStyle())
                .onChange(of: isChecked4) {
                    checkAlltoggles()
                }

        }
    }
    func checkAlltoggles() {
        guard self.currentMilestone <= 4 else {
            return
        }

        if isChecked1 && isChecked2 && isChecked3 && isChecked4 {
            self.currentMilestone += 1
            self.isPresented.toggle()
        }
    }
}

#Preview {
    MilestonePopupVIew(
        isPresented: .constant(true), currentMilestone: .constant(1))
}
