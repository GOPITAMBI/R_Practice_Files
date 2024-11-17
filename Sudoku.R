library(sudoku)
set.seed(872413)
task <- generateSudoku(Nblank = 50, print.it = T)
solveSudoku(task)
