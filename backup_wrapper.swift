import os
import Foundation
import UserNotifications

let task = Process()
task.launchPath = "/bin/bash"
task.arguments = ["/Users/can/.restic/backup.sh"]

do {
    try task.run()
} catch {
    os_log("Something went wrong.")
}

task.waitUntilExit()
