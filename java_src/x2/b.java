package x2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    private final long f32185a;

    /* renamed from: b  reason: collision with root package name */
    private final p2.p f32186b;

    /* renamed from: c  reason: collision with root package name */
    private final p2.i f32187c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j10, p2.p pVar, p2.i iVar) {
        this.f32185a = j10;
        if (pVar != null) {
            this.f32186b = pVar;
            if (iVar != null) {
                this.f32187c = iVar;
                return;
            }
            throw new NullPointerException("Null event");
        }
        throw new NullPointerException("Null transportContext");
    }

    @Override // x2.k
    public p2.i b() {
        return this.f32187c;
    }

    @Override // x2.k
    public long c() {
        return this.f32185a;
    }

    @Override // x2.k
    public p2.p d() {
        return this.f32186b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f32185a == kVar.c() && this.f32186b.equals(kVar.d()) && this.f32187c.equals(kVar.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f32185a;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f32186b.hashCode()) * 1000003) ^ this.f32187c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f32185a + ", transportContext=" + this.f32186b + ", event=" + this.f32187c + "}";
    }
}
