module TypeChecker where 

import Lexer 
import AST

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof ctx BTrue = Just TBool 
typeof ctx BFalse = Just TBool 
typeof ctx (Num n) = Just TNum 
typeof ctx Nil = Just (TList TNum)  -- Assuming empty list of numbers by default
typeof ctx (Paren e) = typeof ctx e
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum 
                           (Just (TList TNum), Just (TList TNum)) -> Just (TList TNum)
                           _                      -> Nothing
typeof ctx (Times e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum 
                           _                      -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool 
                           _                        -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool 
                           _                        -> Nothing
typeof ctx (If e e1 e2) = case typeof ctx e of 
                            Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                                            (Just t1, Just t2) | t1 == t2  -> Just t1 
                                                               | otherwise -> Nothing 
                                            _ -> Nothing  
                            _ -> Nothing 
typeof ctx (Var x) = lookup x ctx 
typeof ctx (Lam x tp b) = let ctx' = (x,tp) : ctx 
                            in case (typeof ctx' b) of 
                                 Just tr -> Just (TFun tp tr)
                                 _ -> Nothing 
typeof ctx (App e1 e2) = case typeof ctx e1 of 
                           Just (TFun tp tr) -> case typeof ctx e2 of 
                                                  Just t2 | t2 == tp -> Just tr 
                                                  _ -> Nothing 
                           _ -> Nothing 
typeof ctx (Cons h t) = case (typeof ctx h, typeof ctx t) of 
                           (Just th, Just (TList tt)) | th == tt -> Just (TList th) 
                           _ -> Nothing
typeof ctx (Head e) = case (typeof ctx e) of
                         (Just (TList t)) -> Just t
                         _                -> Nothing
typeof ctx (Tail e) = case (typeof ctx e) of
                         (Just (TList t)) -> Just (TList t)
                         _                -> Nothing
typeof ctx (Concat t1 t2) = case (typeof ctx t1, typeof ctx t2) of
                              (Just (TList tt1), Just (TList tt2)) -> Just (TList tt1)
                              _                                    -> Nothing

typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                Just _ -> e 
                _      -> error "banana e diferente de laranja po"
