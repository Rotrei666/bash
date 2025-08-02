#!/bin/bash

# ==============================
# Bash Parsing Demonstration
# ==============================

echo "=============================="
echo "1. Tokenization"
echo "=============================="
echo "Tokenization: Bash breaks input into tokens using whitespace and special characters."
echo 'Example: echo Hello, World'
echo "Command: 'echo'   Arguments: 'Hello,' and 'World'"
echo
echo "Command output:"
echo Hello, World
echo

echo "=============================="
echo "2. Command Identification"
echo "=============================="
cmd="echo"
echo "Bash identifies the first token as the command to run."
echo "Example: \$cmd Hello"
echo
echo "Command output:"
$cmd Hello
echo

echo "=============================="
echo "3. Expansions"
echo "=============================="
name="Alice"
echo "Bash performs expansions before running commands."
echo "Types: Variable, Arithmetic, Command Substitution, Brace Expansion"
echo

echo "Variable Expansion: \$name = $name"
echo "Arithmetic Expansion: \$(( 3 + 4 )) = $(( 3 + 4 ))"
echo "Command Substitution: \$(date +%Y) = $(date +%Y)"
echo "Brace Expansion: echo {1..4}"
echo {1..4}
echo

echo "🔀 Combined example:"
echo 'echo $name has {1..3} apples and $(( 5 + 2 ))'
echo $name has {1..3} apples and $(( 5 + 2 ))
echo

echo "=============================="
echo "4. Word Splitting"
echo "=============================="
phrase="Hello world again"
echo "Without quotes (splits into multiple words):"
echo $phrase

echo "With quotes (preserves as one word):"
echo "$phrase"
echo

echo "=============================="
echo "5. Globbing (Filename Expansion)"
echo "=============================="
echo "Wildcard patterns expanded to filenames:"
echo "Example: echo *.sh"
echo *.sh
echo

echo "=============================="
echo "6. Metacharacters - Control"
echo "=============================="
echo "Used to control execution and parsing:"
echo
echo "  ' '  - (Space) Token separator → separates commands and arguments"
echo "  ;    - Run sequentially        → cmd1 ; cmd2"
echo "  &&   - Run next only if success → cmd1 && cmd2"
echo "  ||   - Run next only if fail    → cmd1 || cmd2"
echo "  |    - Pipe output to next cmd  → cmd1 | cmd2"
echo
echo "Examples:"
echo 'echo Hello ; echo World'
echo Hello ; echo World

echo 'echo OK && echo Success'
echo OK && echo Success

echo 'false || echo Failed'
false || echo Failed

echo 'echo Hello | tr a-z A-Z'
echo Hello | tr a-z A-Z

echo
echo "Example showing space as metacharacter:"
echo 'echoHelloWorld   → Error (no space)'
echoHelloWorld 2>/dev/null || echo "Invalid: missing space"

echo 'echo Hello World → OK (space separates command and args)'
echo Hello World
echo

echo "=============================="
echo "7. Metacharacters - Redirection"
echo "=============================="
echo "Used to redirect input/output:"
echo "  >   - Redirect stdout (overwrite)"
echo "  >>  - Redirect stdout (append)"
echo "  <   - Redirect stdin"
echo "  2>  - Redirect stderr"
echo "  &>  - Redirect stdout and stderr"
echo

echo 'echo Output > output.txt'
echo Output > output.txt

echo 'echo More >> output.txt'
echo More >> output.txt

echo 'wc -l < output.txt'
wc -l < output.txt

echo 'ls nonexisting 2> error.log'
ls nonexisting 2> error.log

echo 'ls nonexisting &> both.log'
ls nonexisting &> both.log
echo

echo "=============================="
echo "End of demo!"
echo "=============================="