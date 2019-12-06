# REBRAIN HWS

Проект по изучению инструментов и подходов devops культуры на практике.

### Prerequisites

Для прохождения практики необходимы: 
* базовое владение linux
* понимание сетевого стэка
* участие в процессах разработки


### Installing

Скачайте репозиторий  
 > git clone git@githab.com/devops_repo

### Содержание проекта

Проект включает в себя описание выполнения домашних заданий по курсу devops от [rebrainme.com](http://ebrainme.com)  
Описания заключены в выпадающие списки  
Текст задания не включен в репозиторий  
Для  каждого задания есть реф ссылки по обсуждаемой теме  

## Homeworks

<details>
<summary> REBRAIN HW 1: git init </summary>
<p>

Репозиторий содержит дефолтный config nginx  

</p>
</details>

<details>
<summary> REBRAIN HW 2: git multiple remote repos </summary>
<p>

Созданы одинаковые репозитории на github gitlab и bitbucket  
В локальный git репозиторий добавлены удаленные репозиотрии


>  git remote add rbgitlab  git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout  
>  git remote add rbgithub  git@github.com:muxun/rebrain-devops-task-checkout  
>  git remote add rbbb      git@bitbucket.org:muxun/rebrain-devops-task-checkout  


Добавлен push url для origin  


> git remote set-url --add --push origin git@gitlab.rebrainme.com:muxund/rebrain-devops-task-checkout  
> git remote set-url --add --push origin git@github.com:muxun/rebrain-devops-task-checkout  
> git remote set-url --add --push origin git@bitbucket.org:muxun/rebrain-devops-task-checkout  

В итоге .git/config имеет вид  

```bash
[core]
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

Команда git push origin master отправляет изменения во все три репозитория  
Команда git push rbgitlab master отправляет изменения только в выбранную ветку  

reference urls  
[git add remote](https://gist.github.com/rvl/c3f156e117e22a25f242)    
[git config](http://caseyscarborough.com/blog/2013/08/25/pushing-to-multiple-remotes-using-git/)  



</p>
</details>

<details>
<summary> REBRAIN HW 3: git tags </summary>
<p>

Тэгирование конкретных коммитов релиз кандидатов.  

Лековесный тэг на коммит: 


> git tag <tag> <commit hash>  

Пушить тэги надо приудительно:   

> git push <remote> <tag> 


reference urls  
[git tag](https://git-scm.com/book/ru/v2/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B-Git-%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-%D1%81-%D0%BC%D0%B5%D1%82%D0%BA%D0%B0%D0%BC%D0%B8)

</p>
</details>

<details>
<summary> REBRAIN HW 4: README.md and markdown  </summary>
<p>

Readme оформлен в соответствии с best practise  
При оформлении использован markdown и html  

```bash

> code striing  

# ## ### h1-h3 tags  

[alias](url) links

double space  - <br>
```

reference links  
[markdown](https://guides.github.com/features/mastering-markdown/)  
[readme.md](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)

</p>
</details>

<details>
<summary> REBRAIN HW 5: .gitignore  </summary>
<p>

Для того, чтобы не тащить в репозиторий служебные файлы IDE, временные файлы, параметры окружения  
можно воспользоваться файлом .gitignore 

формат записи 

```bash

*.class

tmp/

.silent_ci_file

```

reference links  
[теория](https://git-scm.com/book/ru/v2/%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D1%8B-Git-%D0%97%D0%B0%D0%BF%D0%B8%D1%81%D1%8C-%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B5%D0%BD%D0%B8%D0%B9-%D0%B2-%D1%80%D0%B5%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80%D0%B8%D0%B9)  
[примеры от гитхаба ](https://github.com/github/gitignore)

</p>
</details>


<details>
<summary> REBRAIN HW 6: git branch  </summary>
<p>

Ветвление в git позволяет изолировать различные версии кода  
Также позволяет в процессе командной работы делать фичи большой командой разработчиков  

Создание веток 

> git branch new_branch && git checkout new_branch  

короткая запись   

> git checkout -b new_branch

reference links    
[visual git tutorial](https://learngitbranching.js.org/)

</p>
</details>



### Authors

**Дмитрий Михин** 
* инфраструктурный инженер в [botkin.ai](http://botkin.ai) , [braingarden.ai](http://braingarden.ai)
* автор технических текстов для [завтра облачно](https://mcs.mail.ru/blog/organizaciya-bekapa-postgresql-iz-kubernetes-v-s3-hranilishche)  


