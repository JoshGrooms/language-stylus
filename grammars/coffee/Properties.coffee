# CHANGELOG
# Written by Josh Grooms on 20151210


{ Patterns } = require('./Utilities');


properties =
    match:
        ///
            (?: (?:^\s+) | (?: (\{) \s*) )
            ([\w\-]+)
            (\:) \s+
        ///;
    captures:
        1: name: 'enclosure.block.open.stylus';
        2: name: 'property.name.stylus';
        3: name: 'operator.character.property-assignment.stylus';

# properties =
#     begin:
#         ///
#             (?: (?:^\s+) | (?: (\{) \s*) )
#             ([\w\-]+)
#             (\:) \s+
#         ///;
#     beginCaptures:
#         1: name: 'enclosure.block.open.stylus';
#         2: name: 'property.name.stylus';
#         3: name: 'operator.character.property-assignment.stylus';
#
#     end: /(\;)|\r?\n/;
#     endCaptures:
#         1: name: 'operator.character.line-terminator.stylus';
#
#     patterns:
#         [
#             Patterns.Booleans,
#             Patterns.Colors,
#             Patterns.Numbers,
#             Patterns.Separator,
#             Patterns.Styles,
#             Patterns.Units,
#         ]



module.exports =
    [
        properties,
    ];
