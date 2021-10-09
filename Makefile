ICS=$(wildcard calendars/*.yaml)
OUT=$(patsubst calendars/%.yaml,out/%.ics,$(ICS))

build: $(OUT)
	rm -f out/index.html
	echo "Available calendars:</br>" >> out/index.html
	echo "<ul>" >> out/index.html
	files="$(shell cd out ; ls *.ics)" ; \
	for file in $${files}; do \
	    echo $${file} ; \
	    echo "<li><a href=\"$$file\">$$file</a></br></li>" >> out/index.html ; \
	done
	echo "</ul>" >> out/index.html
	echo "<br>" >> out/index.html
	echo "To subscribe to a calendar: (google calendar): Add to other calendars → From URL (outlook web) Add Calendar → Subscribe from web.<br>" >> out/index.html
	echo "<ul>" >> out/index.html
	echo   "<li>Google calendar: Add to other calendars → From URL.</li>" >> out/index.html
	echo "<li>Outlook web: Add Calendar → Subscribe from web.</li>" >> out/index.html
	echo   "</ul>" >> out/index.html
	echo -n "<br>Last update: git revision $(shell git rev-parse --short HEAD), built at " >> out/index.html
	date >> out/index.html

out/%.ics: calendars/%.yaml
	mkdir -p out
	python3 yaml2ics/yaml2ics.py $< > $@


clean:
	rm -r out

install:
	pip install -r yaml2ics/requirements.txt
