module AST where

data Expr = Num Int 
          | BTrue 
          | BFalse 
          | Add Expr Expr
          | Times Expr Expr 
          | And Expr Expr 
          | Or Expr Expr 
          | Paren Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr 
          | Cons Expr Expr
          | Nil
          deriving Show 

data Ty = TNum 
        | TBool 
        | TFun Ty Ty
        | TList Ty 
        deriving (Show, Eq) 