# MAGMA 로고·VI 보드 v2 검토 보고서 (2026-06-29)

> 검토 대상: company/사용자 업로드/magma-logo-vi-application-board-v2.svg
> 검토 기준: company/04-디자인시스템.md / decision/004-visual.md
> 검토일: 2026-06-29

---

## 1. 보드 개요

- 구성: Primary Logo, Color Tokens, Typography, Moodboard, Deck Applications, Product System
- 추천 문구: "Strata Mark primary, Quiet M support, Heat Seam as product/detail module."
- 총 3개 마크 개념 제시: Strata Mark / Quiet M / Heat Seam

---

## 2. 컨셉 일치 여부

| 기준 | design system 결정 | SVG 보드 v2 | 일치 여부 |
|------|-------------------|-------------|----------|
| 주 컨셉 | 컨셉 A: 소재 우선 타이포그래피 | Strata Mark primary(그래픽 심볼) | 불일치 |
| 보조 컨셉 | 컨셉 B: 절제된 기능성 심볼 | Quiet M(타이포) / Heat Seam(구조) | 부분 일치 |
| 추천 우선순위 | A > B > C | Strata Mark(B) > Quiet M(A) > Heat Seam(C) | 역전됨 |

**문제점:** design system은 A(타이포)를 추천했으나, 보드 v2에서는 B(심볼)를 primary로 추천하고 있습니다. 전략 컨셉과 시안 우선순위가 서로 엇갈립니다.

---

## 3. 디자인 토큰 불일치

| 토큰 | design system 지정 | SVG 사용 색 | 차이 |
|------|--------------------|-------------|------|
| 메인 컬러 | 딥 틸 #1A3C3A | #0F595E | 다름 |
| 액센트 컬러 | 테라코타 #C66B4D | #C05621 | 다름 |
| 서브 컬러 | 파치먼트 #6B7A6C | 사용되지 않음(#F4F1EA, #6B6258, #D8C7AF 대체) | 불일치 |

**문제점:** 컬러 토큰이 design system과 다릅니다. 딥 틸과 테라코타가 모두 다르며, 파치먼트는 아예 빠져 있습니다.

---

## 4. 타이포그래피

- 사용된 폰트: Noto Serif KR / Noto Sans KR / Inter
- design system 지정: 세리프 디스플레이(Serif Display)
- 검증 필요: Noto Serif KR이 세리프 디스플레이 역할을 대체하는지 확인 필요. 시스템에 폰트 라이선스가 포함되어 있는지도 확인 필요.

---

## 5. 무드보드

- 자연광, 원단 결, 종이 질감 등 소재 중심 무드는 컨셉 A와 부합합니다.
- 다만 palette가 design system의 60/30/10 규칙과 명시된 토큰 색과 맞지 않습니다.

---

## 6. 제품 적용 원칙

- "제품보다 로고가 먼저 보이지 않게 사용" — 이 원칙은 컨셉 A(타이포 우선, 로고 과시 부담 없음)와 일치합니다.
- 반면 "Strata Mark primary"는 그래픽 심볼을 로고처럼 내세우는 방향이므로, 원칙과 상충합니다.

---

## 7. 결론과 권고

1. **즉시 수정 필요:**
   - 추천 우선순위를 design system 기준(컨셉 A 타이포)으로 일치시킬 것
   - 디자인 토큰(#1A3C3A, #C66B4D, #6B7A6C)을 SVG 전체에 반영할 것

2. **추가 검증 필요:**
   - Quiet M과 Heat Seam이 각각 컨셉 A/B/C 중 어떤 것에 해당하는지 명시
   - 타이포 폰트를 세리프 디스플레이로 통일하고 라이선스 확인

3. **의견:**
   - 보드 v2는 컨셉 B 중심으로 재구성되어 있습니다.
   - MAGMA strategy가 "타이포 우선"인지, "심볼 우선"인지 먼저 정해야 revision 방향이 확정됩니다.

---

검토 완료. 이상입니다.
