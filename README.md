Git
Как работать с ветками и тикетами:

Перед тем как начать делать тикет нужно спулить последние изменения из ветки main находясь на ветке main.

git checkout main
git pull origin main

После того как в вашей локальной ветке main появились последние изменения с удаленной ветки main, вам нужно создать свою ветку и работать уже в ней
git checkout -b feature/1_add_readme
Это создаст ветку feature/1_add_readme и переместит вас на неё

После того как вы поработали в вашей локальной ветке, насоздали комитов и считаете что закончили работу по тикету, перед тем как пушить свою ветку, нужно опять дополнительно СРЕБЕЙЗИТЬСЯ с ветки main находясь на вашей текущей рабочей ветке (например feature/1_add_readme)

git pull --rebase origin main

Если при пересаживании изменений из ветки main в вашу ветку не произошло конфликтов, то можете смело пушить вашу ветку в репозиторий.

git push origin feature/1_add_readme

После этого создаёте MR в гитлабе

В созданном Merge Request'e убедитесь что сливаются только ваши комиты, нет никаких лишних комитов которые вы не узнаёте, или не пронумерованных комитов, должны отображаться только ВАШИ комиты.

На всякий случай загляните во вкладку Changes и просмотрите ваши изменнеия (вдруг что упустили)

Не забудьте галочку напротив Delete source branch. Не оставляйте в репозитории ветки которые уже слиты и более не нужны.


test