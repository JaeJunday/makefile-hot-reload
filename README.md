# 42script

## 사용방법

### 1. fswatch 설치
``` shell
brew install fswatch
```

### 2. 자동 스크립트 복사, 붙여넣기
<img width="277" alt="Screen Shot 2024-02-18 at 11 47 25 AM" src="https://github.com/JaeJunday/42script/assets/109643814/bcce6d99-8bf0-4523-8684-b04aa73aae6a">

위의 이미지와 동일하게 프로젝트의 Makefile의 경로와 같은 위치에 스크립트를 붙여 넣으세요.

### 3. 하나의 프로세스에서 스크립트를 실행
``` shell
chmod +x auto_c_compiler.sh
./auto_c_compiler.sh
```
 <hr>
 <br>
 
### 해당 레포의 스크립트는 인터프리터에 존재하는 핫 리로드  기능을 정적 컴파일 언어인 c, c++에 사용하기 위해 작성되었습니다.

### 참고사항
* 기본적으로 백그라운드에서 작동합니다. 빠른 성능을 위해서 포그라운드로 변경하고 싶으시면 배시 스크립트의 & 기호를 제거해야 합니다.
* fswatch, auto complier는 각각 파일 및 디렉토리의 변경 사항을 감지하고, 자동으로 빌드해주는 스크립트로, 리눅스 및 macOS 등의 유닉스 기반 시스템에서 사용할 수 있습니다.
* 스크립트는 프로젝트의 makefile과 반드시 같은 경로에 있어야 합니다. 
* 사용자 makefile의 자동변수인 CC 와 CFLAGS를 읽어와서 설정하고 같은 디렉터리내의 *.c 확장자의 소스파일, 헤더파일, makefile의 변경사항을 감지해서 빌드하도록 작성했습니다.
* 소스파일과 헤더파일의 파일 구성 경로가 루트의 하위 디렉터리가 아닌곳에 설정되어 있는 특수한 경우 스크립트내의 경로를 적절하게 설정해주어야 합니다.
* makefile의 변수 이름을 GNU/Makefile의 메뉴얼과 동일하게 작성해야 스크립트가 정상 작동합니다.

> 올바른 변수 이름 <br>
CC <br>
CFLAGS <br>
CXXFLAGS

