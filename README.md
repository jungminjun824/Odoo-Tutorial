# Odoo-Tutorial
Odoo문서 따라하기 실습 — *Odoo 19 Development Cookbook* (한국어판)

## 디렉터리 구성

```
~/odoo-dev/
├── odoo/            # Odoo 19.0 소스 (git clone, 이 저장소에 포함 안 함)
└── Odoo-Tutorial/   # 이 저장소
    ├── addons/      # 실습용 커스텀 모듈
    ├── odoo.conf    # 서버 설정 (DB odoo-test, 포트 8079)
    └── run.sh       # 실행 스크립트
~/venv-odoo-19.0/    # Python 3.12 가상환경
```

## 환경 구성 (Ch.1 p.24, 7~10단계 / macOS)

```bash
mkdir ~/odoo-dev && cd ~/odoo-dev
git clone -b 19.0 --single-branch --depth 1 https://github.com/odoo/odoo.git
git clone https://github.com/jungminjun824/Odoo-Tutorial.git

# 시스템 python3가 3.9라 pyenv 3.12.8로 venv 생성 (Odoo 19는 3.10+ 필요)
~/.pyenv/versions/3.12.8/bin/python -m venv ~/venv-odoo-19.0
source ~/venv-odoo-19.0/bin/activate
pip3 install -r ~/odoo-dev/odoo/requirements.txt

createdb odoo-test
cd ~/odoo-dev/Odoo-Tutorial && ./run.sh -i base --stop-after-init
```

## 실행

```bash
./run.sh            # http://localhost:8079  (admin / admin)
./run.sh -u 모듈명   # 모듈 업데이트
```

책과 다른 점: Ubuntu 대신 macOS, 포트 8069 → 8079, 설정은 `odoo.conf` 사용.
