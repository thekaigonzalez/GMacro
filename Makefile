# GMacro Build System
# Copyright (C) 2021 Kai D. Gonzalez
#
# This file is part of GMacro.
#
# GMacro is free software: you can redistribute it and/or 
# modify it under the terms of the GNU General Public License as published by the Free Software Foundation, 
# either version 3 of the License, or (at your option) any later version.
#
# GMacro is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with Foobar. If not, see http://www.gnu.org/licenses/.

DMD=dmd
SRC=src/simplergmacro.d src/gmacro.d
FLAGS=-O 
OUTPUT=sgm

all:
	$(DMD) $(SRC) $(FLAGS)
	rm *.o