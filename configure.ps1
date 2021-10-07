Write-Output "build: Building project ...";

dmd src/gmacro.d src/simplergmacro.d -O

Write-Output "build: done.";