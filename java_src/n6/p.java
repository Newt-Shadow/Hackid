package n6;
/* loaded from: classes.dex */
final class p extends l {

    /* renamed from: a  reason: collision with root package name */
    private final Object f26441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Object obj) {
        this.f26441a = obj;
    }

    @Override // n6.l
    public Object b() {
        return this.f26441a;
    }

    @Override // n6.l
    public boolean c() {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.f26441a.equals(((p) obj).f26441a);
        }
        return false;
    }

    public int hashCode() {
        return this.f26441a.hashCode() + 1502476572;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f26441a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
        sb2.append("Optional.of(");
        sb2.append(valueOf);
        sb2.append(")");
        return sb2.toString();
    }
}
