# Git 복구 방법

## 1. Git의 구조
Git은 **스냅샷(snapshot)** 기반입니다. 커밋이 만들어질 때마다 그 시점의 파일 상태가 기록됩니다. push되기 전은 로컬에만 존재하며, push된 뒤에도 원격에 기록됩니다.

## 2. 복구 방법 (로그인 필요)
| 상황 | 방법 | 명령어 |
|------|------|--------|
| 가장 최근 커밋 수정 | amend | `git commit --amend` |
| 커밋 삭제 후 복구 | reflog | `git reflog` → 복원할 해시 확인 → `git reset --hard <해시>` |
| 파일만 잘못 덮어씀 | restore | `git restore <파일>` |
| 파일을 삭제한 뒤 커밋함 | checkout | `git checkout <해시> -- <파일>` |
| 브랜치 삭제 후 복구 | reflog | `git reflog` → 브랜치 복구 위치 확인 → `git checkout -b <브랜치> <해시>` |
| 원격에서 삭제된 커밋 복구 | fsck | `git fsck --full` → dangling commit 확인 → 복원 |

## 3. 주의사항
- `--hard` 옵션은 스테이지와 워킹 트리를 강제로 덮어씁니다. 신중하게 사용하세요.
- 원격 저장소에 push된 커밋은 force push로만 삭제됩니다. 팀 사용 시 주의해야 합니다.
- 복구는 가능하지만, **예방이 최선**입니다.

## 4. 예방 방법
1. 커밋 전 변경사항 확인: `git diff`
2. 의미 있는 커밋 단위로 나눠 push
3. 브랜치 보호 규칙 설정: main 브랜치는 직접 push 금지, PR로만 병합
4. 정기적으로 원격과 동기화: `git pull --rebase`

## 5. 팀 규칙 (MAGMA)
- main 브랜치에 직접 push하지 않습니다.
- 각자 기능별 브랜치 생성 후 PR로 병합합니다.
- 커밋 메시지는 다음 형식으로 통일합니다:
  - `[태그] 설명`
  - 예: `[brand] 타겟 고객 옵션 추가`, `[design] VI 컨셉 3가지 작성`
