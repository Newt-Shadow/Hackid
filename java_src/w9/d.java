package w9;
/* loaded from: classes.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final int f31975a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31976b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31977c;

    /* renamed from: d  reason: collision with root package name */
    private final int f31978d;

    /* renamed from: e  reason: collision with root package name */
    private int f31979e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i10, int i11, int i12, int i13) {
        this.f31975a = i10;
        this.f31976b = i11;
        this.f31977c = i12;
        this.f31978d = i13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f31977c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f31976b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f31979e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f31975a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f31978d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f31976b - this.f31975a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return h(this.f31979e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(int i10) {
        if (i10 != -1 && this.f31977c == (i10 % 3) * 3) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(int i10) {
        this.f31979e = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        this.f31979e = ((this.f31978d / 30) * 3) + (this.f31977c / 3);
    }

    public String toString() {
        return this.f31979e + "|" + this.f31978d;
    }
}
