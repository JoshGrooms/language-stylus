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
            name: 'enclosure.index.open.stylus';
        }
        {
            match: /\]/;
            name: 'enclosure.index.close.stylus';
        }
        {
            match: /\(/;
            name: 'enclosure.group.open.stylus';
        }
        {
            match: /\)/;
            name: 'enclosure.group.close.stylus';
        }
        {
            match: /\{/;
            name: 'enclosure.block.open.stylus';
        }
        {
            match: /\}/;
            name: 'enclosure.block.close.stylus';
        }
    ];

module.exports = [ operators, enclosures ];
