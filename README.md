# xojo_AVW_utils - functions useful in many projects

### Author Aaron Wohl https://github.com/avwohl

### Where to find this file:
[https://github.com/avwohl/xojo_AVW_utils/blob/master/README.md](https://github.com/avwohl/xojo_AVW_utils/blob/master/README.md)

### Documentation on using git and submodules and these libs in xojo:
[https://github.com/avwohl/xojo_documentation](https://github.com/avwohl/xojo_documentation)

### Download this git submodule for settings for xojo:
[https://github.com/avwohl/xojo_AVW_utils](https://github.com/avwohl/xojo_AVW_utils)

### Functions
```
Function get_parent_path(infile as FolderItem) As string
// return the directory of a given filename
// the returned directory is suitable to add on a new file in the same dir
// for example:  if the input file is bar/foo.txt then bar/ would be returned
// This differs from the usual xojo infile.Parent.Native path as that
//  may have a trailing / or not depending on the OS
```
```
Function get_unix_end_of_line() As string
```
```
Sub ignore_boolean(ignore_me as boolean)
#Pragma unused ignore_me
// used to call a function that returns a boolean but then not use the result
// in c++ this would be done via casting to void :
// (void)some_func();
```
```
Function isDigit(ch as Integer) As Boolean
// is the passed integer the ascii code for a digit
```
```
Function to_text(astr as string) As text
// convert a string to text. Currently the same as .ToText
// however, it may be needed to set the character set also
// so doing the conversion here allows setting the character set also
// if the app needs that
```
