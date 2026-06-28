# MAGMA 작업 환경 점검 보고서

- 작성자: Oliver / 전략기획실
- 작성일: 2026-06-28
- 대상: 전 팀원

---

## 1. 현재 확인된 환경

### 1-1. 파일 저장소
- 경로: `/home/june/magma`
- 접근: 가능 (로컬 디렉토리)
- 공유 방법: 이 폴더를 기준으로 모든 산출물을 관리

### 1-2. 폴더 구조
```
/home/june/magma/
├── company/      # 회사 방향성 문서
├── decision/     # 결정 기록
├── research/     # 리서치 자료
├── design/       # 디자인 리소스
├── assets/       # 공용 에셋
├── meeting/      # 회의록
├── reports/      # 주간/월간 보고
└── context/      # 작업 컨텍스트
```

### 1-3. 현재 생성된 문서
- `company/01_brand_deck.md`
- `company/02-next-steps.md`
- `company/02-work-guide.md`
- `company/02_work_guide.md` (이전 버전)
- `decision/001-target.md` ~ `005-pricing.md` (5개)

---

## 2. 문제점

### 2-1. 파일 중복
- `02-work-guide.md`와 `02_work_guide.md`가 공존
- 내용이 다르므로 **둘 중 하나를 사용하도록 규정 필요**

### 2-2. Git push 불가
- 원격 저장소: `https://github.com/robeldojune-star/magma.git`
- 현재 인증 문제로 push 보류 중
- Git이 다른 프로젝트에서는 정상 작동하므로, MAGMA 프로젝트의 인증 설정 문제로 추정

### 2-3. Slack 소통 단방향
- 메시지 전송 가능 (`hermes send`)
- 채널 기록 읽기 불가 → 피드백 수집 어려움

### 2-4. 칸반 워크스페이스 삭제
- task 결과가 `scratch`에 생성되어 task 완료 후 삭제됨
- 원본 파일에 반영되지 않아 결과 확인 불가

---

## 3. 개선 제안

### 3-1. 파일 명명 규칙 통일 (즉시 적용)
```
company/01-{주제}.md
decision/{3자리번호}-{주제}.md
research/{연도}-{주제}.md
design/{연도}-{주제}.md
```
- 기존 `02_work_guide.md`를 삭제하고 `02-work-guide.md`만 사용

### 3-2. 결과물 저장 위치 명시
- 모든 산출물은 지정 경로에 저장
- `scratch`, `tmp` 등 임시 경로 사용 금지
- 저장 위치는 `company/02-work-guide.md` 참조

### 3-3. Git 대안: 로컬 백업 주기 설정
- Git이 불안정할 경우를 대비한 주간 백업
- 백업 위치: `/home/june/magma-backups/`
- 파일명: `magma-backup-YYYY-MM-DD.tar.gz`

### 3-4. 피드백 수집 방법
- Slack이 기록을 읽지 못하므로, 다음 중 하나를 선택:
  - A) 각 팀원이 결과를 파일로 저장하고 Oliver가 직접 읽어서 검증
  - B) `hermes send`로 팀원에게 직접 메시지를 보내고, 답장을 받으면 복사해서 공유
  - C) 주 1회 정기 검토 시간을 두고 파일 기반으로 진행

---

## 4. 즉시 실행 가능한 조치

1. 파일 중복 정리: `02_work_guide.md` 삭제 여부 결정
2. 백업 스크립트 작성: `/home/june/magma/scripts/backup.sh`
3. 팀원별 작업 경로 확인: 각자 지정 폴더가 있는지 확인

---

## 5. 필요 결정 사항

1. Git 인증 문제를 해결할 것인가, 로컬 백업으로 전환할 것인가?
2. Slack 피드백 수집 방법을 어떻게 할 것인가?
3. `02_work_guide.md`와 `02_work_guide.md` 중 어느 것을 사용할 것인가?
