# CHANGELOG
# Written by Josh Grooms on 20151210


# RXP =


# DEBLANK - Removes all whitespace from a string.
String::deblank = ->
    return @replace(/(\s*|\r|\n)/gm, '');

Patterns =


    Booleans:
        match: /\b(false|true)\b/;
        name: 'literal.boolean.stylus';

    Colors:
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

    Numbers:
        match:
            ///\b
                \d+ (?: \. \d+ )?
            ///;
        name: 'literal.number.stylus';

    Separator:
        match: /\,/;
        name: 'operator.character.separator.stylus';

    Styles:
        match:
            ///\b(
                dark                |
                darker              |
                dashed              |
                faded               |
                inset               |
                light               |
                lighter             |
                none                |
                normal              |
                opaque              |
                outset              |
                semidark            |
                semifaded           |
                semilight           |
                semiopaque          |
                semitransparent     |
                semitranslucent     |
                solid               |
                transparent         |
                translucent
            )\b///;
        name: 'keyword.style.stylus';

    Units:
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




module.exports = { Patterns };
