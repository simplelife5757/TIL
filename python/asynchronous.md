#### CPU Bound Problem -> Multithreading 효과 없음 
- Python object is not thread-safe. So, Python uses GIL 
- Use multiprocessing to use multi core.

Question
1. How many requests per second can a Django server handle? 
    - [1 request at a time] [1]
    - 하나의 요청당 하나의 쓰레드 생성? 
    
    
    
    
---
- [CPU Bound vs I/O Bound](https://stackoverflow.com/questions/868568/what-do-the-terms-cpu-bound-and-i-o-bound-mean)
    - CPU Bound means the rate at which process progresses is limited by the speed of the CPU.
A task that performs calculations on a small set of numbers, for example multiplying small matrices, is likely to be CPU bound.
A program is CPU bound if it would go faster if the CPU were faster.
    - I/O Bound means the rate at which a process progresses is limited by the speed of the I/O subsystem.
A task that processes data from disk, for example, counting the number of lines in a file is likely to be I/O bound.
A program is I/O bound if it would go faster if the I/O subsystem was faster.


- 참고: [how-django-processes-request](https://www.b-list.org/weblog/2006/jun/13/how-django-processes-request/)

[1]: https://www.quora.com/How-many-requests-per-second-can-a-Django-server-handle#:~:text=Django%20development%20server%20which%20you,1%20request%20at%20a%20time.