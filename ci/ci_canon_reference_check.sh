#!/usr/bin/env zsh
set -e

CANON_PATH="$HOME/WANSTAGE/docs/canon/WANSTAGE_REF_CANON.md"

# 正本の存在確認（唯一）
if [[ ! -f "$CANON_PATH" ]]; then
  echo "AUDIT=FAIL REF=CANON+FORMULA PHASE=DAILY_AUDIT_GATE"
  exit 1
fi

# 正本が存在する場合のみ PASS
echo "AUDIT=PASS REF=CANON+FORMULA PHASE=DAILY_AUDIT_GATE"
exit 0

