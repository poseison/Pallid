//
//  MilestonePath.swift
//  Palliad
//
//  Created by Charilaos Laliotis on 10/2/25.
//

import SwiftUI

struct MilestonePath: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5 * width, y: 0))
        path.addCurve(
            to: CGPoint(x: 0.58462 * width, y: 0.05278 * height),
            control1: CGPoint(x: 0.5 * width, y: 0.023 * height),
            control2: CGPoint(x: 0.53469 * width, y: 0.04272 * height))
        path.addCurve(
            to: CGPoint(x: 0.69008 * width, y: 0.06349 * height),
            control1: CGPoint(x: 0.61731 * width, y: 0.05937 * height),
            control2: CGPoint(x: 0.65423 * width, y: 0.06037 * height))
        path.addCurve(
            to: CGPoint(x: 0.80156 * width, y: 0.07704 * height),
            control1: CGPoint(x: 0.72816 * width, y: 0.0668 * height),
            control2: CGPoint(x: 0.76586 * width, y: 0.07095 * height))
        path.addCurve(
            to: CGPoint(x: 0.9477 * width, y: 0.12808 * height),
            control1: CGPoint(x: 0.8633 * width, y: 0.08759 * height),
            control2: CGPoint(x: 0.91983 * width, y: 0.10469 * height))
        path.addCurve(
            to: CGPoint(x: 0.92161 * width, y: 0.1998 * height),
            control1: CGPoint(x: 0.97557 * width, y: 0.15146 * height),
            control2: CGPoint(x: 0.96924 * width, y: 0.18156 * height))
        path.addCurve(
            to: CGPoint(x: 0.79915 * width, y: 0.21992 * height),
            control1: CGPoint(x: 0.88973 * width, y: 0.212 * height),
            control2: CGPoint(x: 0.84409 * width, y: 0.21768 * height))
        path.addCurve(
            to: CGPoint(x: 0.66344 * width, y: 0.2228 * height),
            control1: CGPoint(x: 0.75421 * width, y: 0.22215 * height),
            control2: CGPoint(x: 0.70861 * width, y: 0.22137 * height))
        path.addCurve(
            to: CGPoint(x: 0.42142 * width, y: 0.25456 * height),
            control1: CGPoint(x: 0.57747 * width, y: 0.22554 * height),
            control2: CGPoint(x: 0.49335 * width, y: 0.23652 * height))
        path.addCurve(
            to: CGPoint(x: 0.33153 * width, y: 0.28901 * height),
            control1: CGPoint(x: 0.38551 * width, y: 0.26357 * height),
            control2: CGPoint(x: 0.35191 * width, y: 0.27464 * height))
        path.addCurve(
            to: CGPoint(x: 0.32563 * width, y: 0.33599 * height),
            control1: CGPoint(x: 0.31115 * width, y: 0.30338 * height),
            control2: CGPoint(x: 0.30577 * width, y: 0.32151 * height))
        path.addCurve(
            to: CGPoint(x: 0.49516 * width, y: 0.37951 * height),
            control1: CGPoint(x: 0.35764 * width, y: 0.35932 * height),
            control2: CGPoint(x: 0.43728 * width, y: 0.36501 * height))
        path.addCurve(
            to: CGPoint(x: 0.5253 * width, y: 0.39149 * height),
            control1: CGPoint(x: 0.50748 * width, y: 0.38259 * height),
            control2: CGPoint(x: 0.51942 * width, y: 0.38635 * height))
        path.addCurve(
            to: CGPoint(x: 0.51077 * width, y: 0.41607 * height),
            control1: CGPoint(x: 0.53463 * width, y: 0.39962 * height),
            control2: CGPoint(x: 0.52625 * width, y: 0.40942 * height))
        path.addCurve(
            to: CGPoint(x: 0.32161 * width, y: 0.46867 * height),
            control1: CGPoint(x: 0.45897 * width, y: 0.43835 * height),
            control2: CGPoint(x: 0.35882 * width, y: 0.44033 * height))
        path.addCurve(
            to: CGPoint(x: 0.37658 * width, y: 0.51087 * height),
            control1: CGPoint(x: 0.30082 * width, y: 0.48528 * height),
            control2: CGPoint(x: 0.33702 * width, y: 0.50303 * height))
        path.addCurve(
            to: CGPoint(x: 0.62739 * width, y: 0.52487 * height),
            control1: CGPoint(x: 0.45272 * width, y: 0.52681 * height),
            control2: CGPoint(x: 0.54375 * width, y: 0.52179 * height))
        path.addCurve(
            to: CGPoint(x: 0.7795 * width, y: 0.54456 * height),
            control1: CGPoint(x: 0.68123 * width, y: 0.52678 * height),
            control2: CGPoint(x: 0.73541 * width, y: 0.53243 * height))
        path.addCurve(
            to: CGPoint(x: 0.72723 * width, y: 0.69585 * height),
            control1: CGPoint(x: 0.92892 * width, y: 0.58455 * height),
            control2: CGPoint(x: 0.89496 * width, y: 0.66978 * height))
        path.addCurve(
            to: CGPoint(x: 0.31803 * width, y: 0.70251 * height),
            control1: CGPoint(x: 0.59552 * width, y: 0.71633 * height),
            control2: CGPoint(x: 0.45468 * width, y: 0.70085 * height))
        path.addCurve(
            to: CGPoint(x: 0.16083 * width, y: 0.71386 * height),
            control1: CGPoint(x: 0.26504 * width, y: 0.70315 * height),
            control2: CGPoint(x: 0.20994 * width, y: 0.70601 * height))
        path.addCurve(
            to: CGPoint(x: 0.04419 * width, y: 0.75774 * height),
            control1: CGPoint(x: 0.10881 * width, y: 0.72219 * height),
            control2: CGPoint(x: 0.06215 * width, y: 0.73745 * height))
        path.addCurve(
            to: CGPoint(x: 0.0421 * width, y: 0.79674 * height),
            control1: CGPoint(x: 0.03312 * width, y: 0.77023 * height),
            control2: CGPoint(x: 0.03351 * width, y: 0.78397 * height))
        path.addCurve(
            to: CGPoint(x: 0.08 * width, y: 0.82275 * height),
            control1: CGPoint(x: 0.04865 * width, y: 0.80648 * height),
            control2: CGPoint(x: 0.06035 * width, y: 0.816 * height))
        path.addCurve(
            to: CGPoint(x: 0.17456 * width, y: 0.83704 * height),
            control1: CGPoint(x: 0.10547 * width, y: 0.8315 * height),
            control2: CGPoint(x: 0.14081 * width, y: 0.83456 * height))
        path.addCurve(
            to: CGPoint(x: 0.37561 * width, y: 0.84867 * height),
            control1: CGPoint(x: 0.24113 * width, y: 0.84193 * height),
            control2: CGPoint(x: 0.30823 * width, y: 0.84581 * height))
        path.addCurve(
            to: CGPoint(x: 0.57467 * width, y: 0.85657 * height),
            control1: CGPoint(x: 0.44299 * width, y: 0.85153 * height),
            control2: CGPoint(x: 0.50936 * width, y: 0.85156 * height))
        path.addCurve(
            to: CGPoint(x: 0.64622 * width, y: 0.86547 * height),
            control1: CGPoint(x: 0.59934 * width, y: 0.85846 * height),
            control2: CGPoint(x: 0.62362 * width, y: 0.86124 * height))
        path.addCurve(
            to: CGPoint(x: 0.73555 * width, y: 0.89275 * height),
            control1: CGPoint(x: 0.68074 * width, y: 0.87194 * height),
            control2: CGPoint(x: 0.71058 * width, y: 0.88164 * height))
        path.addCurve(
            to: CGPoint(x: 0.76011 * width, y: 0.91911 * height),
            control1: CGPoint(x: 0.75222 * width, y: 0.90016 * height),
            control2: CGPoint(x: 0.76764 * width, y: 0.90979 * height))
        path.addCurve(
            to: CGPoint(x: 0.73301 * width, y: 0.93099 * height),
            control1: CGPoint(x: 0.75596 * width, y: 0.92423 * height),
            control2: CGPoint(x: 0.74526 * width, y: 0.92831 * height))
        path.addCurve(
            to: CGPoint(x: 0.69325 * width, y: 0.93648 * height),
            control1: CGPoint(x: 0.72076 * width, y: 0.93367 * height),
            control2: CGPoint(x: 0.70694 * width, y: 0.93512 * height))
        path.addCurve(
            to: CGPoint(x: 0.52789 * width, y: 0.96324 * height),
            control1: CGPoint(x: 0.62948 * width, y: 0.94278 * height),
            control2: CGPoint(x: 0.57603 * width, y: 0.94482 * height))
        path.addCurve(
            to: CGPoint(x: 0.50001 * width, y: 0.98646 * height),
            control1: CGPoint(x: 0.5107 * width, y: 0.96982 * height),
            control2: CGPoint(x: 0.50267 * width, y: 0.97707 * height))
        path.addCurve(
            to: CGPoint(x: 0.50001 * width, y: 0.99658 * height),
            control1: CGPoint(x: 0.49906 * width, y: 0.9898 * height),
            control2: CGPoint(x: 0.50005 * width, y: 0.99322 * height))
        return path
    }
}
