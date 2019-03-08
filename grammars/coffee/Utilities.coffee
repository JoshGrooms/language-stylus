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

    Enumerators:
        match:
            ///\b(
                dark                |
                darker              |
                light               |
                lighter             |
                faded               |
                opaque              |
                semidark            |
                semifaded           |
                semilight           |
                semiopaque          |
                semitransparent     |
                semitranslucent     |
                translucent
            )\b///;
        name: 'type.enumeration.stylus';

    Hexadecimals:
        match: /(\#[0-9a-fA-F]+)\b/;
        name: 'literal.number.hexadecimal.stylus';

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
                auto                |
                bold                |
                border-box          |
                content-box         |
                dashed              |
                dotted              |
                double              |
                fill                |
                groove              |
                hidden              |
                important           |
                inherit             |
                initial             |
                inset               |
                none                |
                normal              |
                outset              |
                padding-box         |
                repeat              |
                ridge               |
                round               |
                solid               |
                space               |
                stretch             |
                transparent         |
                underline
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
