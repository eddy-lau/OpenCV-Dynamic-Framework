#!/bin/bash
rm -rf opencv2.xcframework
cat opencv2.xcframework.zip.* > combined.zip
unzip combined.zip
rm combined.zip
