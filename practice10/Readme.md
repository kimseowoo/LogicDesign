# Lab 010
## 실습 내용
### 적외선 컨트롤러 (IR Controller) 
#### **module ir_rx** : 0~9의 값을 갖는 4bit 입력 신호를 받아 7bit FND  segment  값 출력
#### **seq_rx** :  순차적으로 들어오는 신호 seq_rx <= {seq_rx[0], ir_rx};  : 
#### **State machine** : 저번 시간에 만든 second counter  및 Submodule 1/2를 이용하여 실습 장비의 LED에 맞는 Display Module 설계
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTkzMDgyMDQsLTk3NzAzNTc1NSwtMTkwND
c4MDIzMSwtMzMyNDU1MzYzXX0=
-->