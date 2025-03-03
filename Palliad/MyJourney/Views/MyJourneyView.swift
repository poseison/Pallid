//
//  MyJourneyView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import SwiftData
import SwiftUI

struct MyJourneyView: View {
    @State private var showPopover = false
    @State private var tappedPoint: CGPoint? = nil
    @State private var isChatVisible = false
    @State var currentMilestone: Int = 0

    private let personImage = Image(systemName: "face.smiling")
    private let personImageCordinate = [
        [0.2, 0.04], [0.43, 0.175], [-0.15, 0.25], [0.3, 0.52], [-0.17, 0.68],
    ]
    var body: some View {

        ZStack {
            if isChatVisible {
                ChatView().zIndex(1.0).background(
                    Color.gray.opacity(0.6)
                ).frame(maxHeight: 400)
            }
            MilestonePath().stroke(.yellow.opacity(0.6), lineWidth: 20).overlay(
                GeometryReader { geometry in
                    ZStack {
                        MilestoneView().fill(.purple).onTapGesture { location in
                            print("judst tapped \(location)")
                            showPopover = true
                            tappedPoint = location

                        }
                        .popover(
                            isPresented: $showPopover,
                            attachmentAnchor: .rect(
                                .rect(
                                    CGRect(
                                        x: tappedPoint?.x ?? 0,
                                        y: tappedPoint?.y ?? 0, width: 0,
                                        height: 0))),
                            content: {
                                MilestonePopupVIew(
                                    isPresented: $showPopover,
                                    currentMilestone: $currentMilestone
                                )
                                .padding()
                                .frame(minWidth: 200, maxHeight: 300)
                                .background(Color(hex: 0xded988))
                                .presentationCompactAdaptation(.popover)

                            }
                        ).transition(.slide)
                        .ignoresSafeArea()
                        VStack {
                            Text(personImage).font(.largeTitle).background(
                                Circle().fill(Color.yellow)
                            ).offset(
                                x: geometry.size.width
                                    * personImageCordinate[currentMilestone][0],
                                y: geometry.size.height
                                    * personImageCordinate[currentMilestone][1]
                            ).animation(
                                .easeInOut(duration: 2.0),
                                value: currentMilestone)
                            Spacer()
                        }.allowsHitTesting(false)
                    }
                }

            ).frame(width: 200)
                .background(
                    Image("ForestBackground").resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity))
            BearView(showView: $isChatVisible)

        }.ignoresSafeArea()
            .navigationBarHidden(true)

    }
}

#Preview {
    MyJourneyView()
}
