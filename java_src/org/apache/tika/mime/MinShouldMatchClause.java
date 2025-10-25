package org.apache.tika.mime;

import java.util.List;
/* loaded from: classes2.dex */
class MinShouldMatchClause implements Clause {
    private final List<Clause> clauses;
    private final int min;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MinShouldMatchClause(int i10, List<Clause> list) {
        if (list != null && list.size() != 0) {
            if (i10 <= list.size()) {
                if (i10 > 0) {
                    this.min = i10;
                    this.clauses = list;
                    return;
                }
                throw new IllegalArgumentException("min cannot be <= 0: " + i10);
            }
            int size = list.size();
            throw new IllegalArgumentException("min (" + i10 + ") cannot be > clauses.size (" + size + ")");
        }
        throw new IllegalArgumentException("clauses must be not null with size > 0");
    }

    @Override // org.apache.tika.mime.Clause
    public boolean eval(byte[] bArr) {
        int i10 = 0;
        for (Clause clause : this.clauses) {
            if (clause.eval(bArr) && (i10 = i10 + 1) >= this.min) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.tika.mime.Clause
    public int size() {
        int i10 = 0;
        for (Clause clause : this.clauses) {
            i10 = Math.max(i10, clause.size());
        }
        return i10;
    }

    public String toString() {
        int i10 = this.min;
        List<Clause> list = this.clauses;
        return "minShouldMatch (min: " + i10 + ") " + list;
    }
}
