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
- add current date to query result: ```with tt as (select cast(require_time as time) from reward where name='vape') select current_date + require_time from tt;```
- describe table: ```\d+ tablename```
  - https://www.postgresql.org/docs/current/static/app-psql.html#APP-PSQL-META-COMMANDS

#### install via homebrew
- ```$ brew install postgresql```
- you can clear old db or transfer to new db
- ```$ createdb```

### <a name="tmux"></a>Tmux
- start new: ```tmux $(basename $(pwd))```
- list session names: ```tmux ls```
- attach to existing session: ```tmux a -t session_name```
