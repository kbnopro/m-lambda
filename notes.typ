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
#let model(..args) = {
  $chevron #args.pos().map(label => [#label]).join($,$) chevron.r$
}
- A model can be defined as a pair
  $
    model(W, P)
  $
  - $W$ is a set of possible worlds
  - $P$ abbreviates an inifinite sequence of $P_0, P_1, P_2,...$ which are subsets of $W$.
  - Note that $W$ might contains worlds that are not in any $P_i$, and any or all of the $P_i$ might be empty.
#show math.models: math.class.with("normal")
- The truth conditions for sentences are written as:
  $
    models_alpha^cal(M) A
  $
  - $A$ is a sentence
  - $alpha$ is a possible world in a model $cal(M) = model(W, P)$
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
- Modal logic extends propositional logic
  - Every tautology in propositional logic is valid in modal logic
- Basic theorems (adopted as axioms) and rules of inferences in S5
  $
               T. & quad square A -> A \
               5. & quad diamond A -> square diamond A \
               K. & quad square(A->B) -> (square A -> square B) \
    "Df" diamond. & quad diamond A arrow.l.r not square not A \
            "PL". & quad A, "where" A "is a tautology in propositional logic" \
            "RN". & quad A / (square A) \
            "MP." & quad (A, A -> B) / B \
  $
#show math.tack.short: math.class.with("normal")
- When $A$ is a sentence, we also write $tack.short A$ to mean that A is a theorem
- MP and PL can be replaced by RPL, which is a rule of inference that allows us to derive a theorem from a tautology in propositional logic.
  $
    "RPL". quad (A_1, ..., A_n) / A\ "where the inference from " A_1, ..., A_n "to" A "is a tautology in propositional logic"
  $
- Two further rules of inference can be derived from the basic theorems and rules of inference in S5:
  $
    "RM". quad (A -> B) / (square A -> square B) \
    "RE". quad (A <-> B) / (square A <-> square B) \
  $

== Logic Preliminaries
=== Syntax
- Sentences: The language is founded on a denumerable set of atomic sentences
  $
    PP_0, PP_1, PP_2, ...
  $
  These a simplest sentences
- The non-atomic molecular sentences are formed by means of nine syntactic operations, or operators
  $
    top, bot, not, and, or, ->, <->, square, diamond
  $
  Sentences are formed using the following rules:
  1. $PP_n$ is a sentence for each $n = 0, 1, 2, ...$
  2. $top$ is a sentence
  3. $bot$ is a sentence
  4. $not A$ is a sentence iff $A$ is a sentence
  5. $A and B$ is a sentence iff $A$ and $B$
  6. $A or B$ is a sentence iff $A$ and $B$ are sentences
  7. $A -> B$ is a sentence iff $A$ and $B$ are sentences
  8. $A <-> B$ is a sentence iff $A$ and $B$ are sentences
  9. $square A$ is a sentence iff $A$ is a sentence
  10. $diamond A$ is a sentence iff $A$ is a sentence
- We use $A, B, C,...$, sometimes with superscripts or subscripts for setences, and $Gamma, Delta, E, ...$ with appurtenant (set membership) for a set of sentences.
==== Vocabularies
- $top$: the truth constant, _verum_
- $bot$: the falsehood constant, _falsum_ or _falsity constant_
- $not A$: the _negation_ of $A$, $A$ is the _negate_
- $A and B$: the _conjunction_ of $A$ and $B$, $A$ and $B$ are the _left conjunct_ and _right conjunct_ respectively
- $A or B$: the _disjunction_ of $A$ and $B$, where $A$ and $B$ are the _left disjunct_ and _right disjunct_ respectively
- $A <-> B$ is the biconditional of $A$ and $B$, where $A$ and $B$ is the _left_ and _right members_
- $A -> B$ is the conditional of $A$ and $B$, where $A$ and $B$ is the _antecedent_ and _consequent_ respectively
- $square A$: the _necessitation_ of $A$, $A$ is the _necessitate_
- $diamond A$: the _possibilitation_ of $A$, $A$ is the _possibilitate_
- In $square A$ and $diamond A$, A is also called the _matrix_, and $square$ and $diamond$ are called the _prefixes_.
==== Subsentences
- A part of a sentence is called a _subsentence_, the set of all subsentences of a sentence $A$ is denoted by $"Sn"(A)$.
- A set of sentences is _closed under subsentences_ if it contains all subsentences of its members.

==== Modalities

#let null(body) = $attach(#body, tl: dot)$
#let null = null("")

- _modality_ is any finite sequence of $square$, $diamond$, and $not$ operators, including the empty sequence. The empty sequence is called the _trivial modality_, and signified by $null$
- A modality is classified as _affirmative_ when $not$ occurs in it even number of times, and _negative_ otherwise.
- The _dual of a modality_ $phi.alt$ is the modality $phi.alt^*$  - The _dual of a modality_ mmphi.altt results from interchanging $square$ and $diamond$. Note that the affirmative or negative quality of a modality is preserved by duality, and the dual of a dual is the original modality.
- We write
  $
    phi.alt^n A
  $
  to indicate application of the modality $phi.alt$ to the sentence $A$ n times. This can be formally defined by induction.
- A set of sentences is _modally closed_ just in case $phi A$ is in the set whenever $A$ is, for every modality $phi$. The _modal closure_ of a set sentences means the result of adding to the set every moralization of $phi.alt A$ of any sentence $A$ in the set.

==== Replacement
- Give sentences $A, B, B'$, we wish to consider a sentence that results from replacing some occurrences of $B$ in $A$ with $B'$. This is denoted as:
  $
    A[B\/B']
  $

==== Duality
- Without $->$ and $<->$, the _dual of a sentence_ $A$, written as $A^*$, is the result of replacing atomic sentence by its negation, $not$ by $not$, $and$ by $or$, $square$ by $diamond$, and vice versa.
- We need a more complex definition with $->$ and $<->$:
  1. $PP_n^* = not PP_N, "for" n = 0,1,2,...$
  2. $top^* = bot$
  3. $bot^* = top$
  4. $(not A)^* = not (A^*)$
  5. $(A and B)^* = A^* or B^*$
  6. $(A or B)^* = A^* and B^*$
  7. $(A->B)^* = not (A^*) and B^*$
  8. $(A <-> B)^* = A^* <-> not (B^*)$
  9. $(square A)^* = diamond (A^*)$
  10. $(diamond A)^* = square (A^*)$

==== Schemas
- A schema we mean a set of sentence of particular form. For example
  $
    5. quad diamond A -> square diamond A
  $
- An _instance_ of a schema is a member of the set of sentences that the schema represents. For example, $diamond PP_0 -> square diamond PP_0$ is an instance of the schema $5$.

==== Decidability
- A set of sentences $Gamma$ is _decidable_ just in case there is a decision procedure for determining whether or not it is in $Gamma$.
- A weaker notion is _effectively enumerable_, which means there is a effective method for telling any sentence in $Gamma$ that it is in $Gamma$, but not necessarily for telling any sentence not in $Gamma$ that it is not in $Gamma$. We say there is a _positive test_ for membership in $Gamma$. Similarly, _negative test_ is defined.
- A set of sentences is _decidable_ if both it and its complement are effectively enumerable.

=== Models, truth and validity
- The set $W$ of possible worlds and the assignment $P$ of truth values, so we may describe a model in the sense as a structure
  $
    cal(M) = model(W, ..., P)
  $
  where #enum(numbering: "(i)")[
    $W$ is a set
  ][
    $P$ is a function on the set ${0,1,2,...}$ such that for each number $n$, $PP_n subset.eq W$
  ]
- A model is _finite_ if its set of worlds has finitely many elements; otherwise it is _infinite_.

= Reconstruction of Modal Logic
https://www.cs.cmu.edu/~fp/papers/mscs00.pdf

