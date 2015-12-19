# CHANGELOG
# Written by Josh Grooms on 20151208

# OPERATORS - Captures any valid character-based operators in Stylus.
operators =
    match:
        ///(
            \, |
            \; |
            \? |
            \~ |
            \. |
            \: | \:\= |
            \^ | \^\= |
            \% | \%\= |
            \= | \=\= |
            \! | \!\= |
            \* | \*\= |
            \/ | \/\= |
            \> | \>\= |
            \< | \<\= |
            \& | \&\= | \&\& |
            \| | \|\= | \|\| |
            \+ | \+\= | \+\+ |
            \- | \-\= | \-\-
        )///;
    name: 'operator.character.stylus';

# ENCLOSURES - Captures any valid enclosure characters in Stylus.
enclosures =
    [
        {
            match: /\[/;
            name: 'enclosure.index.open.cpp';
        }
        {
            match: /\]/;
            name: 'enclosure.index.close.cpp';
        }
        {
            match: /\(/;
            name: 'enclosure.group.open.cpp';
        }
        {
            match: /\)/;
            name: 'enclosure.group.close.cpp';
        }
        {
            match: /\{/;
            name: 'enclosure.block.open.cpp';
        }
        {
            match: /\}/;
            name: 'enclosure.block.close.cpp';
        }
    ];

module.exports = [ operators, enclosures ];
