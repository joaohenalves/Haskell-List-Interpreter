{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError }

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  num           { TokenNum $$ }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  '*'           { TokenMul }
  and           { TokenAnd }
  or            { TokenOr }
  not           { TokenNot }
  "=="          { TokenEq }
  ">="          { TokenGeq }
  if            { TokenIf }
  then          { TokenThen }
  else          { TokenElse }
  '['           { TokenLBracket }
  ']'           { TokenRBracket }
  ','           { TokenComma }
  ':'           { TokenColon }
  isnil         { TokenIsNil }
  head          { TokenHead }
  tail          { TokenTail }
  sumlist       { TokenSumList }
  multlist      { TokenMultList }
  min           { TokenMin }
  max           { TokenMax }
  listmin       { TokenListMin }
  listmax       { TokenListMax }
  get           { TokenGetByIndex }
  "++"          { TokenConcat }

%nonassoc if then else
%left and or
%left get head tail min max listmin listmax sumlist multlist isnil
%right ':' "++" not
%nonassoc "==" ">="
%left '+' '-'
%left '*'


%% 

Exp : true                        { BTrue }
    | false                       { BFalse }
    | num                         { Num $1 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp '*' Exp                 { Mul $1 $3 }
    | Exp and Exp                 { And $1 $3 }
    | Exp or Exp                  { Or $1 $3 }
    | not Exp                     { Not $2 }
    | Exp "==" Exp                { Eq $1 $3 }
    | Exp ">=" Exp                { Geq $1 $3 }
    | if Exp then Exp else Exp    { If $2 $4 $6 }
    | '[' ']'                     { Nil NoType }
    | '[' ListItems ']'           { $2 }
    | Exp ':' Exp                 { Cons $1 $3 }
    | isnil Exp                   { IsNil $2 }
    | head Exp                    { Head $2 }
    | tail Exp                    { Tail $2 }
    | sumlist Exp                 { SumList $2 }
    | multlist Exp                { MultList $2 }
    | min Exp Exp                 { Min $2 $3 }
    | max Exp Exp                 { Max $2 $3 }
    | listmin Exp                 { ListMin $2 }
    | listmax Exp                 { ListMax $2 }
    | get Exp Exp                 { GetByIndex $2 $3 }
    | Exp "++" Exp                { Concat $1 $3 }

ListItems : Exp                   { Cons $1 (Nil NoType) }
          | Exp ',' ListItems     { Cons $1 $3 }

{
parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
}