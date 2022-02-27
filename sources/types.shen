\\           Copyright (c) 2010-2019, Mark Tarver

\\                  All rights reserved.

(package shen []

(define declare
  F A -> (let Rectify (rectify-type A)
              Variant? (prolog? (variancy (receive F) (receive Rectify)))
              Abstraction (eval-kl (prolog-abstraction A))
              UpDate (set *sigf* (assoc-> F Abstraction (value *sigf*)))
              F))

(defprolog variancy
  F Rectify <-- (system-S-h F A [])
                (variants? F A Rectify);)

(defprolog variants?
  F symbol _ <-- !;
  F A A <-- ;
  F _ _ <-- (is Warning (output "warning: changing the type of ~A may create errors~%" F));)

(define prolog-abstraction
  A -> (let Bindings (gensym (protect B))
            Lock (gensym (protect L))
            Key (gensym (protect Key))
            Continuation (gensym (protect C))
            V (gensym (protect V))
            Vs (extract-vars A)
            [lambda V [lambda Bindings [lambda Lock [lambda Key [lambda Continuation
              (stpart Vs [is! V (rcons_form A) Bindings Lock Key Continuation] Bindings)]]]]]))

(define demod
  X -> (let F (value *demodulation-function*)
         (F X)))

(declare abort [--> A])
(declare absvector? [A --> boolean])
(declare adjoin [A --> [[list A] --> [list A]]])
(declare and [boolean --> [boolean --> boolean]])
(declare app [A --> [string --> [symbol --> string]]])
(declare append [[list A] --> [[list A] --> [list A]]])
(declare arity [A --> number])
(declare assoc [A --> [[list [list A]] --> [list A]]])
(declare atom? [A --> boolean])
(declare boolean? [A --> boolean])
(declare bootstrap [string --> string])
(declare bound? [symbol --> boolean])
(declare cd [string --> string])
(declare close [[stream A] --> [list B]])
(declare cn [string --> [string --> string]])
(declare compile [[[str [list A] B] --> [str [list A] C]] --> [[list A] --> C]])
(declare cons? [A --> boolean])
(declare destroy [[A --> B] --> symbol])
(declare difference [[list A] --> [[list A] --> [list A]]])
(declare do [A --> [B --> B]])
(declare <e> [[str [list A] B] --> [str [list A] [list C]]])
(declare <!> [[str [list A] B] --> [str [list A] [list A]]])
(declare <end> [[str [list A] B] --> [str [list A] B]])
(declare =hd? [[str [list A] B] --> [A --> boolean]])
(declare hds [[str [list A] B] --> A])
(declare tls [[str [list A] B] --> [str [list A] B]])
(declare parse-failure? [[str [list A] B] --> boolean])
(declare parse-failure [--> [str [list A] B]])
(declare <-out [[str [list A] B] --> B])
(declare in-> [[str [list A] B] --> [list A]])
(declare non-empty-stream? [[str [list A] B] --> boolean])
(declare comb [[list A] --> [B --> [str [list A] B]]])
(declare headstream [[str A B] --> [[str C D] --> [str A [str C D]]]])
(declare tlstream [[str [list A] B] --> [str [list A] B]])
(declare element? [A --> [[list A] --> boolean]])
(declare empty? [A --> boolean])
(declare enable-type-theory [symbol --> boolean])
(declare external [symbol --> [list symbol]])
(declare error-to-string [exception --> string])
(declare explode [A --> [list string]])
(declare factorise [symbol --> symbol])
(declare fail [--> symbol])
(declare fix [[A --> A] --> [A --> A]])
(declare freeze [A --> [lazy A]])
(declare fst [[A * B] --> A])
(declare gensym [symbol --> symbol])
(declare <-vector [[vector A] --> [number --> A]])
(declare vector-> [[vector A] --> [number --> [A --> [vector A]]]])
(declare vector [number --> [vector A]])
(declare get-time [symbol --> number])
(declare hash [A --> [number --> number]])
(declare head [[list A] --> A])
(declare hdv [[vector A] --> A])
(declare hdstr [string --> string])
(declare if [boolean --> [A --> [A --> A]]])
(declare in-package [symbol --> symbol])
(declare it [--> string])
(declare implementation [--> string])
(declare include [[list symbol] --> [list symbol]])
(declare include-all-but [[list symbol] --> [list symbol]])
(declare inferences [--> number])
(declare insert [A --> [string --> string]])
(declare integer? [A --> boolean])
(declare internal [symbol --> [list symbol]])
(declare intersection [[list A] --> [[list A] --> [list A]]])
(declare language [--> string])
(declare length [[list A] --> number])
(declare limit [[vector A] --> number])
(declare lineread [[stream in] --> [list unit]])
(declare load [string --> symbol])
(declare map [[A --> B] --> [[list A] --> [list B]]])
(declare mapcan [[A --> [list B]] --> [[list A] --> [list B]]])
(declare maxinferences [number --> number])
(declare n->string [number --> string])
(declare nl [number --> number])
(declare not [boolean --> boolean])
(declare nth [number --> [[list A] --> A]])
(declare number? [A --> boolean])
(declare occurrences [A --> [B --> number]])
(declare occurs-check [symbol --> boolean])
(declare optimise [symbol --> boolean])
(declare or [boolean --> [boolean --> boolean]])
(declare os [--> string])
(declare package? [symbol --> boolean])
(declare port [--> string])
(declare porters [--> string])
(declare pos [string --> [number --> string]])
(declare pr [string --> [[stream out] --> string]])
(declare print [A --> A])
(declare profile [symbol --> symbol])
(declare preclude [[list symbol] --> [list symbol]])
(declare proc-nl [string --> string])
(declare profile-results [symbol --> [symbol * number]])
(declare protect [A --> A])
(declare preclude-all-but [[list symbol] --> [list symbol]])
(declare prhush [string --> [[stream out] --> string]])
(declare prolog-memory [number --> number])
(declare ps [symbol --> [list unit]])
(declare read [[stream in] --> unit])
(declare read-byte [[stream in] --> number])
(declare read-file-as-bytelist [string --> [list number]])
(declare read-file-as-string [string --> string])
(declare read-file [string --> [list unit]])
(declare read-from-string [string --> [list unit]])
(declare read-from-string-unprocessed [string --> [list unit]])
(declare release [--> string])
(declare remove [A --> [[list A] --> [list A]]])
(declare reverse [[list A] --> [list A]])
(declare simple-error [string --> A])
(declare snd [[A * B] --> B])
(declare specialise [symbol --> [number --> symbol]])
(declare spy [symbol --> boolean])
(declare step [symbol --> boolean])
(declare stinput [--> [stream in]])
(declare sterror [--> [stream out]])
(declare stoutput [--> [stream out]])
(declare string? [A --> boolean])
(declare str [A --> string])
(declare string->n [string --> number])
(declare string->symbol [string --> symbol])
(declare sum [[list number] --> number])
(declare symbol? [A --> boolean])
(declare systemf [symbol --> symbol])
(declare tail [[list A] --> [list A]])
(declare tlstr [string --> string])
(declare tlv [[vector A] --> [vector A]])
(declare tc [symbol --> boolean])
(declare tc? [--> boolean])
(declare thaw [[lazy A] --> A])
(declare track [symbol --> symbol])
(declare trap-error [A --> [[exception --> A] --> A]])
(declare tuple? [A --> boolean])
(declare undefmacro [symbol --> symbol])
(declare union [[list A] --> [[list A] --> [list A]]])
(declare unprofile [symbol --> symbol])
(declare untrack [symbol --> symbol])
(declare variable? [A --> boolean])
(declare vector? [A --> boolean])
(declare version [--> string])
(declare write-to-file [string --> [A --> A]])
(declare write-byte [number --> [[stream out] --> number]])
(declare y-or-n? [string --> boolean])
(declare > [number --> [number --> boolean]])
(declare < [number --> [number --> boolean]])
(declare >= [number --> [number --> boolean]])
(declare <= [number --> [number --> boolean]])
(declare = [A --> [A --> boolean]])
(declare + [number --> [number --> number]])
(declare / [number --> [number --> number]])
(declare - [number --> [number --> number]])
(declare * [number --> [number --> number]])
(declare == [A --> [B --> boolean]])

)
