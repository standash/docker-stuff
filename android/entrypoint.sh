#!/bin/bash

adb start-server
`which emulator` -avd emulator1 -wipe-data -writable-system -no-window -memory 2048 -prop vm.heapSize=256
