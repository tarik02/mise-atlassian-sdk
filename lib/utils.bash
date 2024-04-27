#!/usr/bin/env bash

set -euo pipefail

# TODO: Ensure this is the correct GitHub homepage where releases can be downloaded for atlassian-sdk.
GH_REPO="https://github.com/tarik02/asdf-atlassian-sdk"
TOOL_NAME="atlassian-sdk"
TOOL_TEST="atlas-version"

fail() {
	echo -e "asdf-$TOOL_NAME: $*"
	exit 1
}

curl_opts=(-fsSL)

sort_versions() {
	sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' |
		LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
	git ls-remote --tags --refs "$GH_REPO" |
		grep -o 'refs/tags/.*' | cut -d/ -f3- |
		sed 's/^v//' # NOTE: You might want to adapt this sed to remove non-version strings from tags
}

list_all_versions() {
	curl "${curl_opts[@]}" \
		--url 'https://marketplace.atlassian.com/rest/2/addons/atlassian-plugin-sdk-tgz/versions' \
		--header 'Accept: application/json' | jq '._embedded.versions | map(.name) | .[]' -r
}

download_release() {
	local version filename url
	version="$1"
	filename="$2"

	url="$(curl "${curl_opts[@]}" \
		--url "https://marketplace.atlassian.com/rest/2/addons/atlassian-plugin-sdk-tgz/versions/name/$version" \
		--header 'Accept: application/json' | jq -r '.vendorLinks.binary' \
	)"

	echo "* Downloading $TOOL_NAME release $version..."
	curl "${curl_opts[@]}" -o "$filename" -C - "$url" || fail "Could not download $url"
}

install_version() {
	local install_type="$1"
	local version="$2"
	local install_path="${3%/bin}"

	if [ "$install_type" != "version" ]; then
		fail "asdf-$TOOL_NAME supports release installs only"
	fi

	(
		mkdir -p "$install_path"
		cp -r "$ASDF_DOWNLOAD_PATH"/* "$install_path"

		local tool_cmd
		tool_cmd="$(echo "$TOOL_TEST" | cut -d' ' -f1)"
		test -x "$install_path/bin/$tool_cmd" || fail "Expected $install_path/$tool_cmd to be executable."

		echo "$TOOL_NAME $version installation was successful!"
	) || (
		rm -rf "$install_path"
		fail "An error occurred while installing $TOOL_NAME $version."
	)
}
