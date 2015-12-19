# CHANGELOG
# Written by Josh Grooms on 20151210



{ Patterns } = require('./Utilities');



defaultArgument =
    begin:
        ///
            ([\w\-]+) \s*
            (\=)
        ///;
    beginCaptures:
        1: name: 'variable.argument.input.stylus';
        2: name: 'operator.character.assignment.stylus';
    end: /(?=[\,\)])/;
    patterns:
        [
            Patterns.Booleans,
            Patterns.Colors,
            Patterns.Numbers,
            Patterns.Separator,
            Patterns.Styles,
            Patterns.Units,

            {
                match: /[\w\-]+/;
                name: 'variable.name.stylus';
            }
        ]

argument =
    match: /[\w\-]+/;
    name: 'variable.argument.input.stylus';



mixins =
    match: /// ^\s* ([\w\-]+) \s* (\() \s* (\)) ///;
    captures:
        1: name: 'function.name.stylus';
        2: name: 'enclosure.group.open.stylus';
        3: name: 'enclosure.group.close.stylus';

functions =
    begin: /// ^([\w\-]+) \s* (\() ///;
    beginCaptures:
        1: name: 'function.name.stylus';
        2: name: 'enclosure.group.open.stylus';

    end: /\)/;
    endCaptures: 'enclosure.group.close.stylus';

    patterns:
        [
            defaultArgument,
            argument,
        ];


module.exports = [ mixins, functions ];
