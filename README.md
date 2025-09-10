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