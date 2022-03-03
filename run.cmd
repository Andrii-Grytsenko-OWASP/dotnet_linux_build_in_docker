SET PRJ_HOME=%cd%
IF "%1" == "Release" OR "%1" == "Debug" (
  SET PRJ_TARGET=%1
) ELSE (
  SET PRJ_TARGET=Release
)
SET PRJ_TARGET_SWITCH=-c %PRJ_TARGET%
docker run --name example-server -v %PRJ_HOME%\bin:/app/bin --rm example-dotnet %PRJ_TARGET_SWITCH%
