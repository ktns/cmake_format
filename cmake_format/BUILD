package(default_visibility=["//visibility:public"])

py_library(
    name="cmake_format",
    srcs=[
        "__init__.py",
        "__main__.py",
        "annotate.py",
        "commands.py",
        "common.py",
        "config_util.py",
        "configuration.py",
        "ctest_to.py",
        "formatter.py",
        "genparsers.py",
        "invocation_tests.py",
        "layout_tests.py",
        "lexer.py",
        "lexer_tests.py",
        "markup.py",
        "markup_tests.py",
        "parse/__init__.py",
        "parse/additional_nodes.py",
        "parse/argument_nodes.py",
        "parse/body_nodes.py",
        "parse/common.py",
        "parse/printer.py",
        "parse/simple_nodes.py",
        "parse/statement_node.py",
        "parse/util.py",
        "parse_funs/__init__.py",
        "parse_funs/add_executable.py",
        "parse_funs/add_library.py",
        "parse_funs/add_xxx.py",
        "parse_funs/break.py",
        "parse_funs/deprecated.py",
        "parse_funs/external_project.py",
        "parse_funs/fetch_content.py",
        "parse_funs/file.py",
        "parse_funs/foreach.py",
        "parse_funs/install.py",
        "parse_funs/list.py",
        "parse_funs/miscellaneous.py",
        "parse_funs/random.py",
        "parse_funs/set.py",
        "parse_funs/set_target_properties.py",
        "parser_tests.py",
        "pypi/setup.py",
        "render.py",
        "tests.py",
        "tools/__init__.py",
        "tools/parse_cmake_help.py",
        "tools/properties.jinja.py",
        "tools/usage_lexer.py",
        "tools/usage_parser.py",
        "tools/variables.jinja.py"
    ],
    data=["templates/layout.html.tpl",
          "templates/style.css"])

# -- Python 2 --

py_binary(
    name="cmake-format",
    srcs=["__main__.py"],
    deps=[":cmake_format"],
    main="__main__.py"
)

py_test(
    name="invocation_tests",
    srcs=["invocation_tests.py"],
    deps=[":cmake_format",
          "//cmake_format/test:data"],
    python_version="PY2",
    )

py_test(
    name="layout_tests",
    srcs=["layout_tests.py"],
    deps=[":cmake_format"],
    python_version="PY2",
    )

py_test(
    name="lexer_tests",
    srcs=["lexer_tests.py"],
    deps=[":cmake_format"],
    python_version="PY2",
    )

py_test(
    name="markup_tests",
    srcs=["markup_tests.py"],
    deps=[":cmake_format"],
    python_version="PY2",
    )

py_test(
    name="parser_tests",
    srcs=["parser_tests.py"],
    deps=[":cmake_format"],
    python_version="PY2",
    )

# -- Python 3 --

py_test(
    name="invocation_tests_py3",
    srcs=["invocation_tests.py"],
    main="invocation_tests.py",
    deps=[":cmake_format",
          "//cmake_format/test:data"],
    python_version="PY3",
    )

py_test(
    name="layout_tests_py3",
    srcs=["layout_tests.py"],
    main="layout_tests.py",
    deps=[":cmake_format"],
    python_version="PY3",
    )

py_test(
    name="lexer_tests_py3",
    srcs=["lexer_tests.py"],
    main="lexer_tests.py",
    deps=[":cmake_format"],
    python_version="PY3",
    )

py_test(
    name="markup_tests_py3",
    srcs=["markup_tests.py"],
    main="markup_tests.py",
    deps=[":cmake_format"],
    python_version="PY3",
    )

py_test(
    name="parser_tests_py3",
    srcs=["parser_tests.py"],
    main="parser_tests.py",
    deps=[":cmake_format"],
    python_version="PY3",
    )
