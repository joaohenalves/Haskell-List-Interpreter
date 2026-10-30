{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,199) ([8416,65417,257,0,0,0,0,33214,1024,0,0,0,0,33664,65060,7175,61732,57407,39200,511,18695,4092,18488,32738,16832,65298,3587,63634,28703,50320,33023,9347,2046,9244,16369,8416,65417,1793,64585,14351,57928,49279,37887,2047,3184,8196,25472,32,65409,65319,64527,63807,127,16583,512,1592,4098,12736,32784,36352,129,28676,1036,32800,12399,256,16384,0,0,0,57088,66,14338,518,14352,57928,49279,4673,1023,37390,8184,36976,65476,33664,65060,7175,61732,57407,35104,511,18695,4092,18488,32738,36352,129,28676,1036,32800,3,0,28,0,6368,16392,50944,64,2,0,0,1,0,8,0,37390,8184,0,0,33664,65060,57351,2072,64,16583,512,1592,4098,0,0,48640,137,3588,63634,32799,8303,256,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ListItems","true","false","num","'+'","'-'","'*'","and","or","not","\"==\"","\">=\"","if","then","else","'['","']'","','","':'","isnil","head","tail","sumlist","multlist","min","max","listmin","listmax","get","\"++\"","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (24) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (26) = happyShift action_11
action_0 (27) = happyShift action_12
action_0 (28) = happyShift action_13
action_0 (29) = happyShift action_14
action_0 (30) = happyShift action_15
action_0 (31) = happyShift action_16
action_0 (32) = happyShift action_17
action_0 (33) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (9) = happyShift action_34
action_3 (10) = happyShift action_35
action_3 (11) = happyShift action_36
action_3 (12) = happyShift action_37
action_3 (13) = happyShift action_38
action_3 (15) = happyShift action_39
action_3 (16) = happyShift action_40
action_3 (23) = happyShift action_41
action_3 (34) = happyShift action_42
action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (24) = happyShift action_9
action_6 (25) = happyShift action_10
action_6 (26) = happyShift action_11
action_6 (27) = happyShift action_12
action_6 (28) = happyShift action_13
action_6 (29) = happyShift action_14
action_6 (30) = happyShift action_15
action_6 (31) = happyShift action_16
action_6 (32) = happyShift action_17
action_6 (33) = happyShift action_18
action_6 (4) = happyGoto action_33
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (14) = happyShift action_6
action_7 (17) = happyShift action_7
action_7 (20) = happyShift action_8
action_7 (24) = happyShift action_9
action_7 (25) = happyShift action_10
action_7 (26) = happyShift action_11
action_7 (27) = happyShift action_12
action_7 (28) = happyShift action_13
action_7 (29) = happyShift action_14
action_7 (30) = happyShift action_15
action_7 (31) = happyShift action_16
action_7 (32) = happyShift action_17
action_7 (33) = happyShift action_18
action_7 (4) = happyGoto action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (6) = happyShift action_2
action_8 (7) = happyShift action_4
action_8 (8) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (17) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (21) = happyShift action_31
action_8 (24) = happyShift action_9
action_8 (25) = happyShift action_10
action_8 (26) = happyShift action_11
action_8 (27) = happyShift action_12
action_8 (28) = happyShift action_13
action_8 (29) = happyShift action_14
action_8 (30) = happyShift action_15
action_8 (31) = happyShift action_16
action_8 (32) = happyShift action_17
action_8 (33) = happyShift action_18
action_8 (4) = happyGoto action_29
action_8 (5) = happyGoto action_30
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (24) = happyShift action_9
action_9 (25) = happyShift action_10
action_9 (26) = happyShift action_11
action_9 (27) = happyShift action_12
action_9 (28) = happyShift action_13
action_9 (29) = happyShift action_14
action_9 (30) = happyShift action_15
action_9 (31) = happyShift action_16
action_9 (32) = happyShift action_17
action_9 (33) = happyShift action_18
action_9 (4) = happyGoto action_28
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (17) = happyShift action_7
action_10 (20) = happyShift action_8
action_10 (24) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (26) = happyShift action_11
action_10 (27) = happyShift action_12
action_10 (28) = happyShift action_13
action_10 (29) = happyShift action_14
action_10 (30) = happyShift action_15
action_10 (31) = happyShift action_16
action_10 (32) = happyShift action_17
action_10 (33) = happyShift action_18
action_10 (4) = happyGoto action_27
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (24) = happyShift action_9
action_11 (25) = happyShift action_10
action_11 (26) = happyShift action_11
action_11 (27) = happyShift action_12
action_11 (28) = happyShift action_13
action_11 (29) = happyShift action_14
action_11 (30) = happyShift action_15
action_11 (31) = happyShift action_16
action_11 (32) = happyShift action_17
action_11 (33) = happyShift action_18
action_11 (4) = happyGoto action_26
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (17) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (24) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (26) = happyShift action_11
action_12 (27) = happyShift action_12
action_12 (28) = happyShift action_13
action_12 (29) = happyShift action_14
action_12 (30) = happyShift action_15
action_12 (31) = happyShift action_16
action_12 (32) = happyShift action_17
action_12 (33) = happyShift action_18
action_12 (4) = happyGoto action_25
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_4
action_13 (8) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (17) = happyShift action_7
action_13 (20) = happyShift action_8
action_13 (24) = happyShift action_9
action_13 (25) = happyShift action_10
action_13 (26) = happyShift action_11
action_13 (27) = happyShift action_12
action_13 (28) = happyShift action_13
action_13 (29) = happyShift action_14
action_13 (30) = happyShift action_15
action_13 (31) = happyShift action_16
action_13 (32) = happyShift action_17
action_13 (33) = happyShift action_18
action_13 (4) = happyGoto action_24
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (17) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (24) = happyShift action_9
action_14 (25) = happyShift action_10
action_14 (26) = happyShift action_11
action_14 (27) = happyShift action_12
action_14 (28) = happyShift action_13
action_14 (29) = happyShift action_14
action_14 (30) = happyShift action_15
action_14 (31) = happyShift action_16
action_14 (32) = happyShift action_17
action_14 (33) = happyShift action_18
action_14 (4) = happyGoto action_23
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (17) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (24) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (26) = happyShift action_11
action_15 (27) = happyShift action_12
action_15 (28) = happyShift action_13
action_15 (29) = happyShift action_14
action_15 (30) = happyShift action_15
action_15 (31) = happyShift action_16
action_15 (32) = happyShift action_17
action_15 (33) = happyShift action_18
action_15 (4) = happyGoto action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (8) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (17) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (24) = happyShift action_9
action_16 (25) = happyShift action_10
action_16 (26) = happyShift action_11
action_16 (27) = happyShift action_12
action_16 (28) = happyShift action_13
action_16 (29) = happyShift action_14
action_16 (30) = happyShift action_15
action_16 (31) = happyShift action_16
action_16 (32) = happyShift action_17
action_16 (33) = happyShift action_18
action_16 (4) = happyGoto action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (17) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (24) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (26) = happyShift action_11
action_17 (27) = happyShift action_12
action_17 (28) = happyShift action_13
action_17 (29) = happyShift action_14
action_17 (30) = happyShift action_15
action_17 (31) = happyShift action_16
action_17 (32) = happyShift action_17
action_17 (33) = happyShift action_18
action_17 (4) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (24) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (26) = happyShift action_11
action_18 (27) = happyShift action_12
action_18 (28) = happyShift action_13
action_18 (29) = happyShift action_14
action_18 (30) = happyShift action_15
action_18 (31) = happyShift action_16
action_18 (32) = happyShift action_17
action_18 (33) = happyShift action_18
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_34
action_19 (10) = happyShift action_35
action_19 (11) = happyShift action_36
action_19 (12) = happyShift action_37
action_19 (13) = happyShift action_38
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_39
action_19 (16) = happyShift action_40
action_19 (17) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (23) = happyShift action_41
action_19 (24) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (26) = happyShift action_11
action_19 (27) = happyShift action_12
action_19 (28) = happyShift action_13
action_19 (29) = happyShift action_14
action_19 (30) = happyShift action_15
action_19 (31) = happyShift action_16
action_19 (32) = happyShift action_17
action_19 (33) = happyShift action_18
action_19 (34) = happyShift action_42
action_19 (4) = happyGoto action_57
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_34
action_20 (10) = happyShift action_35
action_20 (11) = happyShift action_36
action_20 (15) = happyShift action_39
action_20 (16) = happyShift action_40
action_20 (23) = happyShift action_41
action_20 (34) = happyShift action_42
action_20 _ = happyReduce_24

action_21 (9) = happyShift action_34
action_21 (10) = happyShift action_35
action_21 (11) = happyShift action_36
action_21 (15) = happyShift action_39
action_21 (16) = happyShift action_40
action_21 (23) = happyShift action_41
action_21 (34) = happyShift action_42
action_21 _ = happyReduce_23

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_34
action_22 (10) = happyShift action_35
action_22 (11) = happyShift action_36
action_22 (12) = happyShift action_37
action_22 (13) = happyShift action_38
action_22 (14) = happyShift action_6
action_22 (15) = happyShift action_39
action_22 (16) = happyShift action_40
action_22 (17) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (23) = happyShift action_41
action_22 (24) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (26) = happyShift action_11
action_22 (27) = happyShift action_12
action_22 (28) = happyShift action_13
action_22 (29) = happyShift action_14
action_22 (30) = happyShift action_15
action_22 (31) = happyShift action_16
action_22 (32) = happyShift action_17
action_22 (33) = happyShift action_18
action_22 (34) = happyShift action_42
action_22 (4) = happyGoto action_56
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_34
action_23 (10) = happyShift action_35
action_23 (11) = happyShift action_36
action_23 (12) = happyShift action_37
action_23 (13) = happyShift action_38
action_23 (14) = happyShift action_6
action_23 (15) = happyShift action_39
action_23 (16) = happyShift action_40
action_23 (17) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (23) = happyShift action_41
action_23 (24) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (26) = happyShift action_11
action_23 (27) = happyShift action_12
action_23 (28) = happyShift action_13
action_23 (29) = happyShift action_14
action_23 (30) = happyShift action_15
action_23 (31) = happyShift action_16
action_23 (32) = happyShift action_17
action_23 (33) = happyShift action_18
action_23 (34) = happyShift action_42
action_23 (4) = happyGoto action_55
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (9) = happyShift action_34
action_24 (10) = happyShift action_35
action_24 (11) = happyShift action_36
action_24 (15) = happyShift action_39
action_24 (16) = happyShift action_40
action_24 (23) = happyShift action_41
action_24 (34) = happyShift action_42
action_24 _ = happyReduce_20

action_25 (9) = happyShift action_34
action_25 (10) = happyShift action_35
action_25 (11) = happyShift action_36
action_25 (15) = happyShift action_39
action_25 (16) = happyShift action_40
action_25 (23) = happyShift action_41
action_25 (34) = happyShift action_42
action_25 _ = happyReduce_19

action_26 (9) = happyShift action_34
action_26 (10) = happyShift action_35
action_26 (11) = happyShift action_36
action_26 (15) = happyShift action_39
action_26 (16) = happyShift action_40
action_26 (23) = happyShift action_41
action_26 (34) = happyShift action_42
action_26 _ = happyReduce_18

action_27 (9) = happyShift action_34
action_27 (10) = happyShift action_35
action_27 (11) = happyShift action_36
action_27 (15) = happyShift action_39
action_27 (16) = happyShift action_40
action_27 (23) = happyShift action_41
action_27 (34) = happyShift action_42
action_27 _ = happyReduce_17

action_28 (9) = happyShift action_34
action_28 (10) = happyShift action_35
action_28 (11) = happyShift action_36
action_28 (15) = happyShift action_39
action_28 (16) = happyShift action_40
action_28 (23) = happyShift action_41
action_28 (34) = happyShift action_42
action_28 _ = happyReduce_16

action_29 (9) = happyShift action_34
action_29 (10) = happyShift action_35
action_29 (11) = happyShift action_36
action_29 (12) = happyShift action_37
action_29 (13) = happyShift action_38
action_29 (15) = happyShift action_39
action_29 (16) = happyShift action_40
action_29 (22) = happyShift action_54
action_29 (23) = happyShift action_41
action_29 (34) = happyShift action_42
action_29 _ = happyReduce_27

action_30 (21) = happyShift action_53
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_13

action_32 (9) = happyShift action_34
action_32 (10) = happyShift action_35
action_32 (11) = happyShift action_36
action_32 (12) = happyShift action_37
action_32 (13) = happyShift action_38
action_32 (15) = happyShift action_39
action_32 (16) = happyShift action_40
action_32 (18) = happyShift action_52
action_32 (23) = happyShift action_41
action_32 (34) = happyShift action_42
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (9) = happyShift action_34
action_33 (10) = happyShift action_35
action_33 (11) = happyShift action_36
action_33 (15) = happyShift action_39
action_33 (16) = happyShift action_40
action_33 (23) = happyShift action_41
action_33 (34) = happyShift action_42
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (8) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (17) = happyShift action_7
action_34 (20) = happyShift action_8
action_34 (24) = happyShift action_9
action_34 (25) = happyShift action_10
action_34 (26) = happyShift action_11
action_34 (27) = happyShift action_12
action_34 (28) = happyShift action_13
action_34 (29) = happyShift action_14
action_34 (30) = happyShift action_15
action_34 (31) = happyShift action_16
action_34 (32) = happyShift action_17
action_34 (33) = happyShift action_18
action_34 (4) = happyGoto action_51
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (8) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (17) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (24) = happyShift action_9
action_35 (25) = happyShift action_10
action_35 (26) = happyShift action_11
action_35 (27) = happyShift action_12
action_35 (28) = happyShift action_13
action_35 (29) = happyShift action_14
action_35 (30) = happyShift action_15
action_35 (31) = happyShift action_16
action_35 (32) = happyShift action_17
action_35 (33) = happyShift action_18
action_35 (4) = happyGoto action_50
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (17) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (24) = happyShift action_9
action_36 (25) = happyShift action_10
action_36 (26) = happyShift action_11
action_36 (27) = happyShift action_12
action_36 (28) = happyShift action_13
action_36 (29) = happyShift action_14
action_36 (30) = happyShift action_15
action_36 (31) = happyShift action_16
action_36 (32) = happyShift action_17
action_36 (33) = happyShift action_18
action_36 (4) = happyGoto action_49
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (17) = happyShift action_7
action_37 (20) = happyShift action_8
action_37 (24) = happyShift action_9
action_37 (25) = happyShift action_10
action_37 (26) = happyShift action_11
action_37 (27) = happyShift action_12
action_37 (28) = happyShift action_13
action_37 (29) = happyShift action_14
action_37 (30) = happyShift action_15
action_37 (31) = happyShift action_16
action_37 (32) = happyShift action_17
action_37 (33) = happyShift action_18
action_37 (4) = happyGoto action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (17) = happyShift action_7
action_38 (20) = happyShift action_8
action_38 (24) = happyShift action_9
action_38 (25) = happyShift action_10
action_38 (26) = happyShift action_11
action_38 (27) = happyShift action_12
action_38 (28) = happyShift action_13
action_38 (29) = happyShift action_14
action_38 (30) = happyShift action_15
action_38 (31) = happyShift action_16
action_38 (32) = happyShift action_17
action_38 (33) = happyShift action_18
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (17) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (24) = happyShift action_9
action_39 (25) = happyShift action_10
action_39 (26) = happyShift action_11
action_39 (27) = happyShift action_12
action_39 (28) = happyShift action_13
action_39 (29) = happyShift action_14
action_39 (30) = happyShift action_15
action_39 (31) = happyShift action_16
action_39 (32) = happyShift action_17
action_39 (33) = happyShift action_18
action_39 (4) = happyGoto action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (17) = happyShift action_7
action_40 (20) = happyShift action_8
action_40 (24) = happyShift action_9
action_40 (25) = happyShift action_10
action_40 (26) = happyShift action_11
action_40 (27) = happyShift action_12
action_40 (28) = happyShift action_13
action_40 (29) = happyShift action_14
action_40 (30) = happyShift action_15
action_40 (31) = happyShift action_16
action_40 (32) = happyShift action_17
action_40 (33) = happyShift action_18
action_40 (4) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (17) = happyShift action_7
action_41 (20) = happyShift action_8
action_41 (24) = happyShift action_9
action_41 (25) = happyShift action_10
action_41 (26) = happyShift action_11
action_41 (27) = happyShift action_12
action_41 (28) = happyShift action_13
action_41 (29) = happyShift action_14
action_41 (30) = happyShift action_15
action_41 (31) = happyShift action_16
action_41 (32) = happyShift action_17
action_41 (33) = happyShift action_18
action_41 (4) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (17) = happyShift action_7
action_42 (20) = happyShift action_8
action_42 (24) = happyShift action_9
action_42 (25) = happyShift action_10
action_42 (26) = happyShift action_11
action_42 (27) = happyShift action_12
action_42 (28) = happyShift action_13
action_42 (29) = happyShift action_14
action_42 (30) = happyShift action_15
action_42 (31) = happyShift action_16
action_42 (32) = happyShift action_17
action_42 (33) = happyShift action_18
action_42 (4) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (9) = happyShift action_34
action_43 (10) = happyShift action_35
action_43 (11) = happyShift action_36
action_43 (15) = happyShift action_39
action_43 (16) = happyShift action_40
action_43 (23) = happyShift action_41
action_43 (34) = happyShift action_42
action_43 _ = happyReduce_26

action_44 (9) = happyShift action_34
action_44 (10) = happyShift action_35
action_44 (11) = happyShift action_36
action_44 (15) = happyShift action_39
action_44 (16) = happyShift action_40
action_44 (23) = happyShift action_41
action_44 (34) = happyShift action_42
action_44 _ = happyReduce_15

action_45 (9) = happyShift action_34
action_45 (10) = happyShift action_35
action_45 (11) = happyShift action_36
action_45 (15) = happyFail []
action_45 (16) = happyFail []
action_45 _ = happyReduce_11

action_46 (9) = happyShift action_34
action_46 (10) = happyShift action_35
action_46 (11) = happyShift action_36
action_46 (15) = happyFail []
action_46 (16) = happyFail []
action_46 _ = happyReduce_10

action_47 (9) = happyShift action_34
action_47 (10) = happyShift action_35
action_47 (11) = happyShift action_36
action_47 (15) = happyShift action_39
action_47 (16) = happyShift action_40
action_47 (23) = happyShift action_41
action_47 (34) = happyShift action_42
action_47 _ = happyReduce_8

action_48 (9) = happyShift action_34
action_48 (10) = happyShift action_35
action_48 (11) = happyShift action_36
action_48 (15) = happyShift action_39
action_48 (16) = happyShift action_40
action_48 (23) = happyShift action_41
action_48 (34) = happyShift action_42
action_48 _ = happyReduce_7

action_49 _ = happyReduce_6

action_50 (11) = happyShift action_36
action_50 _ = happyReduce_5

action_51 (11) = happyShift action_36
action_51 _ = happyReduce_4

action_52 (6) = happyShift action_2
action_52 (7) = happyShift action_4
action_52 (8) = happyShift action_5
action_52 (14) = happyShift action_6
action_52 (17) = happyShift action_7
action_52 (20) = happyShift action_8
action_52 (24) = happyShift action_9
action_52 (25) = happyShift action_10
action_52 (26) = happyShift action_11
action_52 (27) = happyShift action_12
action_52 (28) = happyShift action_13
action_52 (29) = happyShift action_14
action_52 (30) = happyShift action_15
action_52 (31) = happyShift action_16
action_52 (32) = happyShift action_17
action_52 (33) = happyShift action_18
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_14

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (17) = happyShift action_7
action_54 (20) = happyShift action_8
action_54 (24) = happyShift action_9
action_54 (25) = happyShift action_10
action_54 (26) = happyShift action_11
action_54 (27) = happyShift action_12
action_54 (28) = happyShift action_13
action_54 (29) = happyShift action_14
action_54 (30) = happyShift action_15
action_54 (31) = happyShift action_16
action_54 (32) = happyShift action_17
action_54 (33) = happyShift action_18
action_54 (4) = happyGoto action_29
action_54 (5) = happyGoto action_58
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (9) = happyShift action_34
action_55 (10) = happyShift action_35
action_55 (11) = happyShift action_36
action_55 (15) = happyShift action_39
action_55 (16) = happyShift action_40
action_55 (23) = happyShift action_41
action_55 (34) = happyShift action_42
action_55 _ = happyReduce_21

action_56 (9) = happyShift action_34
action_56 (10) = happyShift action_35
action_56 (11) = happyShift action_36
action_56 (15) = happyShift action_39
action_56 (16) = happyShift action_40
action_56 (23) = happyShift action_41
action_56 (34) = happyShift action_42
action_56 _ = happyReduce_22

action_57 (9) = happyShift action_34
action_57 (10) = happyShift action_35
action_57 (11) = happyShift action_36
action_57 (15) = happyShift action_39
action_57 (16) = happyShift action_40
action_57 (23) = happyShift action_41
action_57 (34) = happyShift action_42
action_57 _ = happyReduce_25

action_58 _ = happyReduce_28

action_59 (9) = happyShift action_34
action_59 (10) = happyShift action_35
action_59 (11) = happyShift action_36
action_59 (12) = happyShift action_37
action_59 (13) = happyShift action_38
action_59 (15) = happyShift action_39
action_59 (16) = happyShift action_40
action_59 (19) = happyShift action_60
action_59 (23) = happyShift action_41
action_59 (34) = happyShift action_42
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_4
action_60 (8) = happyShift action_5
action_60 (14) = happyShift action_6
action_60 (17) = happyShift action_7
action_60 (20) = happyShift action_8
action_60 (24) = happyShift action_9
action_60 (25) = happyShift action_10
action_60 (26) = happyShift action_11
action_60 (27) = happyShift action_12
action_60 (28) = happyShift action_13
action_60 (29) = happyShift action_14
action_60 (30) = happyShift action_15
action_60 (31) = happyShift action_16
action_60 (32) = happyShift action_17
action_60 (33) = happyShift action_18
action_60 (4) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (9) = happyShift action_34
action_61 (10) = happyShift action_35
action_61 (11) = happyShift action_36
action_61 (12) = happyShift action_37
action_61 (13) = happyShift action_38
action_61 (15) = happyShift action_39
action_61 (16) = happyShift action_40
action_61 (23) = happyShift action_41
action_61 (34) = happyShift action_42
action_61 _ = happyReduce_12

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Geq happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 _
	_
	 =  HappyAbsSyn4
		 (Nil NoType
	)

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNil happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (SumList happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (MultList happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Min happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Max happy_var_2 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ListMin happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ListMax happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (GetByIndex happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 (Nil NoType)
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  5 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenEq -> cont 15;
	TokenGeq -> cont 16;
	TokenIf -> cont 17;
	TokenThen -> cont 18;
	TokenElse -> cont 19;
	TokenLBracket -> cont 20;
	TokenRBracket -> cont 21;
	TokenComma -> cont 22;
	TokenColon -> cont 23;
	TokenIsNil -> cont 24;
	TokenHead -> cont 25;
	TokenTail -> cont 26;
	TokenSumList -> cont 27;
	TokenMultList -> cont 28;
	TokenMin -> cont 29;
	TokenMax -> cont 30;
	TokenListMin -> cont 31;
	TokenListMax -> cont 32;
	TokenGetByIndex -> cont 33;
	TokenConcat -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
