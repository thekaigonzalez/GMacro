# GMacro

Gmacro is a markup language for the D programming language.

## Speed

GMacro is very fast in terms of data processing, and it's good to use for configuration etc..

## Error Handling

GMacro has silent error handling and returns values for manual error checking, rather than having create a try catch tower.

## Examples

```d

///GMacro: Error Handling

void main() {
    GM_Parser gmp = new GM_Parser("BASIC(hello);BASIC2(world)");
    GM_ArgPasser gmap = new GM_ArgPasser(gmp.defineonce());
    string[] basic_args = gmap.getonce("BASIC"); // either ["hello"] or ["NULL"]
    string hello = basic_args[0];
    writeln(hello);
}

```
