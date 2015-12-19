# CHANGELOG
# Written by Josh Grooms on 20151210



assignmentExpression =
    match: /\s*([\w\-]+)\s*(\=)/;
    captures:
        1: name: 'variable.name.stylus';
        2: name: 'operator.character.assignment.stylus';


module.exports = assignmentExpression;
