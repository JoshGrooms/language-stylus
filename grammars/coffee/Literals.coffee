# CHANGELOG
# Written by Josh Grooms on 20151210


{ Patterns } = require('./Utilities');

# DEBLANK - Removes all whitespace from a string.
String::deblank = ->
    return @replace(/(\s*|\r|\n)/gm, '');


booleans =
    match: /\b(false|true)\b/;
    name: 'literal.boolean.stylus';

colors =
    match:
        ///\b(
            black           |
            blue            |
            green           |
            red             |
            transparent     |
            white
        )\b///;
    name: 'literal.color.stylus';

numbers =
    match:
        ///
            \d+
        ///;
    name: 'literal.number.stylus';

units =
    match:
        '''
            (?<= \\d )
            (
                %       |
                ch      |
                cm      |
                deg     |
                dpi     |
                dpcm    |
                dppx    |
                em      |
                ex      |
                grad    |
                in      |
                mm      |
                ms      |
                pc      |
                pt      |
                px      |
                rad     |
                rem     |
                turn    |
                s       |
                vh      |
                vmin    |
                vw
            )\\b
        '''.deblank();
    name: 'literal.unit.stylus';


styles =
    match:
        ///\b(
            dark                |
            darker              |
            inset               |
            light               |
            lighter             |
            normal              |
            opaque              |
            outset              |
            semidark            |
            semilight           |
            semitransparent     |
            semitranslucent     |
            transparent         |
            translucent
        )\b///;
    name: 'literal.style.stylus';



module.exports =
    [
        Patterns.Booleans,
        Patterns.Colors,
        Patterns.Numbers,
        Patterns.Styles,
        Patterns.Units,
    ];
