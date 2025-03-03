//
//  ARViewContainer.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import RealityKit
import SwiftUI

struct ARViewContainer: UIViewRepresentable {
    let modelName: String

    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)

        arView.environment.background = .color(.clear)

        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {
        // Remove any existing anchor entities from the scene
        uiView.scene.anchors.removeAll()

        // Load the model from the app's asset catalog
        let modelEntity = try! ModelEntity.load(named: modelName + ".usdz")

        // Create an anchor entity and add the model to it
        let anchorEntity = AnchorEntity()
        anchorEntity.addChild(modelEntity)

        modelEntity.scale.x = 1.5
        modelEntity.scale.y = 1.5
        modelEntity.scale.z = 1.5

        // Set the position of the anchor entity to 1 meter in front of the camera
        anchorEntity.position = [0, -0.3, -1]

        // Add the anchor entity to the scene
        uiView.scene.addAnchor(anchorEntity)

        modelEntity.availableAnimations.forEach {
            modelEntity.playAnimation($0.repeat())
        }
    }
}
