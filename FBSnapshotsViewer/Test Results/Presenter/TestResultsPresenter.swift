//
//  TestResultsPresenter.swift
//  FBSnapshotsViewer
//
//  Created by Anton Domashnev on 02/03/2017.
//  Copyright © 2017 Anton Domashnev. All rights reserved.
//

import Cocoa

class TestResultsPresenter {
    var interactor: TestResultsInteractorInput?
    var wireframe: TestResultsWireframe?
    weak var userInterface: TestResultsUserInterface?
}

extension TestResultsPresenter: TestResultsModuleInterface {
    func updateUserInterface() {
        guard let testResults = interactor?.testResults else {
            return
        }
        userInterface?.show(testResults: testResults.map { TestResultDisplayInfo(testResult: $0) })
    }
}
