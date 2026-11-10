import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

// your singletons should always have Singleton as the type
Singleton {
    id: root

    property string time

    Process {
        id: dateProc

        command: ["date"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.time = this.text
        }

    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: dateProc.running = true
    }

}
