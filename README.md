# dotnet-containers

An example showing how to setup a cross platform development with dotnet core.  This project can be run and debugged in :

* VSCode for mac / windows (linux should work as well)
* VisualStudio for mac
* VisualStudio for windows

More information about how this is setup can be found here:   https://engineering.icfolson.com/2018/12/10/cross-platform-d…-and-dotnet-core/

##  Visual Studio
At this point you can simply open up the solution file in Visual Studio (mac or windows) and press the debug button.  You do need to have docker installed and configured with linux container support.

## VSCode

Debugging in VSCode is a little more involved that Visual Studio, but not by much.  The instructions below are for a mac, but you can follow the same steps on windows using the appropriate scripts.  You will need to have docker installed and configured for linux containers.

1. Go to the `mac-cli` folder and run the `build-containers.sh` script.  This will build your containers locally.  Note, you will need to repeat this step if you change the Dockerfile.vscode.debug file.
2. Run the `start-containers.sh` script to start your container locally.  Note, if you were previously debugging in Visual Studio you will need to stop those containers by hand.  Both containers will try and bind to port 5002 which will cause a conflict.
3. Open up VSCode and start debugging.
