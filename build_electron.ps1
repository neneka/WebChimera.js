$ELECTRON_VERSION = "20.0.2"

$Env:YARN_ENABLE_IMMUTABLE_INSTALLS = "false"
$Env:npm_config_wcjs_runtime = "electron"
$Env:npm_config_wcjs_runtime_version = $ELECTRON_VERSION.Replace("v", "") -replace "`t|`n|`r",""
$Env:npm_config_wcjs_arch = "x64"

yarn install
node rebuild.js
