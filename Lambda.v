Require Import Coq.Strings.String.

Inductive op:Type:=
| op_plus: op
| op_times: op
.

Inductive expr: Type :=
| expr_op: expr -> op -> expr -> expr
| expr_int: nat -> expr
| expr_id: string -> expr
.

Lemma E: expr_op (expr_id "Hola") op_plus (expr_int 8 ).
    Proof