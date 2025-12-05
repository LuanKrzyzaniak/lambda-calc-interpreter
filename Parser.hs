{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer 
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,239) ([41408,14408,64,0,0,0,49088,30792,0,0,0,0,41408,14408,0,2048,41408,14408,41408,14408,0,0,41408,14408,41408,14408,0,0,0,0,49088,30920,49088,30824,0,16,0,1,65472,30792,0,0,41408,14408,41408,14408,41408,14408,41408,14408,41408,14408,0,0,0,0,0,0,6144,0,7168,0,0,0,0,1544,0,0,41408,14408,41408,14408,49088,31048,0,0,0,6,0,1544,0,0,0,0,0,20,41408,14408,0,1544,41408,14408,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Ty","ListElements","num","true","false","'+'","'*'","\"&&\"","\"||\"","'('","')'","\"\\\\\"","':'","'.'","\"->\"","'['","']'","','","if","then","else","Num","Bool","var","head","tail","\"++\"","%eof"]
        bit_start = st Prelude.* 32
        bit_end = (st Prelude.+ 1) Prelude.* 32
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..31]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (28) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (30) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (13) = happyShift action_24
action_3 (14) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (28) = happyShift action_10
action_3 (29) = happyShift action_11
action_3 (30) = happyShift action_12
action_3 (31) = happyShift action_25
action_3 (32) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (8) = happyShift action_4
action_6 (9) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (16) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (23) = happyShift action_9
action_6 (28) = happyShift action_10
action_6 (29) = happyShift action_11
action_6 (30) = happyShift action_12
action_6 (4) = happyGoto action_19
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (28) = happyShift action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_2
action_8 (8) = happyShift action_4
action_8 (9) = happyShift action_5
action_8 (14) = happyShift action_6
action_8 (16) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (23) = happyShift action_9
action_8 (28) = happyShift action_10
action_8 (29) = happyShift action_11
action_8 (30) = happyShift action_12
action_8 (4) = happyGoto action_16
action_8 (6) = happyGoto action_17
action_8 _ = happyReduce_21

action_9 (7) = happyShift action_2
action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (16) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (28) = happyShift action_10
action_9 (29) = happyShift action_11
action_9 (30) = happyShift action_12
action_9 (4) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_10

action_11 (7) = happyShift action_2
action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (16) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (23) = happyShift action_9
action_11 (28) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (30) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (16) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (28) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (30) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_2
action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_21
action_13 (11) = happyShift action_22
action_13 (12) = happyShift action_23
action_13 (13) = happyShift action_24
action_13 (14) = happyShift action_6
action_13 (16) = happyShift action_7
action_13 (20) = happyShift action_8
action_13 (23) = happyShift action_9
action_13 (28) = happyShift action_10
action_13 (29) = happyShift action_11
action_13 (30) = happyShift action_12
action_13 (31) = happyShift action_25
action_13 (4) = happyGoto action_20
action_13 _ = happyReduce_15

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (10) = happyShift action_21
action_14 (11) = happyShift action_22
action_14 (12) = happyShift action_23
action_14 (13) = happyShift action_24
action_14 (14) = happyShift action_6
action_14 (16) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (23) = happyShift action_9
action_14 (28) = happyShift action_10
action_14 (29) = happyShift action_11
action_14 (30) = happyShift action_12
action_14 (31) = happyShift action_25
action_14 (4) = happyGoto action_20
action_14 _ = happyReduce_14

action_15 (7) = happyShift action_2
action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_21
action_15 (11) = happyShift action_22
action_15 (12) = happyShift action_23
action_15 (13) = happyShift action_24
action_15 (14) = happyShift action_6
action_15 (16) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (24) = happyShift action_35
action_15 (28) = happyShift action_10
action_15 (29) = happyShift action_11
action_15 (30) = happyShift action_12
action_15 (31) = happyShift action_25
action_15 (4) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (8) = happyShift action_4
action_16 (9) = happyShift action_5
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_22
action_16 (12) = happyShift action_23
action_16 (13) = happyShift action_24
action_16 (14) = happyShift action_6
action_16 (16) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (22) = happyShift action_34
action_16 (23) = happyShift action_9
action_16 (28) = happyShift action_10
action_16 (29) = happyShift action_11
action_16 (30) = happyShift action_12
action_16 (31) = happyShift action_25
action_16 (4) = happyGoto action_20
action_16 _ = happyReduce_22

action_17 (21) = happyShift action_33
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (17) = happyShift action_32
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_21
action_19 (11) = happyShift action_22
action_19 (12) = happyShift action_23
action_19 (13) = happyShift action_24
action_19 (14) = happyShift action_6
action_19 (15) = happyShift action_31
action_19 (16) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (28) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (30) = happyShift action_12
action_19 (31) = happyShift action_25
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_21
action_20 (11) = happyShift action_22
action_20 (12) = happyShift action_23
action_20 (13) = happyShift action_24
action_20 (14) = happyShift action_6
action_20 (16) = happyShift action_7
action_20 (20) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (28) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (30) = happyShift action_12
action_20 (31) = happyShift action_25
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_9

action_21 (7) = happyShift action_2
action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (16) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (28) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (30) = happyShift action_12
action_21 (4) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (16) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (28) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (30) = happyShift action_12
action_22 (4) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (16) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (28) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (30) = happyShift action_12
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (16) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (28) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (30) = happyShift action_12
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (16) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (28) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (30) = happyShift action_12
action_25 (4) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_21
action_26 (11) = happyShift action_22
action_26 (12) = happyShift action_23
action_26 (13) = happyShift action_24
action_26 (14) = happyShift action_6
action_26 (16) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (28) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (30) = happyShift action_12
action_26 (31) = happyShift action_25
action_26 (4) = happyGoto action_20
action_26 _ = happyReduce_16

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (16) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (28) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (30) = happyShift action_12
action_27 (31) = happyShift action_25
action_27 (4) = happyGoto action_20
action_27 _ = happyReduce_7

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (16) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (28) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (30) = happyShift action_12
action_28 (31) = happyShift action_25
action_28 (4) = happyGoto action_20
action_28 _ = happyReduce_6

action_29 (7) = happyShift action_2
action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (12) = happyShift action_23
action_29 (13) = happyShift action_24
action_29 (14) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (28) = happyShift action_10
action_29 (29) = happyShift action_11
action_29 (30) = happyShift action_12
action_29 (31) = happyShift action_25
action_29 (4) = happyGoto action_20
action_29 _ = happyReduce_5

action_30 (7) = happyShift action_2
action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (11) = happyShift action_22
action_30 (12) = happyShift action_23
action_30 (13) = happyShift action_24
action_30 (14) = happyShift action_6
action_30 (16) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (23) = happyShift action_9
action_30 (28) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (30) = happyShift action_12
action_30 (31) = happyShift action_25
action_30 (4) = happyGoto action_20
action_30 _ = happyReduce_4

action_31 _ = happyReduce_8

action_32 (20) = happyShift action_39
action_32 (26) = happyShift action_40
action_32 (27) = happyShift action_41
action_32 (5) = happyGoto action_38
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_13

action_34 (7) = happyShift action_2
action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (16) = happyShift action_7
action_34 (20) = happyShift action_8
action_34 (23) = happyShift action_9
action_34 (28) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (30) = happyShift action_12
action_34 (4) = happyGoto action_16
action_34 (6) = happyGoto action_37
action_34 _ = happyReduce_21

action_35 (7) = happyShift action_2
action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (23) = happyShift action_9
action_35 (28) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (30) = happyShift action_12
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_22
action_36 (12) = happyShift action_23
action_36 (13) = happyShift action_24
action_36 (14) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (23) = happyShift action_9
action_36 (25) = happyShift action_45
action_36 (28) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (30) = happyShift action_12
action_36 (31) = happyShift action_25
action_36 (4) = happyGoto action_20
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_23

action_38 (18) = happyShift action_43
action_38 (19) = happyShift action_44
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_39
action_39 (26) = happyShift action_40
action_39 (27) = happyShift action_41
action_39 (5) = happyGoto action_42
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_17

action_41 _ = happyReduce_18

action_42 (19) = happyShift action_44
action_42 (21) = happyShift action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (20) = happyShift action_8
action_43 (23) = happyShift action_9
action_43 (28) = happyShift action_10
action_43 (29) = happyShift action_11
action_43 (30) = happyShift action_12
action_43 (4) = happyGoto action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_39
action_44 (26) = happyShift action_40
action_44 (27) = happyShift action_41
action_44 (5) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_2
action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (16) = happyShift action_7
action_45 (20) = happyShift action_8
action_45 (23) = happyShift action_9
action_45 (28) = happyShift action_10
action_45 (29) = happyShift action_11
action_45 (30) = happyShift action_12
action_45 (4) = happyGoto action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (10) = happyShift action_21
action_46 (11) = happyShift action_22
action_46 (12) = happyShift action_23
action_46 (13) = happyShift action_24
action_46 (14) = happyShift action_6
action_46 (16) = happyShift action_7
action_46 (20) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (28) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (30) = happyShift action_12
action_46 (31) = happyShift action_25
action_46 (4) = happyGoto action_20
action_46 _ = happyReduce_12

action_47 (19) = happyShift action_44
action_47 _ = happyReduce_19

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (10) = happyShift action_21
action_48 (11) = happyShift action_22
action_48 (12) = happyShift action_23
action_48 (13) = happyShift action_24
action_48 (14) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (20) = happyShift action_8
action_48 (23) = happyShift action_9
action_48 (28) = happyShift action_10
action_48 (29) = happyShift action_11
action_48 (30) = happyShift action_12
action_48 (31) = happyShift action_25
action_48 (4) = happyGoto action_20
action_48 _ = happyReduce_11

action_49 _ = happyReduce_20

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

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
		 (Times happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

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

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Concat happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TList happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  6 happyReduction_21
happyReduction_21  =  HappyAbsSyn6
		 (Nil
	)

happyReduce_22 = happySpecReduce_1  6 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 Nil
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn6
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenTrue -> cont 8;
	TokenFalse -> cont 9;
	TokenPlus -> cont 10;
	TokenTimes -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenLParen -> cont 14;
	TokenRParen -> cont 15;
	TokenLambda -> cont 16;
	TokenColon -> cont 17;
	TokenDot -> cont 18;
	TokenArrow -> cont 19;
	TokenLColch -> cont 20;
	TokenRColch -> cont 21;
	TokenComma -> cont 22;
	TokenIf -> cont 23;
	TokenThen -> cont 24;
	TokenElse -> cont 25;
	TokenTNum -> cont 26;
	TokenTBool -> cont 27;
	TokenVar happy_dollar_dollar -> cont 28;
	TokenHead -> cont 29;
	TokenTail -> cont 30;
	TokenConcat -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "nao fez sentido, isso nao existe"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































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
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
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
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
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





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

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
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
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
