module Interpreter where 

import AST
import Lexer 
import Parser 

isValue :: Expr -> Bool 
isValue BTrue  = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True 
isValue Nil = True
isValue (Cons h t) = isValue h && isValue t
isValue _ = False 

subst :: String -> Expr -> Expr -> Expr 
subst x s y@(Var v) = if x == v then 
                        s 
                      else 
                        y 
subst x s (Num n) = (Num n)
subst x s BTrue = BTrue 
subst x s BFalse = BFalse
subst x s Nil = Nil
subst x s (Lam y tp t1) = Lam y tp (subst x s t1)
subst x s (App t1 t2) = App (subst x s t1) (subst x s t2) 
subst x s (Add t1 t2) = Add (subst x s t1) (subst x s t2) 
subst x s (Times t1 t2) = Times (subst x s t1) (subst x s t2)
subst x s (Concat t1 t2) = Concat (subst x s t1) (subst x s t2)
subst x s (And t1 t2) = And (subst x s t1) (subst x s t2) 
subst x s (Or t1 t2) = Or (subst x s t1) (subst x s t2)
subst x s (Paren e) = Paren (subst x s e)
subst x s (If c t f) = If (subst x s c) (subst x s t) (subst x s f)
subst x s (Cons h t) = Cons (subst x s h) (subst x s t)

step :: Expr -> Expr 
step (Add Nil Nil) = Nil
step (Add (Cons (Num x) xs) (Cons (Num y) ys)) =
  Cons (Num (x + y)) (Add xs ys)
step (Add (Cons _ _) Nil) =
  error "xiu, perdeu no argumento"
step (Add Nil (Cons _ _)) =
  error "xiu, perdeu no argumento"
step (And Nil Nil) = Nil
step (And (Cons BTrue xs) (Cons BTrue ys)) = Cons BTrue (And xs ys)
step (And (Cons BTrue xs) (Cons BFalse ys)) = Cons BFalse (And xs ys)
step (And (Cons BFalse xs) (Cons _ ys)) = Cons BFalse (And xs ys)
step (And (Cons _ _) Nil) =
  error "xiu, perdeu no argumento"
step (And Nil (Cons _ _)) =
  error "xiu, perdeu no argumento"
step (Or Nil Nil) = Nil
step (Or (Cons BTrue xs) (Cons _ ys)) = Cons BTrue (Or xs ys)
step (Or (Cons BFalse xs) (Cons BFalse ys)) = Cons BFalse (Or xs ys)
step (Or (Cons BFalse xs) (Cons BTrue ys)) = Cons BTrue (Or xs ys)
step (Or (Cons _ _) Nil) =
  error "xiu, perdeu no argumento"
step (Or Nil (Cons _ _)) =
  error "xiu, perdeu no argumento"
step (Add h1 h2)
  | not (isValue h1) = Add (step h1) h2
  | not (isValue h2) = Add h1 (step h2)
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n1) e2) = let e2' = step e2
                           in Add (Num n1) e2' 
step (Add e1 e2) = Add (step e1) e2 
step (Times (Num n1) (Num n2)) = Num (n1 * n2)
step (Times (Num n1) e2) = let e2' = step e2
                           in Times (Num n1) e2' 
step (Times e1 e2) = Times (step e1) e2 
step (And BFalse e2) = BFalse 
step (And BTrue e2) = e2 
step (And e1 e2) = And (step e1) e2 
step (Or BFalse e2) = e2 
step (Or BTrue e2) = BTrue
step (Or e1 e2) = Or (step e1) e2
step (If BTrue t _) = t
step (If BFalse _ f) = f
step (If c t f) = If (step c) t f
step (App (Lam x tp e1) e2) = if (isValue e2) then 
                                subst x e2 e1 
                              else 
                                App (Lam x tp e1) (step e2)
step (App (Paren e) e2) = App e e2
step (Paren e) = step e
step (Cons h t)
  | not (isValue h) = Cons (step h) t
  | not (isValue t) = Cons h (step t)
step (Head Nil) = Nil
step (Head (Cons h t)) = h
step (Head e)
  | not (isValue e) = Head (step e)
step (Tail Nil) = Nil
step (Tail (Cons h t)) = t
step (Tail e)
  | not (isValue e) = Tail (step e)
step (Concat (Cons h1 t1) (Cons h2 t2))
  | isValue (Cons h1 t1) && isValue (Cons h2 t2) = Cons h1 (Concat t1 (Cons h2 t2))
step (Concat (Cons h t) (Num n))
  | isValue (Cons h t) = Cons h (Concat t (Num n))
step (Concat e1 e2)
  | not (isValue e1) = Concat (step e1) e2
  | not (isValue e2) = Concat e1 (step e2)
step (Concat Nil e2) = case e2 of
                        Cons _ _  -> e2
                        Num n     -> Cons (Num n) Nil
                        _         -> Concat Nil (step e2)
step (Concat e1 Nil)
  | isValue (e1) = e1
  | otherwise = Concat (step e1) Nil
step (Concat (Cons h1 t1) e2)
  | isValue (Cons h1 t1) && isValue (e2) = Cons h1 (Concat t1 e2)

eval :: Expr -> Expr
eval e = if isValue e then 
           e
         else 
           eval (step e)
