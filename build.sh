#!/bin/sh

set -o pipefail &&
time xcodebuild clean test \
    -project ConsistencyManager.xcodeproj \
    -scheme ConsistencyManager \
    -sdk iphonesimulator9.3 \
    -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' \
    -destination 'platform=iOS Simulator,name=iPhone 6,OS=8.4' \
| xcpretty

