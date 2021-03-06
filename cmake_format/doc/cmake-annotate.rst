.. _render_html:

==============
cmake-annotate
==============

The ``cmake-annotate`` frontend
program which can create semantic HTML documents from parsed listfiles.
This enables, in particular, semantic highlighting for your
code documentation.

.. dynamic: annotate-usage-begin

.. code:: text

    usage:
    cmake-annotate [-h]
                 [--format {page,stub}]
                 [-o OUTFILE_PATH]
                 [-c CONFIG_FILE]
                 infilepath [infilepath ...]

    Parse cmake listfiles and re-emit them with semantic annotations in HTML.

    Some options regarding parsing are configurable by providing a configuration
    file. The configuration file format is the same as that used by cmake-format,
    and the same file can be used for both programs.

    cmake-format can spit out the default configuration for you as starting point
    for customization. Run with `--dump-config [yaml|json|python]`.

    positional arguments:
      infilepaths

    optional arguments:
      -h, --help            show this help message and exit
      -v, --version         show program's version number and exit
      -f {page,stub}, --format {page,stub}
                            whether to output a standalone `page` complete with
                            <html></html> tags, or just the annotated content
      -o OUTFILE_PATH, --outfile-path OUTFILE_PATH
                            Where to write the formatted file. Default is stdout.
      -c CONFIG_FILE, --config-file CONFIG_FILE
                            path to configuration file

    Various configuration options/parameters for formatting:


    Options effecting formatting.:
      --line-width LINE_WIDTH
                            How wide to allow formatted cmake files
      --tab-size TAB_SIZE   How many spaces to tab for indent
      --max-subgroups-hwrap MAX_SUBGROUPS_HWRAP
                            If an argument group contains more than this many sub-
                            groups (parg or kwarg groups) then force it to a
                            vertical layout.
      --max-pargs-hwrap MAX_PARGS_HWRAP
                            If a positional argument group contains more than this
                            many arguments, then force it to a vertical layout.
      --max-rows-cmdline MAX_ROWS_CMDLINE
                            If a cmdline positional group consumes more than this
                            many lines without nesting, then invalidate the layout
                            (and nest)
      --separate-ctrl-name-with-space [SEPARATE_CTRL_NAME_WITH_SPACE]
                            If true, separate flow control names from their
                            parentheses with a space
      --separate-fn-name-with-space [SEPARATE_FN_NAME_WITH_SPACE]
                            If true, separate function names from parentheses with
                            a space
      --dangle-parens [DANGLE_PARENS]
                            If a statement is wrapped to more than one line, than
                            dangle the closing parenthesis on its own line.
      --dangle-align {prefix,prefix-indent,child,off}
                            If the trailing parenthesis must be 'dangled' on its
                            on line, then align it to this reference: `prefix`:
                            the start of the statement, `prefix-indent`: the start
                            of the statement, plus one indentation level, `child`:
                            align to the column of the arguments
      --min-prefix-chars MIN_PREFIX_CHARS
                            If the statement spelling length (including space and
                            parenthesis) is smaller than this amount, then force
                            reject nested layouts.
      --max-prefix-chars MAX_PREFIX_CHARS
                            If the statement spelling length (including space and
                            parenthesis) is larger than the tab width by more than
                            this amount, then force reject un-nested layouts.
      --max-lines-hwrap MAX_LINES_HWRAP
                            If a candidate layout is wrapped horizontally but it
                            exceeds this many lines, then reject the layout.
      --line-ending {windows,unix,auto}
                            What style line endings to use in the output.
      --command-case {lower,upper,canonical,unchanged}
                            Format command names consistently as 'lower' or
                            'upper' case
      --keyword-case {lower,upper,unchanged}
                            Format keywords consistently as 'lower' or 'upper'
                            case
      --always-wrap [ALWAYS_WRAP [ALWAYS_WRAP ...]]
                            A list of command names which should always be wrapped
      --enable-sort [ENABLE_SORT]
                            If true, the argument lists which are known to be
                            sortable will be sorted lexicographicall
      --autosort [AUTOSORT]
                            If true, the parsers may infer whether or not an
                            argument list is sortable (without annotation).
      --require-valid-layout [REQUIRE_VALID_LAYOUT]
                            By default, if cmake-format cannot successfully fit
                            everything into the desired linewidth it will apply
                            the last, most agressive attempt that it made. If this
                            flag is True, however, cmake-format will print error,
                            exit with non-zero status code, and write-out nothing

    Options affecting comment reflow and formatting.:
      --bullet-char BULLET_CHAR
                            What character to use for bulleted lists
      --enum-char ENUM_CHAR
                            What character to use as punctuation after numerals in
                            an enumerated list
      --first-comment-is-literal [FIRST_COMMENT_IS_LITERAL]
                            If comment markup is enabled, don't reflow the first
                            comment block in each listfile. Use this to preserve
                            formatting of your copyright/license statements.
      --literal-comment-pattern LITERAL_COMMENT_PATTERN
                            If comment markup is enabled, don't reflow any comment
                            block which matches this (regex) pattern. Default is
                            `None` (disabled).
      --fence-pattern FENCE_PATTERN
                            Regular expression to match preformat fences in
                            comments default=r'^\s*([`~]{3}[`~]*)(.*)$'
      --ruler-pattern RULER_PATTERN
                            Regular expression to match rulers in comments
                            default=r'^\s*[^\w\s]{3}.*[^\w\s]{3}$'
      --explicit-trailing-pattern EXPLICIT_TRAILING_PATTERN
                            If a comment line matches starts with this pattern
                            then it is explicitly a trailing comment for the
                            preceeding argument. Default is '#<'
      --hashruler-min-length HASHRULER_MIN_LENGTH
                            If a comment line starts with at least this many
                            consecutive hash characters, then don't lstrip() them
                            off. This allows for lazy hash rulers where the first
                            hash char is not separated by space
      --canonicalize-hashrulers [CANONICALIZE_HASHRULERS]
                            If true, then insert a space between the first hash
                            char and remaining hash chars in a hash ruler, and
                            normalize its length to fill the column
      --enable-markup [ENABLE_MARKUP]
                            enable comment markup parsing and reflow

    Options affecting the linter:
      --disabled-codes [DISABLED_CODES [DISABLED_CODES ...]]
                            a list of lint codes to disable
      --function-pattern FUNCTION_PATTERN
                            regular expression pattern describing valid function
                            names
      --macro-pattern MACRO_PATTERN
                            regular expression pattern describing valid macro
                            names
      --global-var-pattern GLOBAL_VAR_PATTERN
                            regular expression pattern describing valid names for
                            variables with global scope
      --internal-var-pattern INTERNAL_VAR_PATTERN
                            regular expression pattern describing valid names for
                            variables with global scope (but internal semantic)
      --local-var-pattern LOCAL_VAR_PATTERN
                            regular expression pattern describing valid names for
                            variables with local scope
      --private-var-pattern PRIVATE_VAR_PATTERN
                            regular expression pattern describing valid names for
                            privatedirectory variables
      --public-var-pattern PUBLIC_VAR_PATTERN
                            regular expression pattern describing valid names for
                            publicdirectory variables
      --keyword-pattern KEYWORD_PATTERN
                            regular expression pattern describing valid names for
                            keywords used in functions or macros
      --max-conditionals-custom-parser MAX_CONDITIONALS_CUSTOM_PARSER
                            In the heuristic for C0201, how many conditionals to
                            match within a loop in before considering the loop a
                            parser.
      --min-statement-spacing MIN_STATEMENT_SPACING
                            Require at least this many newlines between statements
      --max-statement-spacing MAX_STATEMENT_SPACING
                            Require no more than this many newlines between
                            statements
      --max-returns MAX_RETURNS
      --max-branches MAX_BRANCHES
      --max-arguments MAX_ARGUMENTS
      --max-localvars MAX_LOCALVARS
      --max-statements MAX_STATEMENTS

    Options effecting file encoding:
      --emit-byteorder-mark [EMIT_BYTEORDER_MARK]
                            If true, emit the unicode byte-order mark (BOM) at the
                            start of the file
      --input-encoding INPUT_ENCODING
                            Specify the encoding of the input file. Defaults to
                            utf-8
      --output-encoding OUTPUT_ENCODING
                            Specify the encoding of the output file. Defaults to
                            utf-8. Note that cmake only claims to support utf-8 so
                            be careful when using anything else

.. dynamic: annotate-usage-end

``--format stub`` will output just the marked-up listfile content. The
markup is done as ``<span>`` elements with different css classes for each
parse-tree node or lexer token. The content is not encapsulated in any root
element (such as a ``<div>``). ``--format page`` will embed that content
into a full page with a root ``<html>`` and an embedded stylesheet.

The example listfile in the README, for example, can be rendered as:

.. raw:: html
   :file: example_rendered.html
