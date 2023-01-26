# 42-ft_printf
Reimplementation of basic printf features

Grade: 125/100

This is the code as it was upon closing the project and correcting it. There are a few minor issues that I have decided to leave as-is.

Two notable issues:  
-`"[any amount of text and specifiers]%"` will result in undefined behavior (buffer overflow !).  
-The reallocation code for the internal buffer is kinda messy and used to crash. I usually handle this with ease, but in this case I simply swept it under the rug by setting the initial buffer to a high enough value

#Features
-format specifiers diouspcxX%.  
-precision, minimum width, +-# flags.  
-erronous conversion are treated as %c for the erronous character while also applying all settings (try "%10.3t" !)
