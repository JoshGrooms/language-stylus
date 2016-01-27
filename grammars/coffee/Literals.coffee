# CHANGELOG
# Written by Josh Grooms on 20151210


{ Patterns } = require('./Utilities');

emptyStrings =
    match: /([\'\"])([\'\"])/;
    captures:
        1: name: 'enclosure.string.open.stylus';
        2: name: 'enclosure.string.close.stylus';


stringDouble =
    match: /(\")(.*)(\")/
    captures:
        1: name: 'enclosure.string.open.stylus'
        2: name: 'literal.string.content.stylus'
        3: name: 'enclosure.string.close.stylus'

stringSingle =
    match: /(\')(.*)(\')/
    captures:
        1: name: 'enclosure.string.open.stylus'
        2: name: 'literal.string.content.stylus'
        3: name: 'enclosure.string.close.stylus'

module.exports =
    [
        stringDouble,
        stringSingle,

        Patterns.Booleans,
        Patterns.Colors,
        Patterns.Hexadecimals,
        Patterns.Numbers,
        Patterns.Styles,
        Patterns.Units,
    ];
