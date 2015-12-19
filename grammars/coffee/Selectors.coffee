# CHANGELOG
# Written by Josh Grooms on 20151208


{ Patterns } = require('./Utilities');



classSelector =
    match: /([\w\-]+)\s*(?!\()/;
    name: 'type.name.stylus';

descendent =
    match: /\>/;
    name: 'operator.character.descendent.stylus';

parent =
    match: /\&/;
    name: 'operator.character.parent.stylus';



attributeSelector =
    match: /(\.)([\w\-]+)/;
    captures:
        1: name: 'operator.character.selector.stylus';
        2: name: 'type.name.stylus';


stateSelector =
    match: /(\:)([\w\-]+)/;
    captures:
        1: name: 'operator.character.selector.stylus';
        2: name: 'type.state.stylus';

selectorList =
    begin:
        ///
            ^\s* (?: (\&) \s*)?
            (?:
                (?: (\.) ([\w\-]+) ) |
                (?: (\:) ([\w\-]+) ) |
                ([\w+\-]+)
            )
            (?! \:\s+ )
        ///;
    beginCaptures:
        1: name: 'operator.character.parent.stylus';
        2: name: 'operator.character.selector.stylus';
        3: name: 'type.name.stylus';
        4: name: 'operator.character.selector.stylus';
        5: name: 'type.state.stylus';
        6: name: 'type.name.stylus';
    end:
        ///
            \n | (?= \{ | \@ )
        ///;
    patterns:
        [
            attributeSelector,
            classSelector,
            stateSelector,
            parent,

            descendent,
            Patterns.Separator,
        ];







module.exports =
    [
        selectorList
    ];
