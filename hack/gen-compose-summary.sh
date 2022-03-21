#!/usr/bin/env bash
set -e

# require yq
command -v yq >/dev/null 2>&1 || {
    echo >&2 "yq (https://github.com/mikefarah/yq) is not installed. Aborting."
    exit 1
}

# Absolute path of repository
repository=$(git rev-parse --show-toplevel)
compose_folder="${repository}/compose-files"
compose_summary_file="${compose_folder}"/README.md

# Gather all compose using the common library, excluding common-test
stable_compose=$(find "${compose_folder}/applications" -name "compose-info.yaml" | sort)

echo "# Compose Files overview" > "${compose_summary_file}"

echo "### Stable compose:" >> "${compose_summary_file}"
echo "| Chart | Description | Blog article | YouTube Video |" >> "${compose_summary_file}"
echo "| ----- | ----------- | ------------ | ------------- |" >> "${compose_summary_file}"
for i in ${stable_compose[@]}
do
    chart_data=($(yq eval '.name, .blog_url, .video_url, .description' "$i"))
    chart_name="${chart_data[0]}"
    chart_blog_url="${chart_data[1]}"
    chart_video_url="${chart_data[2]}"
    chart_description="${chart_data[@]:1}"
    echo "| [${chart_name}](${chart_name}) | ${chart_blog_url} | ${chart_video_url} | ${chart_description} | ${chart_blog_url} | ${chart_video_url} |" >> "${compose_summary_file}"
done
