* [git](#git)
* [mit-scheme](#mit-scheme)
* [postgres](#postgres)
* [tmux](#tmux)

### <a name="git"></a>Git
- checkout file from one branch to current: ```git checkout sourcebranch -- file.name```

### <a name="mit-scheme"></a>mit-scheme
- loading files: ```(load "filename")```


### <a name="postgres"></a>Postgres

- adding user/role: ```create user name with password 'pass_word'```, take note of single quotes
- reset auto-increment column:  ```alter sequence authors_id_seq restart with 1;```

### <a name="tmux"></a>Tmux
- start new: ```tmux $(basename $(pwd))```
- list session names: ```tmux ls```
- attach to existing session: ```tmux a -t session_name```
