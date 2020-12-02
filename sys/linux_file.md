[The Linux Information Project] [1] 최고의 사이트를 발견했다...

그림 그리면서 설명하면 참 간단한데... 글로 설명하니 복잡하다.. 

file은 content 그 자체.. file name 이나 content의 meta data를 가지진 않는다. 
그럼 이것들은 어디에? 

directory는 file's name & inode number 가진다.
Inode란? meta data of a file (size, physical location, ownder, permission...)
Inode 는 Inode Table에서 Inode number를 인덱스로 접근할 수 있다. 
Inode number는 file system 안에서 unique 
ls-i 로 inode number 확인 가능 

what is file descriptor? 
a number that uniquely identifies an open file in os..
```py
import os
>>> os.open('/tmp/tmp.txt', os.O_RDONLY)
3 
>>> os.open('/tmp/tmp.txt', os.O_RDONLY)
4 
# 같은 파일을 여러번 open 해도 각기 다른 file descriptor 를 반환한다.
```
위 숫자가 file descriptor 
process 마다 file descriptor table을 가지고 있으며 
table은 index와 file table의 한 row를 가리키는 ref 로 이루어져 있다.
여기서 index는 file descriptor 라고 보면 된다.

그럼 file table에는 어떤 정보가 있나?
flag, offset, inode index 등등의 정보가 있다.
inode index는 inode table에서 inode에 접근할 수 있는 인덱스 역할을 한다.. 

전통적인 unix 구현에서는 file table은 시스템에서 유일하고,, process 마다 서로 다른 file descriptor table을 가지고 있다. 
그래서.. 터미널 여러개 띄우고 각 터미널에서 파이썬으로 open() 하면 서로 다른 file descriptor를 반환함.

일반적으로 리눅스에선 /proc/{PID}/fd/ 로 해당 프로세스의 fd를 확인할 수 있다. 



---
[1]: http://www.linfo.org/