# MAGMA 환경 점검 및 작업 실행 가이드

> 작성일: 2026-06-28  
> 작성자: Ethan (전략기획실 기획)  
> 대상: 전 직원 (Noah, Mia, Ada, Sam, Sophie, Oliver)

---

## 1. 환경 점검 결과

### 1-1. 디렉토리 구조

| 경로 | 상태 | 비고 |
|------|------|------|
| `/home/june/magma/company/` | ✅ 존재 | 회사 방향성 문서 |
| `/home/june/magma/research/` | ✅ 존재 | 리서치 자료 |
| `/home/june/magma/design/` | ✅ 존재 | 디자인 리소스 |
| `/home/june/magma/decision/` | ✅ 존재 | 결정 기록 |
| `/home/june/magma/tasks/` | ✅ 존재 | 작업 지시서 |
| `/home/june/magma/reports/` | ✅ 존재 | 진행 보고 |
| `/home/june/magma/backups/` | ✅ 존재 | 백업 파일 |
| `/home/june/magma/scripts/` | ✅ 존재 | 유틸리티 스크립트 |

### 1-2. 백업 스크립트

- **파일:** `/home/june/magma/scripts/backup.sh`
- **실행 테스트:** ✅ 성공 (`magma_20260628_093258.tar.gz` 생성)
- **로그:** `/home/june/magma/backups/backup_log.tsv` 기록 확인

### 1-3. 운영 문서

| 문서 | 상태 |
|------|------|
| `/home/june/magma/company/11-backup-recovery-sop.md` | ✅ 백업·복구 표준 절차 |
| `/home/june/magma/company/12-no-git-work-sop.md` | ✅ Git 없이 작업하는 표준 규칙 |
| `/home/june/magma/company/02-next-steps.md` | ✅ 작업 지시서 (v0.2) |
| `/home/june/magma/tasks/2026-06-28-oliver-immediate-tasks.md` | ✅ Oliver 작업 지시서 |

### 1-4. 현재 파일 상태

| 파일 | 상태 |
|------|------|
| `company/01_brand_deck.md` | ✅ 존재 |
| `company/02-next-steps.md` | ✅ 존재 |
| `company/02_work_guide.md` | ✅ 존재 |
| `decision/001~005` | ✅ 존재 (상태: 제안) |

### 1-5. 누락 파일 (재작성 필요)

| 파일 | 비고 |
|------|------|
| `company/00-회사개요.md` | 회사 소개·팀 소개 |
| `company/02-시장조사.md` | 시장 조사 자료 |
| `company/03-가격포지셔닝.md` | 가격 전략 |
| `company/04-디자인시스템.md` | VI 디자인 시스템 |
| `company/05-네이밍-브랜드보이스.md` | 보이스 가이드 |
| `company/06-사업영역.md` | 사업 영역 정의 |
| `company/07-네이밍-슬로건.md` | 슬로건 |
| `company/08-가격포지셔닝확정안.md` | 가격 확정안 |
| `company/09-가격포지셔닝확정-pricing-landscape.md` | 가격 랜드스케이프 |
| `company/10-가격관측치-출처보강.md` | 가격 관측치 |

---

## 2. 작업 실행 가이드 (직원 필독)

### 2-1. 작업 시작 전 체크리스트

1. **현재 디렉토리 확인**
   ```bash
   ls -la /home/june/magma/company/
   ls -la /home/june/magma/decision/
   ```
2. **백업 실행**
   ```bash
   bash /home/june/magma/scripts/backup.sh
   ```
3. **작업 지시서 확인**
   ```bash
   ls -la /home/june/magma/tasks/
   cat /home/june/magma/tasks/<해당-task>.md
   ```

### 2-2. 파일 수정 규칙

| 구분 | 규칙 |
|------|------|
| 원본 파일 수정 | `/home/june/magma/company/`, `/home/june/magma/research/`, `/home/june/magma/design/` 에 직접 수정 |
| 금지 | scratch, tmp, 임시 경로 사용 금지 |
| 금지 | 원본 파일 삭제·이름 변경 금지 |
| 파일명 | 영어 + `-` 만 사용, 공백/한글 금지 |

### 2-3. 완료 보고 방법

1. **결과 파일을 지정된 경로에 저장**
2. **reports/에 보고서 작성**

   파일명 형식: `reports/YYYY-MM-DD-<담당자>-report.md`

   보고서 must include:
   - 변경 파일 경로
   - 변경 내용 요약
   - 검증 방법
   - 다음 단계 제안

3. **처리 완료 표시**
   - Oliver에게 Slack 또는 파일로 완료 알림
   - Oliver가 검토 후 comments/ 승인

### 2-4. 검증 기준

- 본인의 `SOUL.md` 및 `02-work-guide.md`를 준용
- 완료 조건은 task 지시서에 명시된 대로
- 검증 불합격 시: 지적 사항 반영 후 재제출

---

## 3. 각 직원별 현재 작업

### 3-1. Noah (카피)

- **현재 상태:** 대기
- **필요 파일:** `company/05-네이밍-브랜드보이스.md` (현재 없음 → 재작성 필요)
- **완료 조건:** 채널별 톤앤매너, 샘플 카피, DO/DON'T 포함
- **시작 방법:** 파일을 새로 생성해서 보이스 가이드 작성

### 3-2. Mia (디자인)

- **현재 상태:** 대기
- **필요 파일:** `company/04-디자인시스템.md` (현재 없음 → 재작성 필요)
- **완료 조건:** 로고·VI 시안 2~3개 + 추천 1개
- **시작 방법:** `design/` 폴더에 시안 이미지/설명서 생성

### 3-3. Ada (데이터분석)

- **현재 상태:** 대기
- **필요 파일:** `research/08-가격포지셔닝확정안.md` (현재 없음 → 재작성 필요)
- **완료 조건:** 출처·가정·한계 포함 분석 표
- **시작 방법:** `research/` 폴더에 데이터 파일 + 보고서 생성

### 3-4. Sam (개발)

- **현재 상태:** 대기
- **역할:** 자료 정리·파일 변환 등 경량 업무
- **시작 방법:** Oliver 또는 Ethan에게 할당 요청

### 3-5. Sophie (총무실장)

- **현재 상태:** 권한 불명확
- **필요 조치:** 총무실장 권한을 문서화 (이름: Sophie 또는 Sally)
- **보고 라인:** 진행 모니터링·리더 보고 정리

### 3-6. Oliver (리서치·운영)

- **현재 상태:** 작업 지시서 발급 완료 (`tasks/2026-06-28-oliver-immediate-tasks.md`)
- **필요 액션:** 해당 파일 읽고 3가지 작업 실행
- **완료 조건:** 18:00까지 완료 보고서 제출

---

## 4. 실행 방법 요약

1. **환경 확인**
   ```bash
   ls -la /home/june/magma/
   ```

2. **백업 실행**
   ```bash
   bash /home/june/magma/scripts/backup.sh
   ```

3. **작업 지시서 읽기**
   ```bash
   cat /home/june/magma/tasks/<task-file>.md
   ```

4. **파일 수정**
   - 원본 파일 직접 수정
   - 금지: 임시 경로 사용, 원본 삭제

5. **완료 보고**
   ```bash
   # reports/ 폴더에 보고서 작성
   nano /home/june/magma/reports/YYYY-MM-DD-<이름>-report.md
   ```

6. **검증 대기**
   - Oliver 또는 Ethan 검토 후 합격/불합격 통보

---

## 5. 문제 발생 시 연락처

| 문제 유형 | 연락 |
|-----------|------|
| 파일 접근 불가 | Ethan에게 직접 보고 |
| 작업 지시서 모호 | Ethan에게 질문 |
| 백업 실패 | scripts/backup.sh 로그 확인 후 Ethan에 보고 |
 Oliver 비응답 | 24시간 후 자율 진행 (MAGMA 규칙) |

---

## 6. 참고 문서

- `/home/june/magma/company/11-backup-recovery-sop.md`
- `/home/june/magma/company/12-no-git-work-sop.md`
- `/home/june/magma/company/02-next-steps.md`
- `/home/june/magma/tasks/2026-06-28-oliver-immediate-tasks.md`

---

*본 보고서는 June의 지시에 따라 작성되었으며, 모든 직원이 숙지해야 함.*
