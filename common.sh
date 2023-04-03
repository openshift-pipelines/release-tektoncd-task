#
# Helper Functions
#

# print error message and exit on error.
function fail() {
	echo "ERROR: ${*}" 2>&1
	exit 1
}

# print out a strutured message.
function phase() {
	echo "---> Phase: ${*}..."
}

# inspect the path after the informed executable name.
function probe_bin_on_path() {
	if ! type -a ${1} >/dev/null 2>&1; then
		fail "Can't find '${1}' on 'PATH=${PATH}'"
	fi
}
