package u9;
/* loaded from: classes.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    private int f31059a = 0;

    /* renamed from: b  reason: collision with root package name */
    private a f31060b = a.NUMERIC;

    /* loaded from: classes.dex */
    private enum a {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f31059a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i10) {
        this.f31059a += i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        if (this.f31060b == a.ALPHA) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        if (this.f31060b == a.ISO_IEC_646) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f31060b = a.ALPHA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f31060b = a.ISO_IEC_646;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.f31060b = a.NUMERIC;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(int i10) {
        this.f31059a = i10;
    }
}
