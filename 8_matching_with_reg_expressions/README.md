The patterns you’ve just seen, are actually a shortcut to the m// operator. Like the qw operator, it can use a set of paired ([], {}, <>, ()) or non-paired (identical) delimiters to check for a pattern. Choose your delimiters wisely, so that they don’t conflict with the contents of the pattern. They won’t conflict if they are paired, too, in the contents of the pattern (like (), {}, [], but unlike <>). Another good remark is that you shouldn’t use // as delimiters if you are going to check for http:// URL strings.


/fred/ #is the same as:
m/fred/
m{fred}
m[fred]
m!fred!
