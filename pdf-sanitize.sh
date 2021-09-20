#! /usr/bin/env -S bash -ex

function pdf-sanitize {
    local infile="${1}"
    local outfile
    outfile="$(basename "${1}" .pdf)-sanitized.pdf"
    local pass="${2}"

    if [ -z "${infile}" ]; then
        echo "Expect: \$infile \$pass"
        return
    fi

    if [ -n "${pass}" ]; then
        qpdf --linearize --encrypt "" "${pass}" 256 \
            --use-aes=y -- "${infile}" "${outfile}"
    else
        qpdf --linearize -- "${infile}" "${outfile}"
    fi
    echo "DONE! Sanitized file: ${outfile}"
}
