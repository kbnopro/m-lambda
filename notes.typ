= Modal Logic introduction
https://anggtwu.net/tmp/chellas__modal_logic_an_introduction.pdf

== Brief introduction with S5
- A proposition is necessary if it holds at all possible worlds
- A proposition is possible if it holds at some worlds
- The study of modal logic is in the context of language of neccessity and possibility. The sentences are in the following forms:
  - $PP_0, PP_1, PP_2$: atomic propositions
  - $top$: constant for truth
  - $bot$: constant for falsehood
  - $not, or, and, ->, <->$ are the usual logical connectives
  - $square$ is the necessity operator, $square A$ read as _necessarily A_
  - $diamond$ is the possibility sign, $diamond A$ read as _possibly A_
- We consider an infinite sequencce of sets of possible worlds
  $
    P_0, P_1, P_2, ...
  $
  where $P_i$ is the set of possible worlds in which $PP_i$ is true. Hence, $PP_n$ is true at a possible world $alpha$ if and only if $alpha in P_n$.
#let pair(X, Y) = {
  $chevron #X, #Y chevron.r$
}
- A model can be defined as a pair
  $
    pair(W, P)
  $
  - $W$ is a set of possible worlds
  - $P$ abbreviates an inifinite sequence of $P_0, P_1, P_2,...$ which are subsets of $W$.
  - Note that $W$ might contains worlds that are not in any $P_i$, and any or all of the $P_i$ might be empty.
- The truth conditions for sentences are written as:
  $
    op(models)_alpha^cal(M) A
  $
  - $A$ is a sentence
  - $alpha$ is a possible world in a model $cal(M) = pair(W, P)$
  - This is short for $A$ is true at $alpha$ in $cal(M)$
- Truth conditions example:
  1. $op(models)_alpha^cal(M) PP_n "iff" alpha in P_n quad "for" n = 0,1,2,...$\
    If $alpha$ is in $P_n$, then $PP_n$ is true at $alpha$ in $cal(M)$, and vice versa.\
    This stem from the definition of $P_n$: A set of all possible worlds in which $PP_n$ is true.
  2. $op(models)_alpha^cal(M) top$: The truth constant is always true.
  3. $"Not" op(models)_alpha^cal(M) bot$: The falsehood constant is always false.
  4. $op(models)_alpha^cal(M) not A "iff" "not" op(models)_alpha^cal(M) A$: Commutation of negative operator with truth conditions.
  5. $op(models)_alpha^cal(M) A and B "iff" op(models)_alpha^cal(M) A "and" op(models)_alpha^cal(M) B$
  6. $op(models)_alpha^cal(M) A or B "iff" op(models)_alpha^cal(M) A "or" op(models)_alpha^cal(M) B$\
    Both 5 and 6 are composition of truth conditions for $and$ and $or$ operators.
  7. $op(models)_alpha^cal(M) A -> B "iff" op(models)_alpha^cal(M) A -> op(models)_alpha^cal(M) B$\
  8. $op(models)_alpha^cal(M) A <-> B "iff" op(models)_alpha^cal(M) A <-> op(models)_alpha^cal(M) B$\
  9. $op(models)_alpha^cal(M) square A "iff" "for all" beta in W, op(models)_beta^cal(M) A$\
    The necessity operator is true at a possible world $alpha$ if and only if $A$ is true at all possible worlds in the model.
  10. $op(models)_alpha^cal(M) diamond A "iff" "exists" beta in W, op(models)_beta^cal(M) A$\
    The possibility operator is true at a possible world $alpha$ if and only if $A$ is true at some possible world in the model.
- A sentence true at every possible world in every model is said to be valid. We denote it as:
  $
    op(models) A "iff" forall cal(M), forall alpha in M, op(models)_alpha^cal(M) A
  $
  - Some valid sentences:
    - $T. quad square A -> A$ (not widely accepted, might be false in some models)
    - $5. quad diamond A -> square diamond A$ (not widely accepted, might be false in some models)
    - $K. quad square(A->B) -> (square A -> square B)$: Given that $A$ implies $B$ is necessary, then if $A$ is necessary, then $B$ is also necessary.
    - $"If" models A, "then" models square A$
    - $"Df" diamond. quad diamond A arrow.l.r not square not A$\
      Possibility is defined as the negation of necessity of negation. If $A$ is possible, then it is not necessary that $A$ is false.
- Propositional logic recap:
  - Propositional Variables (Atomic Propositions): $PP_0, PP_1, PP_2,...$
  - Logical Connectives: $not, and, or, ->, <->$
  - Parentheses: $(), [], {}$ for grouping and precedence
  - Tautology: A formula that is true in every possible interpretation (e.g., $A or not A$)
  - Contradiction: A formula that is false in every possible interpretation (e.g.,
  - Contingency: A formula that is neither a tautology nor a contradiction (e.g., $A and B$)
  - Logical Equivalence: Two formulas are logically equivalent if they have the same truth value in every possible interpretation (e.g., $A and B$ is equivalent to $B and A$)




