git-calendar calendars/*.yaml out -i index.html -b body.html \
    --timezone=Europe/Helsinki \
    --timezone=Europe/Stockholm \
    --base-url=https://coderefinery.github.io/calendar/ \
    "$@"
