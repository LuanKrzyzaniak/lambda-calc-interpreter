module Lexer where 

import Data.Char 

data Token = TokenNum Int 
           | TokenTrue 
           | TokenFalse
           | TokenPlus 
           | TokenTimes 
           | TokenAnd 
           | TokenOr 
           | TokenLParen 
           | TokenRParen 
           | TokenLambda
           | TokenColon
           | TokenDot
           | TokenArrow
           | TokenLColch
           | TokenRColch
           | TokenComma
           | TokenTNum
           | TokenTBool
           | TokenVar String
           | TokenIf
           | TokenThen
           | TokenElse
           deriving Show 

lexer :: String -> [Token]
lexer [] = []
lexer ('+':cs) = TokenPlus : lexer cs 
lexer ('*':cs) = TokenTimes : lexer cs 
lexer ('&':'&':cs) = TokenAnd : lexer cs 
lexer ('|':'|':cs) = TokenOr : lexer cs  
lexer ('(':cs) = TokenLParen : lexer cs 
lexer (')':cs) = TokenRParen : lexer cs
lexer ('\\':cs) = TokenLambda : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('.':cs) = TokenDot : lexer cs
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer ('[':cs) = TokenLColch : lexer cs
lexer (']':cs) = TokenRColch : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKw (c:cs)
lexer _ = error "Lexical error"

lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKw cs = case span isAlpha cs of 
             ("true", rest) -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("Num", rest) -> TokenTNum : lexer rest
             ("Bool", rest) -> TokenTBool : lexer rest
             ("if", rest) -> TokenIf : lexer rest
             ("then", rest) -> TokenThen : lexer rest
             ("else", rest) -> TokenElse : lexer rest
             (var, rest) -> TokenVar var: lexer rest