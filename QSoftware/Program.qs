namespace QSoftware {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Arrays;

    operation UseMatrix(matrix : Double[][]) : String[] {
        mutable cities = new String[Length(matrix)];
        mutable index = 0;
        mutable distance = 0.0;

        for i in 0..Length(matrix)-1 {
            for j in 0..Length(matrix[i])-1 {
                if (i == j) {
                } elif (matrix[i][j] < distance or distance == 0.0) {
                    set distance = matrix[i][j];
                    set index = j;
                }
            }
            set cities w/= index <- $"{distance}";
        }

        return cities;
    }
}
