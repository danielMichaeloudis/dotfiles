import "../widgets"
import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Widgets
import QtQuick.Layouts
import Quickshell.Wayland
import Quickshell.Hyprland

Scope {
    id: root

    Variants {
        model: Quickshell.screens

        delegate: Component {
            PanelWindow {
                id: root
                required property var modelData
                property real margin: 5

                screen: modelData
                implicitHeight: 45
                // AARRGGBB
                color: "#A6191919"

                anchors {
                    bottom: true
                    left: true
                    right: true
                }

                RowLayout {
                anchors.margins: 8

                Repeater {
                    model: ScriptModel {
        values: Hyprland.workspaces.values.filter(w => w.monitor?.name && w.monitor.name == root.screen.name)
    }

                    Text {
                        property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1 && w.monitor.name == root.screen.name)
                        property bool isActive: Hyprland.focusedWorkspace?.id === ws.id
                        text: ws.id
                        color: isActive ? "#0db9d7" : (ws ? "#7aa2f7" : "#444b6a")
                        font { pixelSize: 32; bold: true }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("hl.dsp.focus({workspace = " + ws.id + "})")
                        }
                    }
                }

                Item { Layout.fillWidth: true }
                }

             }
        }
    }
}
