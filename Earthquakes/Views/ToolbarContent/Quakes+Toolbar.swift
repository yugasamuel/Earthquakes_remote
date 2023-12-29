/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The toolbar for the Quakes view.
*/

import SwiftUI

extension Quakes {

    @ToolbarContentBuilder
    func toolbarContent() -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            if editMode == .active {
                SelectButton(mode: $selectMode) {
                    if selectMode.isActive {
                        selection = []
                    } else {
                        selection = Set(provider.quakes.map { $0.code })
                    }
                }
            }
        }
        ToolbarItem(placement: .navigationBarTrailing) {
            EditButton(editMode: $editMode) {
                if editMode.isEditing {
                    selectMode = .inactive
                } else {
                    selection.removeAll()
                    editMode = .active
                    selectMode = .active
                }
            }
        }
        ToolbarItemGroup(placement: .bottomBar) {
            RefreshButton {
                Task {
                    await fetchQuakes()
                }
            }
            Spacer()
            ToolbarStatus(
                isLoading: isLoading,
                lastUpdated: lastUpdated,
                quakesCount: provider.quakes.count
            )
            Spacer()
            if editMode == .active {
                DeleteButton {
                    deleteQuakes(for: selection)
                }
                .disabled(isLoading || selection.isEmpty)
            }
        }
    }
}
