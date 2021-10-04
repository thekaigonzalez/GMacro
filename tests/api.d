module tests.api;

import gmacro;
import std.stdio;


///GMacro: Error Handling

void main() {
    GM_Parser gmp = new GM_Parser("BASIC(hello);BASIC2(world)");
    GM_ArgPasser gmap = new GM_ArgPasser(gmp.defineonce());
    string[] basic_args = gmap.getonce("BASIC"); // either ["hello"] or ["NULL"]
    string hello = basic_args[0];
    writeln(hello);
}
