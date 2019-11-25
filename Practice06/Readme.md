# Lab 10
## 실습 내용
### **적외선 컨트롤러 (IR Controller)**
#### **ir_rx**  :  
#### **State Machine** : 
#### **Top Module** : 저번 시간에 만든 second counter  및 Submodule 1/2를 이용하여 실습 장비의 LED에 맞는 Display Module 설계
### FPGA 실습 (팀) : 6개의 LED 중 가장 오른쪽 2개의 LED에 1초간격으로 0~59까지 증가하는 Counter 값 Display
: NCO(Numerical Controlled Oscillator) 입력 바꿔서 4초 간격으로 증가하는 코드 테스트
## 퀴즈 ### 아래 코드 일부를 수정하여 다음을 구하시오 ```verilog wire  [41:0] six_digit_seg; assign       six_digit_seg = { 4{7'b0000000}, seg_left, seg_right } ``` 
> Q1 - 고정 LED (왼쪽 4개) AAAA 출력 : `AA_AA_00`, `AA_AA_01`, `AA_AA_02`, … 순으로 LED 변경
``` assign  six_digit_seg = { 4{7'b1110111}, seg_left, seg_right }  ```

> Q2 - 고정 LED 없이 2개의 LED 단위로 1초 Counter 값 표시 : `00_00_00`, `01_01_01`, `02_02_02`, … 순으로 LED 변경
``` assign  six_digit_seg = { seg_left, seg_right, seg_left, seg_right, seg_left, seg_right }  ```
## 결과 ### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**

### **FPGA 동작 사진**




![](https://github.com/kimseowoo/LogicDesign/blob/master/Practice06/picture/P20191104_183855527_20B2230C-B966-4051-8373-B9DEC06EE375.jpg)
![](https://github.com/kimseowoo/LogicDesign/blob/master/Practice06/picture/P20191104_185822000_0BA60970-0E69-4175-BBA8-67969A572115.PNG)
![](https://github.com/kimseowoo/LogicDesign/blob/master/Practice06/picture/P20191104_183714230_BD1351B4-754A-46FB-AA1D-C2A7A881E4B8.jpg)


<!--stackedit_data:
eyJoaXN0b3J5IjpbLTU1MTAwNzMzNSwtMjA0ODg2NDkwNSwxNz
I0NDc0MzM2LDExMzU2NzE5OTYsMTgxNzkwNDQ5OCwxNDE0ODMx
MzEsLTg0OTMwMjMwMl19
-->