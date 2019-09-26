# REBRAIN HWS
<details>
<summary> REBRAIN HW 1: git init </summary>
<p>

Репозиторий содержит дефолтный config nginx <br>

</p>
</details>

<details>
<summary> REBRAIN HW 2: git multiple remote repos </summary>
<p>

Созданы одинаковые репозитории на github gitlab и bitbucket <br>
В локальный git репозиторий добавлены удаленные репозиотрии <br>

```
  git remote add rbgitlab  git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout
  git remote add rbgithub  git@github.com:muxun/rebrain-devops-task-checkout
  git remote add rbbb      git@bitbucket.org:muxun/rebrain-devops-task-checkout

```

Добавлен push url для origin <br>

```
git remote set-url --add --push origin git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout
git remote set-url --add --push origin git@github.com:muxun/rebrain-devops-task-checkout
git remote set-url --add --push origin git@bitbucket.org:muxun/rebrain-devops-task-checkout

```

В итоге .git/config имеет вид <br>

```
core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "rbgitlab"]
	url = git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout
	fetch = +refs/heads/*:refs/remotes/rbgitlab/*
	pushurl = git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout
[remote "rbgithub"]
	url = git@github.com:muxun/rebrain-devops-task-checkout
	fetch = +refs/heads/*:refs/remotes/rbgithub/*
	pushurl = git@github.com:muxun/rebrain-devops-task-checkout
[remote "rbbb"]
	url = git@bitbucket.org:muxun/rebrain-devops-task-checkout
	fetch = +refs/heads/*:refs/remotes/rbbb/*
	pushurl = git@bitbucket.org:muxun/rebrain-devops-task-checkout
[remote "origin"]
        url = git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout
        url = git@github.com:muxun/rebrain-devops-task-checkout
	url = git@bitbucket.org:muxun/rebrain-devops-task-checkout

```

Команда git push origin master отправляет изменнеия во все три репозитория <br>
Команда git push rbgitlab master отправляет изменения только в выбранную ветку <br>

reference urls<br>
<a href="https://gist.github.com/rvl/c3f156e117e22a25f242">git add remote</a><br>
<a href="http://caseyscarborough.com/blog/2013/08/25/pushing-to-multiple-remotes-using-git/">git config</a><br>



</p>
</details>

<details>
<summary> REBRAIN HW 3: git tags </summary>
<p>

Тэгирование конкретных коммитов релиз кандидатов. <br>

Лековесный тэг на коммит: <br>

```
git tag <tag> <commit hash>

```
Пушить тэги надо приудительно: <br> 

```
git push <remote> <tag>

```

reference urls<br>
<a href="https://git-scm.com/book/ru/v2/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B-Git-%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-%D1%81-%D0%BC%D0%B5%D1%82%D0%BA%D0%B0%D0%BC%D0%B8">git tag</a><br>

</p>
</details>

