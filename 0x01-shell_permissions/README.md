# 0x01-shell_permissions

0. [My name is Betty](./0-iam_betty) : a script that switches the current user to the user `betty`, while using exactly 8 characters for the command.  
1. [Who am I](./1-who_am_i) : a script that prints the effective username of the current user.  
2. [Groups](./2-groups) : a script that prints all the groups the current user is part of.  
3. [New owner](./3-new_owner) : a script that changes the owner of the file hello to the user `betty`.  
4. [Empty!](./4-empty) : a script that creates an empty file called `hello`.  
5. [Execute](./5-execute) : a script that adds execute permission to the owner of the file `hello`.  
6. [Multiple permissions](./6-multiple_permissions) : a script that adds execute permission to the owner and the group owner, and read permission to other users, to the file `hello`.  
7. [Everybody!](./7-everybody) : a script that adds execution permission to the owner, the group owner and the other users, to the file `hello`.  
8. [James Bond](./8-James_Bond) : a script that sets the permission to the file hello as follows: no permissions got the owner and group and all permissions to other users.  
9. [John Doe](./9-John_Doe) : a script that sets the mode of the file `hello` to this :  ***-rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello***  
10. [Look in the mirror](./10-mirror_permissions) : a script that sets the mode of the file `hello` the same as `olleh`’s mode.  
11. [Directories](./11-directories_permissions) : script that adds execute permission to all subdirectories of the **current directory** for the owner, the group owner and all other users, regular files should not be changed.  
12. [More directories](./12-directory_permissions) : a script that creates a directory called `my_dir` with permissions `751` in the working directory.  
13. [Change group](./13-change_group) : a script that changes the group owner to `school` for the file `hello`.  
14. [Owner and group](./100-change_owner_and_group) : a script that changes the owner to `vincent` and the group owner to `staff` for all the files and directories in the working directory.  
15. [Symbolic links](./101-symbolic_link_permissions) : a script that changes the owner and the group owner of `_hello` to `vincent` and `staff` respectively, where `_hello` is a symbolic link.  
16. [If only](./102-if_only) : script that changes the owner of the file `hello` to `betty` only if it is owned by the user `guillaume`, The file `hello` will be in the working directory.  
17. [Star Wars](./103-Star_Wars) : a script that will play the StarWars IV episode in the terminal.  
