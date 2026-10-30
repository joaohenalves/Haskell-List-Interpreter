module Interpreter where 

import Lexer 

isValue :: Expr -> Bool
isValue BTrue = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue (Nil _) = True
isValue (Cons e1 e2) = isValue e1 && isValue e2
isValue _ = False 

-- Função: subst
-- Parâmetros: Variável (Parâmetro formal), 
--             Expressão (Parâmetro atual), 
--             Corpo da função
-- Retorno: Corpo da função substituído
---------------------------------------------------       
subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Add e1 e2) = (Add (subst x n e1) (subst x n e2))
subst x n (Sub e1 e2) = (Sub (subst x n e1) (subst x n e2))
subst x n (Mul e1 e2) = (Mul (subst x n e1) (subst x n e2))
subst x n (And e1 e2) = (And (subst x n e1) (subst x n e2))
subst x n (Or e1 e2) = (Or (subst x n e1) (subst x n e2))
subst x n (Not e) = (Not (subst x n e))
subst x n (Eq e1 e2) = (Eq (subst x n e1) (subst x n e2))
subst x n (Geq e1 e2) = (Geq (subst x n e1) (subst x n e2))
subst x n (If e e1 e2) = (If (subst x n e) (subst x n e1) (subst x n e2))
subst x n (Lam v t b) = (Lam v t (subst x n b))
subst x n (App e1 e2) = (App (subst x n e1) (subst x n e2))
subst _ _ e = e

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num nv) e2) = let e2' = step e2 
                           in Add (Num nv) e2' 
step (Add e1 e2) = Add (step e1) e2
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num nv) e2) = let e2' = step e2 
                           in Sub (Num nv) e2' 
step (Sub e1 e2) = Sub (step e1) e2
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num nv) e2) = let e2' = step e2 
                           in Mul (Num nv) e2'
step (Mul e1 e2) = Mul (step e1) e2
step (Min (Num n1) (Num n2)) = If (Not (Geq (Num n1) (Num n2))) (Num n1) (Num n2)
step (Min (Num n1) e2) = Min (Num n1) (step e2)
step (Min e1 e2) = Min (step e1) e2
step (Max (Num n1) (Num n2)) = If (Geq (Num n1) (Num n2)) (Num n1) (Num n2)
step (Max (Num n1) e2) = Max (Num n1) (step e2)
step (Max e1 e2) = Max (step e1) e2
step (And BFalse e) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2 
step (Or BTrue e) = BTrue
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2
step (Not BTrue) = BFalse
step (Not BFalse) = BTrue
step (Not e) = Not (step e) 
step (Eq e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then 
                                               BTrue 
                                             else 
                                               BFalse
                | isValue e1 = Eq e1 (step e2)
                | otherwise = Eq (step e1) e2
step (Geq e1 e2) | isValue e1 && isValue e2 = if (e1 >= e2) then
                                                BTrue
                                              else
                                                BFalse
                 | isValue e1 = Geq e1 (step e2)
                 | otherwise = Geq (step e1) e2
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2 
step (If e e1 e2) = If (step e) e1 e2 
step (App (Lam v t b) e) | isValue e = subst v e b 
                         | otherwise = (App (Lam v t b) (step e))
step (App e1 e2) = App (step e1) e2 
step (Cons e1 e2) | isValue e1 && isValue e2 = Cons e1 e2
                  | isValue e1 = Cons e1 (step e2)
                  | otherwise = Cons (step e1) e2
step (IsNil (Nil _)) = BTrue
step (IsNil (Cons _ _)) = BFalse
step (IsNil e) = IsNil (step e)
step (Head (Cons e1 _)) | isValue e1 = e1
step (Head e) = Head (step e)
step (Tail (Cons _ e2)) | isValue e2 = e2
step (Tail e) = Tail (step e)
step (SumList e) | not (isValue e) = SumList (step e)
step (SumList (Cons e1 (Nil _))) = e1
step (SumList (Cons e1 e2)) = Add e1 (SumList e2)
step (MultList e) | not (isValue e) = MultList (step e)
step (MultList (Cons e1 (Nil _))) = e1
step (MultList (Cons e1 e2)) = Mul e1 (MultList e2)
step (ListMin e) | not (isValue e) = ListMin (step e)
step (ListMin (Cons e1 (Nil _))) = e1
step (ListMin (Cons e1 e2)) = Min e1 (ListMin e2)
step (ListMax e) | not (isValue e) = ListMax (step e)
step (ListMax (Cons e1 (Nil _))) = e1
step (ListMax (Cons e1 e2)) = Max e1 (ListMax e2)
step (GetByIndex e1 e2) | not (isValue e1) = GetByIndex (step e1) e2
                        | not (isValue e2) = GetByIndex e1 (step e2)
step (GetByIndex _ (Nil _)) = error "Índice inválido!"
step (GetByIndex (Num n) (Cons e2 e3)) | n == 0 = e2
                                       | n > 0 = GetByIndex (Num (n - 1)) e3
step (Concat (Nil _) e2) = e2
step (Concat e1 (Nil _)) = e1
step (Concat (Cons e1 e2) e3) = Cons e1 (Concat e2 e3)

eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)
