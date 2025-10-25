package s7;
/* loaded from: classes.dex */
final class b extends j {

    /* renamed from: b  reason: collision with root package name */
    private final String f29478b;

    /* renamed from: c  reason: collision with root package name */
    private final String f29479c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29480d;

    /* renamed from: e  reason: collision with root package name */
    private final String f29481e;

    /* renamed from: f  reason: collision with root package name */
    private final long f29482f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, String str2, String str3, String str4, long j10) {
        if (str != null) {
            this.f29478b = str;
            if (str2 != null) {
                this.f29479c = str2;
                if (str3 != null) {
                    this.f29480d = str3;
                    if (str4 != null) {
                        this.f29481e = str4;
                        this.f29482f = j10;
                        return;
                    }
                    throw new NullPointerException("Null variantId");
                }
                throw new NullPointerException("Null parameterValue");
            }
            throw new NullPointerException("Null parameterKey");
        }
        throw new NullPointerException("Null rolloutId");
    }

    @Override // s7.j
    public String c() {
        return this.f29479c;
    }

    @Override // s7.j
    public String d() {
        return this.f29480d;
    }

    @Override // s7.j
    public String e() {
        return this.f29478b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f29478b.equals(jVar.e()) && this.f29479c.equals(jVar.c()) && this.f29480d.equals(jVar.d()) && this.f29481e.equals(jVar.g()) && this.f29482f == jVar.f()) {
            return true;
        }
        return false;
    }

    @Override // s7.j
    public long f() {
        return this.f29482f;
    }

    @Override // s7.j
    public String g() {
        return this.f29481e;
    }

    public int hashCode() {
        long j10 = this.f29482f;
        return ((((((((this.f29478b.hashCode() ^ 1000003) * 1000003) ^ this.f29479c.hashCode()) * 1000003) ^ this.f29480d.hashCode()) * 1000003) ^ this.f29481e.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.f29478b + ", parameterKey=" + this.f29479c + ", parameterValue=" + this.f29480d + ", variantId=" + this.f29481e + ", templateVersion=" + this.f29482f + "}";
    }
}
