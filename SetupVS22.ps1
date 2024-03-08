# Bootstrap vcpkg submodule
git submodule update --init --recursive

.\vcpkg\bootstrap-vcpkg.bat

# Run CMake
if ( -not (Test-Path -Path 'build' -PathType Container) ) {
  mkdir build
}

$generator = '"Visual Studio 17 2022"'

$cmakeCommand = "cmake -B build -A x64 -G $generator -S ."

Invoke-Expression $cmakeCommand