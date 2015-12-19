# CHANGELOG
# Written by Josh Grooms on 20151208



keywordControls =
    match:
        ///\s* \b(
            else    |
            for     |
            if      |
            return  |
            unless
        )\b///;
    name: 'keyword.control.stylus';

keywordOperators =
    match:
        ///\s* \b(
            a       |
            and     |
            defined |
            extend  |
            extends |
            in      |
            is      |
            isnt    |
            not
        )\b///;
    name: 'operator.word.stylus';

keywordQualifiers =
    match:
        ///\b(
            !important
        )\b///;
    name: 'keyword.qualifier.stylus';

module.exports =
    [
        keywordControls,
        keywordOperators,
        keywordQualifiers,
    ];
