#import "template.typ": conf, pitfall

#show: doc => conf("Topic Name", summer_year: "2026", doc)

== A. The Conceptual Core
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Notes on invariants, space/time complexity...

== B. Reference Implementation
```cpp
// Your verified C++ implementation here
```

#pitfall([
    Lorem ipsum dolor sit amet, common edge cases, off-by-one errors, overflow warnings.
])[

== C. Problem Recognition Rules
- *Clue 1:* Lorem ipsum dolor sit amet...
- *Clue 2:* Dynamic updates paired with interval aggregates...
- *CSES Matches:* _Problem Name 1, Problem Name 2_