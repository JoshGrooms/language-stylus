# CHANGELOG
# Written by Josh Grooms on 20151208

{ makeGrammar, rule } = require('atom-syntax-tools');

grammar =
    fileTypes:      [ 'styl' ];
    name:           'Stylus';
    scopeName:      'source.stylus';

    patterns:
        [
            require('./Comments'),
            require('./Keywords'),

            require('./Functions'),
            require('./Literals'),
            require('./Properties'),

            require('./Minutiae'),
            require('./Selectors'),

            require('./Operators'),
        ];


flattenPatterns = ->
    result = [];
    for pattern in grammar.patterns
        if Array.isArray(pattern)
            for subpattern in pattern
                result = result.concat(subpattern);
        else
            result = result.concat(pattern);

    grammar.patterns = result;


flattenPatterns();
makeGrammar(grammar, 'CSON');
