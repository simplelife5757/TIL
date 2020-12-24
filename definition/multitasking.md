Multitasking
<코딩을 지탱하는 기술> 책의 내용에서 배운 내용이 많다. 이 책 정말 추천!

- Multitasking : 병행 처리(소프트웨어 측면의 개념), Parallel : 병렬 처리(하드웨어 측면의 개념)

하나의 CPU로 복수의 처리를 하려면 어떻게 해야 할까? 
- 짧게 분할해서 실행한다. 
- 기본적으로 대부분의 작업은 IO bound 특성을 가지고 있기 때문에 짧게 분할해서 실행하기만 해도 복수의 처리를 할 수 있다. 
- 그리고 사람의 눈은 컴퓨터보다 느리다.

Preemptive Multitasking vs Cooperative Multitasking 
- Cooperative Multitasking (협력적)
    - 한 쪽이 '자 이제 교대해' 라고 알려줄 때 까지 다른 한쪽은 기다린다. 
    - 기다리는 것이 최적이라는 신뢰 기반 
- Preemptive Multitasking (선점적)
    - 스케줄러가 컨트롤
    - Task 입장에선 언제 중단될지 모른다는 가정으로 프로그래밍 

Preemptive -> Race condition 
Race Condition 3가지 조건
1. 2가지 이상의 처리가 변수를 공유한다.
2. 적어도 한쪽이 그 변수를 변경한다.
3. 한쪽 처리가 마무리 되기 전에, 다른 한쪽의 처리가 끼어들 가능성 존재한다. 

1번을 방지한다. => 공유하지 않는다. 
- 프로세스와 액터 모델 
    - 프로세스도 옛날엔 메모리를 공유했다. -> 1970 UNIX가 메모리를 공유하지 않는 프로세스를 등장시킴. 프로세스 별로 메모리 가져라! -> 경량 프로세스(쓰레드) 등장,, 그래도 공유하는 구조가 필요해..
    - 액터모델: 메모리 공유하지 말고 메시지를 교환해!     

2번을 방지한다. => 메모리는 공유하고~ 변경하지만 말어! 
- 언어 레벨에서 모든걸 불변.. -> haskell 
- 그건 너무 빡시고 부분적으로 변경할 수 없게 하자 -> var vs val
- Java: 난 그런거 없어~ 걍 디자인 패턴으로 immutable 하게 관리혀~ -> gette ok, setter not ok 

3번을 방지한다. => 끼어들지 않는다. 
- 협력적 쓰레드 사용 -> 파이버, 코루틴, 그린 쓰레드.. 다음 시간에 이어서.. 
- 락, 뮤텍스, 세마포

- Green Threads
    - 일반적으로 생각하는 Threads -> Kernel Space 에서 OS에 의해 관리되는 Threads
    - Green Threads는 그와 다르게 User Space 에서 runtime library or vm에 의해서 관리되는 Threads 

- critical section
    - 공유하는 변수에 접근할 수 있는 코드 영역
    - atomic action is required in a critical section 
        - only one process can execute in its critical section at a time

User Space & Kernel Space 에 대해 제대로 모르고 있었네.. 
https://www.redhat.com/en/blog/architecting-containers-part-1-why-understanding-user-space-vs-kernel-space-matters