gem:
	rm -f fluentd-plugin-redaction*.gem
	gem build fluentd-plugin-redaction.gemspec

install: gem
	gem install fluentd-plugin-redaction*.gem

push: gem
	gem push fluentd-plugin-redaction*.gem

tag:
	git tag "v$$(cat VERSION)" $(RELEASE_COMMIT)
	git push origin "v$$(cat VERSION)"