#include "radio.h"
#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    if (argc == 1) {
        printf("Please supply at least 1 test case.\n");
        return 1;
    }

    for (int i = 1; i < argc; i++) {
        char file_dir[255];
        strcpy(file_dir, "../tests/");
        strcat(file_dir, argv[i]);
        FILE *file = fopen(file_dir, "r");

        int rows, cols;
        fscanf(file, "%d%d", &rows, &cols);

        char matrix[rows][cols];
        for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
                fscanf(file, " %c", &matrix[row][col]);
            }
        }

        printf("%d\n", longest_adjacent_sequence(rows, cols, matrix));

        fclose(file);
    }

}
