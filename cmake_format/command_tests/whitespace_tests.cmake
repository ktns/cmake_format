# test: allow_superfluous_newlines
#[=[
allow_superfluous_newlines = 1
]=]
# This comment is just here to start the file


# This comment has an extra newline before it
statement(foo bar baz)


statement(foo bar baz)

# test: numlines_pre_statement_comment
#[=[
numlines_pre_statement_comment = 1
]=]
# This comment is just here to start the file


# This comment has an extra newline before it
statement(foo bar baz)

statement(foo bar baz)
