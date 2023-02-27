//
//  BloomLineChartView.swift
//  Charts
//
//  Created by Kurt Jacobs on 2022/04/01.
//

import Foundation
import CoreGraphics

open class BloomLineChartView: BarLineChartViewBase, LineChartDataProvider
{
    internal override func initialize()
    {
        super.initialize()

        renderer = BloomLineChartRenderer(dataProvider: self, animator: chartAnimator, viewPortHandler: viewPortHandler)
    }

    // MARK: - LineChartDataProvider

    open var lineData: LineChartData? { return data as? LineChartData }
}
