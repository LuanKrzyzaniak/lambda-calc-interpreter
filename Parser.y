{
module Parser where 

import Lexer 
import AST

}

%name parser 
%tokentype { Token }
%error { parseError }

%left '+' '-'
%left '*'
%left "&&" "||"
%left TokenArrow

%token 
    num             { TokenNum $$ }
    true            { TokenTrue }
    false           { TokenFalse }
    '+'             { TokenPlus }
    '*'             { TokenTimes }
    "&&"            { TokenAnd }
    "||"            { TokenOr }
    '('             { TokenLParen }
    ')'             { TokenRParen }
    "\\"            { TokenLambda }
    ':'             { TokenColon }
    '.'             { TokenDot }
    "->"            { TokenArrow }
    '['             { TokenLColch }
    ']'             { TokenRColch }
    ','             { TokenComma }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }
    Num             { TokenTNum }
    Bool            { TokenTBool }
    var             { TokenVar $$ }

%% 

Exp     : num                               { Num $1 }
        | true                              { BTrue }
        | false                             { BFalse }
        | Exp '+' Exp                       { Add $1 $3 }
        | Exp '*' Exp                       { Times $1 $3 }
        | Exp "&&" Exp                      { And $1 $3 }
        | Exp "||" Exp                      { Or $1 $3 }
        | '(' Exp ')'                       { Paren $2 }
        | var                               { Var $1 }
        | "\\" var ':' Ty '.' Exp           { Lam $2 $4 $6 }
        | if Exp then Exp else Exp          { If $2 $4 $6 }
        | '[' ListElements ']'              { $2 }

Ty      : Num                               { TNum }
        | Bool                              { TBool }
        | Ty "->" Ty                        { TFun $1 $3 }
        | '[' Ty ']'                        { TList $2 }

ListElements    :                           { Nil }
                | Exp                       { Cons $1 Nil }
                | Exp ',' ListElements      { Cons $1 $3 }

{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}