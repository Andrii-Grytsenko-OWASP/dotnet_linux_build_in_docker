# dotnet_linux_build_in_docker
Build .NET application for Linux (in Docker)

For building .NET application for Linux:
1. put these files into your project folder (folder where your .sln file exists)
2. build docker image by running build.cmd
3. build you application by running run.cmd with one required parameter and one optional parameter<br>
    the first parameter is the full path to you application folder, ended with "\\"<br>
    the second parameter can be Release or Debug. If ommited Release will be used<br>

Builded application will be stored in bin folder

