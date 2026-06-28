# [검토] 회사 문서 관리 규칙 v0.2 회안

- 소유자 / 작성자 / 작성일 / 최종 수정일 / 버전 / 경로:
  - Ada / 데이터분석 / 2026-06-28 / 2026-06-28 / v0.2 / company/06-회사문서관리규칙-review-v0.2.md
- 전제: Git이 없는 산출물(`company/*.md`) 기준. 본 문서는 회사 문서 관리 규칙 v1.0과 Ada 피드백을 반영한 개정안이다.

---

## 1) 핵심 원칙 (변경 없음)

원칙 3가지는 유지한다.
- 단일 소유권: 각 파일은 지정 Owner만 수정, 미지정은 Oliver 배정.
- 선등록 후 수정: 파일 수정 전 칸반 task를 생성하고 상태를 `진행중`으로 변경.
- 동시성 금지: 같은 파일을 여러 task가 동시에 수정하지 않음.

---

## 2) 파일별 Owner 매핑 (company/)

| 파일 | Owner | 분류 | 비고 |
|------|-------|------|------|
| `company/00-작업관리규칙.md` | Oliver | 회사 소유 | 규칙 자체 |
| `company/00-회사개요.md` | Oliver | 회사 소유 | 회사 개요 |
| `company/01-brand-deck.md` | Ethan | 팀 분임 | 확정 브랜드 덱 |
| `company/02-next-steps.md` | Oliver | 회사 소유 | 다음 단계 보고 |
| `company/02-시장조사.md` | Oliver | 회사 소유 | 시장 조사 |
| `company/02_work_guide.md` | Oliver | 회사 소유 | Git-less 운영 규칙 |
| `company/02-work-guide.md` | Oliver | 회사 소유 | Work Guide 표준 |
| `company/04-디자인시스템.md` | Mia | 팀 분임 | 디자인 시스템 |
| `company/04-네이밍-브랜드보이스.md` | Oliver | 회사 소유 | Decision 004 |
| `company/05-브랜드보이스.md` | Noah | 팀 분임 | Decision 005 |
| `company/05-네이밍-브랜드보이스.md` | Noah | 팀 분임 | 보이스 가이드 |
| `company/06-규칙피드백-ada.md` | Ada | 팀 분임 | 규칙 피드백 |
| `company/06-규칙피드백-ethan.md` | Ethan | 팀 분임 | 규칙 피드백 |
| `company/06-사업영역.md` | Oliver | 회사 소유 | 사업영역 정의 |
| `company/06-전략피드백-sam.md` | Oliver | 회사 소유 | 전략 피드백 |
| `company/06-회사문서관리규칙-review-v0.2.md` | Ada | 팀 분임 | 규칙 검토 회안 |
| `company/11-backup-recovery-sop.md` | Oliver | 회사 소유 | 백업 SOP |
| `company/12-no-git-work-sop.md` | Oliver | 회사 소유 | Git-less SOP |

> 규칙: Owner 미지정 파일은 Oliver가 배정한다. Owner 변경은 본 표와 규칙 문서 메타데이터를 함께 수정한다.

---

## 3) 문제 보고 처리 기준

- 복구 권한을 문제 유형별로 구분한다.
  - 단순 오타: 해당 Owner가 직접 수정 가능.
  - 경로 변경/권한 오류: Oliver 확인 후 복구.
- 팀원이 자체 판단으로 복구 가능한 케이스는 수정 후 회사 문서 관리 규칙에 따라 보고 절차를 진행한다.

---

## 4) Slack 전파 기준

- 기본 채널: `#magmastrategy`
- 회사 공지 전파는 아래 조건을 모두 만족해야 한다.
  1. 회사 문서 변경 사항이 있다.
  2. board card가 생성되어 있다.
  3. 변경 내용 요약이 작성되어 있다.
- 알림 누락은 규칙 위반으로 간주한다.
- 알림 누락 기록은 별도 회의록 task에 집계한다.

---

## 5) 규칙 반영 의사결정 절차

- 피드백 반영 여부는 별도 의사결정 task(회사 문서 관리 규칙 개정)로 처리한다.
- 반영 결정은 Oliver가 진행하고, 결과를 규칙 문서에 기록한다.

---

## 6) 규칙 문서 관리 원칙

- 규칙 문서 변경은 `company/00-작업관리규칙.md` Owner(Oliver)만 수정한다.
- 소규모 규칙 보정 요청은 회의록 task를 통해 관리한다.
- 규칙 자체에 대한 회의 내용은 별도 회의록 파일로 통합한다.

---

## 참고: 주요 용어 정리

- 회사 소유: Oliver가 담당하며, 규칙·운영·전략 등 핵심 운영 문서를 의미한다.
- 팀 분임: 각 팀원이 담당하는 실무 산출물이다.
- 회의록 task: 규칙 보정·의견 정리 등 반정형 추가 요청을 단일 파일에 통합해 관리하기 위한 task이다.

EOF
