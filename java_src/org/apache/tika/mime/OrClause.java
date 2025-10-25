package org.apache.tika.mime;

import java.util.List;
/* loaded from: classes2.dex */
class OrClause implements Clause {
    private final List<Clause> clauses;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrClause(List<Clause> list) {
        this.clauses = list;
    }

    @Override // org.apache.tika.mime.Clause
    public boolean eval(byte[] bArr) {
        for (Clause clause : this.clauses) {
            if (clause.eval(bArr)) {
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
        List<Clause> list = this.clauses;
        return "or" + list;
    }
}
