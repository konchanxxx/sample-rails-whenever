.PHONY: cron_update
cron_update:
	bundle exec whenever --update-crontab

.PHONY: cron_clear
cron_clear:
	bundle exec whenever --clear-crontab

.PHONY: cron_list	
cron_list:
	crontab -l
