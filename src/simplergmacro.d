module simplergmacro;

/**

Copyright (C) 2021 Kai D. Gonzalez

 This file is part of GMacro.

 GMacro is free software: you can redistribute it and/or 
 modify it under the terms of the GNU General Public License as published by the Free Software Foundation, 
 either version 3 of the License, or (at your option) any later version.
 
 GMacro is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 See the GNU General Public License for more details.

 You should have received a copy of the GNU General Public License along with Foobar. If not, see http://www.gnu.org/licenses/.

*/

import std.stdio;
import std.algorithm;
import std.string;
import std.conv;
import std.array;
import std.file;
import gmacro;


int main(string[] args)
{
    if (args.length == 2) {
        if (args[1] == "-version") {
            writeln("Version 1.0, build 1");
		} else if (args[1] == "-help") {
            writeln("usage: SimplerGMacro [-help] [-version] FILE ...)");
		} else {
            SGMacroFile sgmf = new SGMacroFile(args[1]);
            writeln(sgmf.parseOnce());
		}
	}
    return 0;
}
