import ctypes
import sys

lib = ctypes.cdll.LoadLibrary('cmake-build-wsl_release/libStrypes_task.so')

if __name__ == '__main__':
    if len(sys.argv) == 1:
        print('Please supply at least 1 test case.')
        sys.exit(1)
    else:
        test_cases = sys.argv[1:]

    for test_case in test_cases:
        with open('tests/' + test_case, 'r') as file:
            rows, cols = list(map(int, file.readline().rstrip().split(' ')))

            matrix = ((ctypes.c_char * cols) * rows)()
            for row in range(rows):
                matrix[row].value = bytes(''.join(file.readline().rstrip().split(' ')), 'utf-8')

            print(lib.longest_adjacent_sequence(rows, cols, matrix))
