package org.apache.tika.mime;

import java.util.Arrays;
/* loaded from: classes2.dex */
class AndClause implements Clause {
    private final Clause[] clauses;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndClause(Clause... clauseArr) {
        this.clauses = clauseArr;
    }

    @Override // org.apache.tika.mime.Clause
    public boolean eval(byte[] bArr) {
        for (Clause clause : this.clauses) {
            if (!clause.eval(bArr)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.tika.mime.Clause
    public int size() {
        int i10 = 0;
        for (Clause clause : this.clauses) {
            i10 += clause.size();
        }
        return i10;
    }

    public String toString() {
        String arrays = Arrays.toString(this.clauses);
        return "and" + arrays;
    }
}
