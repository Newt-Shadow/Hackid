package org.apache.tika.mime;
/* loaded from: classes2.dex */
class Magic implements Clause, Comparable<Magic> {
    private final Clause clause;
    private final int priority;
    private final String string;
    private final MimeType type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Magic(MimeType mimeType, int i10, Clause clause) {
        this.type = mimeType;
        this.priority = i10;
        this.clause = clause;
        this.string = "[" + i10 + "/" + clause + "]";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Magic)) {
            return false;
        }
        Magic magic = (Magic) obj;
        if (!this.type.equals(magic.type) || !this.string.equals(magic.string)) {
            return false;
        }
        return true;
    }

    @Override // org.apache.tika.mime.Clause
    public boolean eval(byte[] bArr) {
        return this.clause.eval(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPriority() {
        return this.priority;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MimeType getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode() ^ this.string.hashCode();
    }

    @Override // org.apache.tika.mime.Clause
    public int size() {
        return this.clause.size();
    }

    public String toString() {
        return this.string;
    }

    @Override // java.lang.Comparable
    public int compareTo(Magic magic) {
        int i10 = magic.priority - this.priority;
        if (i10 == 0) {
            i10 = magic.size() - size();
        }
        if (i10 == 0) {
            i10 = magic.type.compareTo(this.type);
        }
        return i10 == 0 ? magic.string.compareTo(this.string) : i10;
    }
}
