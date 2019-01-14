// To print text without formatting chars.
#ifdef DEBUG
   #stdout Compiling debugging version...
#endif

#ifndef __HARBOUR__
#include "clipper.ch"
#endif

PROCEDURE Main()

   ? '"' + Version() + '"'
   ? '"' + hb_Compiler() + '"'
   ? '"' + OS() + '"'

RETURN
