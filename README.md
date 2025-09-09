# QSoftware — Projet Q#

## Installation

### Installer .NET SDK 8.0


### Put this into your .bashrc or .zshrc
```bash
export PATH="$HOME/.dotnet:$PATH"
export DOTNET_ROOT="$HOME/.dotnet"

```

### Installer project SDK and build the project
```bash
sudo dnf install -y dotnet-sdk-8.0 --skip-unavailable
export PATH="$HOME/.dotnet:$PATH"
export DOTNET_ROOT="$HOME/.dotnet"

dotnet new -i Microsoft.Quantum.ProjectTemplates

./dotnet-install.sh --channel 8.0 --install-dir "$HOME/.dotnet"

dotnet --list-sdks

dotnet --list-runtimes

dotnet build

```

### Run
Once the build done, ```bash dotnet run``` to run the project.
