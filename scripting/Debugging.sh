#!/bin/bash
# The -x option prints the commands in the sequrence as they executed.
# the '+' sign  will appear before each command.
set -x
echo Hello
echo World
set +x   # '+' will disable the set  mode.

# The -e option  will terminate the execution when the error occurs.
set -e
echo Hello
sl   #it is invalid command, the execution will terminate.
echo World
set +e

# The -eo pipefail option  will terminate the execution when the error occurs in pipeline.
set -eo pipefail
echo Hello
sl | echo World # pipeline command failed and terminate the execution
echo Done!
set +eo pipefail
