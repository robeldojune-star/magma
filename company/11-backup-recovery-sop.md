# MAGMA 백업 및 복구 표준 절차 (Backup & Recovery SOP)

> Git이 없거나 실패해도 데이터를 보존하기 위한 최소 백업 규칙.

---

## 1. 백업 기본 원칙

- **Git push가 성공해도, 로컬 백업을 반드시 함께 생성한다.**
- Git은 push 실패·브랜치 충돌·원격 삭제 등으로 복구가 불가능할 수 있다.
- 백업은 **다른 저장 매체**에 분산 저장한다.

---

## 2. 수동 백업 방법 (Git 실패 시)

### 2-1. 전체 폴더 압축 백업

```bash
BACKUP_DIR="/home/june/magma/backups"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
tar -czf "$BACKUP_DIR/magma_backup_${TIMESTAMP}.tar.gz" /home/june/magma/{company,research,design,decision}
```

### 2-2. 변경 파일만 백업 (daily)

```bash
BACKUP_DIR="/home/june/magma/backups"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +%Y%m%d)
find /home/june/magma/{company,research,design,decision} -type f -mtime -1 -exec cp --parents {} "$BACKUP_DIR/incremental_${TIMESTAMP}/" \;
```

### 2-3. 즉시 백업 체크리스트 (작업 전·후)

| 시점 | 작업 |
|------|------|
| 작업 시작 전 | `tar -czf /home/june/magma/backups/pre_$(date +%Y%m%d_%H%M%S).tar.gz company/ decision/` |
| 작업 완료 후 | 변경 파일을 `/home/june/magma/backups/post_/` 에 복사 |
| Git push 실패 시 | 위 명령으로 로컬 백업 생성 후 Slack으로 보고 |

---

## 3. 복구 방법

### 3-1. 백업 파일에서 복구

```bash
# 전체 복구
tar -xzf /home/june/magma/backups/magma_backup_YYYYMMDD_HHMMSS.tar.gz -C /

# 특정 파일만 복구
cp /home/june/magma/backups/incremental_YYYYMMDD/company/05-네이밍-브랜드보이스.md /home/june/magma/company/
```

### 3-2. 삭제된 파일 확인

```bash
# 삭제된 파일 목록 확인
git ls-files --deleted
# 또는
ls -la /home/june/magma/company/
```

---

## 4. 영구 저장 매체 분산 원칙

| 매체 | 용도 | 주기 |
|------|------|------|
| 로컬 `/backups/` | 일일 증분 백업 | 매일 23:59 |
| Git 원격 저장소 | 코드·문서 버전 관리 | push 성공 시 |
| USB 또는 외장 HDD | 주간 전체 백업 | 매주 금요일 |
| Slack DM (필요시) | 중요 파일 즉시 공유 | 중요 변경 발생 시 |

---

## 5. Oliver의 의무 (MAGMA 운영 규칙에 추가)

1. **작업 전 로컬 백업 생성** — 위 `2-3` 체크리스트 준수
2. **Git push 실패 시 즉시 알림** — Slack 또는 outbox에 기록
3. **백업 로그 작성** — `/home/june/magma/backups/backup_log.md`에 일자·파일 목록 기록
4. **주간 복구 테스트** — 매주 금요일 백업 파일에서 복구 가능한지 확인

---

## 6. 현재 파일 삭제 사건 교훈

**2026-06-28 발생: company/ 11개 파일 삭제**
- 원인: 미확인 (작업 중 삭제 또는 이동)
- Git 복구 불가: 해당 파일들이 커밋되지 않은 상태였음
- 조치: 즉시 수동 백업으로 복구 필요

**재발 방지:**
- 모든 작업 전 백업 의무화
- Git push 의존도 낮추고, 로컬 백업을 기본으로
- 폴더 삭제·이동 작업 전 반드시 백업 확인

---

*본 문서는 Oliver의 Git 의존적 운영 습관을 교정하고, 데이터 손실 위험을 줄이기 위해 작성됨.*
