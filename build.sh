#!/bin/bash
set -eu

# define constants
RESUME_FILE="Tom_Cooper_resume.md"

display_help() {
    echo
    echo "usage: ${0} [options]"
    echo "options:"
    echo "  -e  Print versions for environment tools."
    echo "  -g  Generate resume."
    echo "  -h  Print this usage for help."
    echo "  -v  Enable verbose output."
}

display_environment_versions() {
    echo
    echo "* Git:"
    git --version
    echo
    echo "* Python:"
    python3 --version
    echo
    echo "* Visual Studio Code:"
    code --version
    echo
}

generate_resume() {
    # clean output file
    rm -f ${RESUME_FILE}

    # append title section to output file
    output_to_file "# Tom Cooper"
    output_to_file "Location: Baltimore, MD, USA"
    output_to_file "Email: tacooper@vt.edu"
    output_to_file "Website: https://github.com/tacooper"
}

output_to_file() {
    if [[ $# -eq 0 ]]; then
        echo "<br>" >> ${RESUME_FILE}
    else
        echo "$1 <br>" >> ${RESUME_FILE}
    fi
}

# handle each option specified on command line
while getopts ":eghv" FLAG; do
    case ${FLAG} in
        v)
            # enable verbose output
            set -x
            ;;
        e)
            display_environment_versions
            ;;
        g)
            generate_resume
            ;;
        h)
            display_help
            ;;
        *)
            display_help
            exit 1
            ;;
    esac
done

# ensure at least one option exists
if [[ $# -eq 0 ]]; then
    echo "Specify at least one option!"
    exit 1
fi

exit 0
