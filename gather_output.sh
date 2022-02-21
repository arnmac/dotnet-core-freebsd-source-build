#!/bin/sh

rm -rf output
mkdir output
find runtime/artifacts/packages/Release -name '*.nupkg' -exec cp '{}' output/ \;
find aspnetcore/artifacts/packages/Release -name '*.nupkg' -exec cp '{}' output/ \;
cp installer/artifacts/packages/Release/Shipping/* output/

tar --create --file dotnet-sdk-freebsd-x64-full.tar -C output .