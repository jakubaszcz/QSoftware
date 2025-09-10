<<<<<<< HEAD
# QSoftware – Quantum Optimization Demo

This project demonstrates how to combine **Q#** and **C#** using the Microsoft Quantum Development Kit.  
It shows how a **C# host program** can call **quantum operations written in Q#** (example: a small optimization problem using Grover’s algorithm).

---

## 📦 Prerequisites

- [.NET SDK 6.0+ and 8.0+](https://dotnet.microsoft.com/en-us/download)  
  (The host project uses .NET 8, while Q# libraries may target .NET 6)
- Git
- (Optional but recommended) [Visual Studio Code](https://code.visualstudio.com/) with the **C# Dev Kit** extension

Check your installation:
```bash
dotnet --list-sdks

# Clone the repository:

git clone https://github.com/yourusername/QSoftware.git
cd QSoftware

# Restore NuGet dependencies:
dotnet restore

# Build the entire solution (Q# + C#):
dotnet build QSoftware.sln

# Or build only the host program:
dotnet build QSoftware.Host/QSoftware.Host.csproj

# Run

dotnet run --project QSoftware.Host

```
=======
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
>>>>>>> c36fe235f1ecd108171737001bc764d5422ce5e8
