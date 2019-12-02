# Lab 010
## 실습 내용
### 적외선 컨트롤러 (IR Controller) 
#### **module ir_rx** : 0~9의 값을 갖는 4bit 입력 신호를 받아 7bit FND  segment  값 출력
#### **[1:0] seq_rx** :  순차적으로 들어오는 신호 / 이전값 [1], 현재값 [0] 
#### **State machine** : 저번 시간에 만든 second counter  및 Submodule 1/2를 이용하여 실습 장비의 LED에 맞는 Display Module 설계
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM3Mzc2Njk1LC05NzcwMzU3NTUsLTE5MD
Q3ODAyMzEsLTMzMjQ1NTM2M119
-->