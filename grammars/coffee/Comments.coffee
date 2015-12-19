# CHANGELOG
# Written by Josh Grooms on 20151208

# COMMENTBLOCK - Captures any valid block comment in Stylus.
commentBlock =
    begin: /\s*(\/\*)/;
    beginCaptures:
        1: name: 'comment.block.open.stylus';
    end: /\*\//;
    endCaptures: 'comment.block.close.stylus';
    contentName: 'comment.block.content.stylus';
    name: 'comment.block.stylus';
# COMMENTLINE - Captures any valid single-line comment in Stylus.
commentLine =
    match: /\s*(\/\/)(.*)\r?\n/;
    captures:
        1: name: 'comment.line.open.stylus';
        2: name: 'comment.line.content.stylus';
    name: 'comment.line.stylus';
# COMMENTSECTION - Captures comments that are intended to denote broad sections of code.
commentSection =
    match: /(\/\*\*)(.*)(\*\*\/)\r?\n/;
    captures:
        1: name: 'comment.section.open.stylus';
        2: name: 'comment.section.title.stylus';
        3: name: 'comment.section.close.stylus';
    name: 'comment.section.stylus';



## DOCUMENTATION COMMENTS ##
docSyntax =
    match: /SYNTAX/;
    name: 'comment.documentation.syntax.stylus';

docOutput =
    match: /OUTPUT[S]?/;
    name: 'comment.documentation.output.stylus';

docInput =
    match: /INPUT[S]?/;
    name: 'comment.documentation.input.stylus';

docProperties =
    match: /PROPERTY|PROPERTIES/;
    name: 'comment.documentation.properties.stylus';

# DOCUMENTATION - Captures any documentation comments written according to my personal standard.
documentation =
    begin: /(\/\*)\s*([A-Z0-9_-]+)\s*(?=\-)/;
    beginCaptures:
        1: name: 'comment.documentation.open.stylus';
        2: name: 'comment.documentation.title.stylus';
    contentName: 'comment.documentation.content.stylus';
    end: /\*\//;
    endCaptures: 'comment.documentation.close.stylus';
    patterns: [ docSyntax, docOutput, docInput, docProperties ];



# Ordering is important here
module.exports = [ commentSection, documentation, commentBlock, commentLine ];
