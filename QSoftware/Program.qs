namespace QSoftware {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Math;

    operation UseMatrix(matrix : Double[][], cities : String[]) : String[] {
        mutable nCities = new String[Length(matrix)]; // New Cities
        mutable isVisited = new Bool[Length(matrix)]; // Check Visited
        mutable cIndex = 0; // Current Index
        mutable distance = 1.0e300; // Best Distance

        for iCity in 0..Length(matrix)-1 { // Loop Through All Matrix Rows
            for jCity in 0..Length(matrix[iCity])-1 { // Loop Through Values of Matrix
                if (jCity != cIndex and not isVisited[jCity]) { // Avoid Self Loop
                    if (distance > matrix[cIndex][jCity]) { // Update Path
                        set distance = matrix[iCity][jCity]; // Store Shortest Path
                        set cIndex = jCity; // Set New Index
                    }
                }
            }
            set isVisited w/= cIndex <- true; // Mark as Visited
            set nCities w/= iCity <- $"{cities[cIndex]}"; // Store City Name
            set distance = 1.0e300; // Reset Distance
        }
        return nCities; // Return List of Nearest Cities
    }
}