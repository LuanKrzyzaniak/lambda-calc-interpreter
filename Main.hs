module Main where 

import Lexer 
import AST
import Parser 
import TypeChecker 
import Interpreter 

main = getContents >>= print . eval . typecheck . parser . lexer 
run = eval . typecheck . parser . lexer
