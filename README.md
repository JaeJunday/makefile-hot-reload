# 42script

## 사용방법

1. fswatch 설치
``` shell
brew install fswatch
```
<img width="176" alt="Screen Shot 2024-02-18 at 11 28 10 AM" src="https://github.com/JaeJunday/42script/assets/109643814/7143ea7f-db32-4cc7-852b-a3a9ff727065">

위의 이미지와 동일하게 프로젝트에 있는 Makefile 경로와 같은 위치에 스크립트를 붙여 넣으세요.

### 해당 레포의 스크립트는 인터프리터에 존재하는 핫 리로드  기능을 정적 컴파일 언어인 c, c++에 사용하기 위해 작성되었습니다.

### 주의사항
* fswatch, auto complier는 각각 파일 및 디렉토리의 변경 사항을 감지, 자동으로 빌드해주는 스크립트로, 리눅스 및 macOS 등의 유닉스 기반 시스템에서 사용할 수 있습니다.
    스크립트는 프로젝트의 makefile과 같은 경로에 있어야 합니다. 사용자 makefile의 자동변수인 CC 와 CFLAGS를 읽어와서 설정하고 같은 디렉터리내의 C소스파일, 헤더파일, makefile의 변경사항을 감지해서 증분빌드 하도록 작성했습니다.
    따라서 소스파일과 헤더파일의 파일 구성 경로가 다른경우 스크립트내의 경로를 적절하게 설정해주어야 합니다. 또한 makefile의 변수 이름을 GNU/Makefile 메뉴얼과 동일하게 작성해야 스크립트가 정상 작동합니다.



