git-calendar calendars/*.yaml -o out -i out/index.html -b out/body.html \
    --timezone=Europe/Helsinki \
    --timezone=Europe/Stockholm \
    --base-url=https://coderefinery.github.io/calendar/ \
    "$@"
