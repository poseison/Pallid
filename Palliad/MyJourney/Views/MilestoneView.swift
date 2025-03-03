//
//  MilestoneView.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import SwiftUI

struct MilestoneView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let pt1 = CGPoint(x: 0.69008 * rect.width, y: 0.06349 * rect.height)
        let pt2 = CGPoint(x: 0.92161 * rect.width, y: 0.1998 * rect.height)
        let pt3 = CGPoint(x: 0.33153 * rect.width, y: 0.28901 * rect.height)
        let pt4 = CGPoint(x: 0.7795 * rect.width, y: 0.54456 * rect.height)
        let pt5 = CGPoint(x: 0.31803 * rect.width, y: 0.70251 * rect.height)
        let pt6 = CGPoint(x: 0.73555 * rect.width, y: 0.89275 * rect.height)

        path.addEllipse(
            in: CGRect(x: pt1.x - 8, y: pt1.y - 8, width: 20, height: 20))
        path.addEllipse(
            in: CGRect(x: pt2.x - 8, y: pt2.y - 8, width: 20, height: 20))

        path.addEllipse(
            in: CGRect(x: pt3.x - 8, y: pt3.y - 8, width: 20, height: 20))
        path.addEllipse(
            in: CGRect(x: pt4.x - 8, y: pt4.y - 8, width: 20, height: 20))
        path.addEllipse(
            in: CGRect(x: pt4.x - 8, y: pt4.y - 8, width: 20, height: 20))

        path.addEllipse(
            in: CGRect(x: pt5.x - 8, y: pt5.y - 8, width: 20, height: 20))

        path.addEllipse(
            in: CGRect(x: pt6.x - 8, y: pt6.y - 8, width: 20, height: 20))

        return path

    }
}

#Preview {
    MilestoneView()
}
