module Lexer where 

import Data.Char

data Expr = BTrue
          | BFalse
          | Num Int
          | Add Expr Expr
          | Sub Expr Expr
          | Mul Expr Expr
          | Max Expr Expr
          | Min Expr Expr
          | And Expr Expr
          | Or Expr Expr
          | Not Expr
          | Eq Expr Expr
          | Geq Expr Expr
          | If Expr Expr Expr
          | Var String
          | Lam String Ty Expr
          | App Expr Expr
          | Nil Ty
          | Cons Expr Expr
          | IsNil Expr
          | Head Expr
          | Tail Expr
          | SumList Expr
          | MultList Expr
          | ListMin Expr
          | ListMax Expr
          | GetByIndex Expr Expr
          | Concat Expr Expr
          deriving (Show, Eq, Ord)

data Ty = TBool
        | TNum
        | TList Ty
        | TFun Ty Ty
        | NoType
        deriving (Show, Eq, Ord)

data Token = TokenTrue
           | TokenFalse 
           | TokenNum Int
           | TokenAdd 
           | TokenSub
           | TokenMul
           | TokenAnd
           | TokenOr
           | TokenNot 
           | TokenEq
           | TokenGeq
           | TokenIf
           | TokenThen
           | TokenElse 
           | TokenVar String
           | TokenLam 
           | TokenArrow
           | TokenLBracket
           | TokenRBracket
           | TokenComma
           | TokenColon
           | TokenNil
           | TokenCons
           | TokenIsNil
           | TokenHead
           | TokenTail
           | TokenSumList
           | TokenMultList
           | TokenMin
           | TokenMax
           | TokenListMin
           | TokenListMax
           | TokenGetByIndex
           | TokenConcat
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':'+':cs) = TokenConcat : lexer cs
lexer ('+':cs) = TokenAdd : lexer cs
lexer ('\\':cs) = TokenLam : lexer cs 
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs
lexer ('-':cs) = TokenSub : lexer cs
lexer ('*':cs) = TokenMul : lexer cs
lexer ('>':'=':cs) = TokenGeq : lexer cs
lexer ('[':cs) = TokenLBracket : lexer cs
lexer (']':cs) = TokenRBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest 
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest
               ("or", rest) -> TokenOr : lexer rest
               ("not", rest) -> TokenNot : lexer rest
               ("isnil", rest) -> TokenIsNil : lexer rest
               ("head", rest) -> TokenHead : lexer rest
               ("tail", rest) -> TokenTail : lexer rest
               ("sumlist", rest) -> TokenSumList : lexer rest
               ("multlist", rest) -> TokenMultList : lexer rest
               ("max", rest) -> TokenMax : lexer rest
               ("min", rest) -> TokenMin : lexer rest
               ("listmin", rest) -> TokenListMin : lexer rest
               ("listmax", rest) -> TokenListMax : lexer rest
               ("get", rest) -> TokenGetByIndex : lexer rest
               (var, rest) -> TokenVar var : lexer rest

