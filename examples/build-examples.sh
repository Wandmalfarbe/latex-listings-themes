#!/bin/bash
set -e

echo "##"
echo "# building examples"
echo "##"
echo ""

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# these examples are skipped because they don't run on travis (for now)
skippedExamples=("language-chinese" "language-japanese")

# loop all files in the current folder
for f in *; do
	# run only for folders
    if [ -d "$f" ]; then

    	if containsElement "$f" "${skippedExamples[@]}"; then
    		echo "skipping '$f'"
    		echo ""
    	else
    		echo "building '$f'"
    		cd "$f"

    		echo "    - running pandoc build script"
        pandoc "../document.md" -o "preview.pdf" --from markdown --template "../../eisvogel.tex" --listings --include-in-header "theme-colors.tex" --include-in-header "../theme-style.tex"

        echo "    - generating preview png"
        pdftoppm -r 200 -png "preview.pdf" > "preview.png"

        echo ""
        cd ".."
    	fi
    fi
done
