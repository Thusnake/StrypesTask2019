#include "radio.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

typedef struct list {
    int32_t row;
    int32_t col;
    struct list *next;
} list;

int32_t rows, cols;
int32_t best_length = 0;

void breadth_first_traversal(int32_t row, int32_t col, char matrix[rows][cols], bool checked[rows][cols]) {
    list *head, *tail;

    head = malloc(sizeof(list));
    head->row = row;
    head->col = col;
    head->next = NULL;

    tail = head;

    checked[row][col] = true;

    int32_t total_length = 0;

    while(head != NULL) {
        char char_at_head = matrix[head->row][head->col];

        if (head->row > 0 && matrix[head->row-1][head->col] == char_at_head && !checked[head->row-1][head->col]) {
            list *new_entry = malloc(sizeof(list));
            new_entry->row = head->row-1;
            new_entry->col = head->col;
            new_entry->next = NULL;

            tail->next = new_entry;
            tail = new_entry;

            checked[head->row-1][head->col] = true;
        }

        if (head->row < rows-1 && matrix[head->row+1][head->col] == char_at_head && !checked[head->row+1][head->col]) {
            list *new_entry = malloc(sizeof(list));
            new_entry->row = head->row+1;
            new_entry->col = head->col;
            new_entry->next = NULL;

            tail->next = new_entry;
            tail = new_entry;

            checked[head->row+1][head->col] = true;
        }

        if (head->col > 0 && matrix[head->row][head->col-1] == char_at_head && !checked[head->row][head->col-1]) {
            list *new_entry = malloc(sizeof(list));
            new_entry->row = head->row;
            new_entry->col = head->col-1;
            new_entry->next = NULL;

            tail->next = new_entry;
            tail = new_entry;

            checked[head->row][head->col-1] = true;
        }

        if (head->col < cols-1 && matrix[head->row][head->col+1] == char_at_head && !checked[head->row][head->col+1]) {
            list *new_entry = malloc(sizeof(list));
            new_entry->row = head->row;
            new_entry->col = head->col+1;
            new_entry->next = NULL;

            tail->next = new_entry;
            tail = new_entry;

            checked[head->row][head->col+1] = true;
        }

        total_length++;

        list *next_head = head->next;
        free(head);
        head = next_head;
    }

    if (total_length > best_length)
        best_length = total_length;
}

int32_t longest_adjacent_sequence(int32_t r, int32_t c, char matrix[r][c]) {
    rows = r;
    cols = c;
    best_length = 0;

    // Initialize an array of zeros, equivalent shape to the input matrix.
    bool checked[rows][cols];
    for (int32_t row = 0; row < rows; row++)
        for (int32_t col = 0; col < cols; col++)
            checked[row][col] = false;

    for (int32_t row = 0; row < rows; row++) {
        for (int32_t col = 0; col < cols; col++) {
            if (checked[row][col] == 0) {
                breadth_first_traversal(row, col, matrix, checked);
            }
        }
    }

    return best_length;
}