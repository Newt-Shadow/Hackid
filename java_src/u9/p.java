package u9;
/* loaded from: classes.dex */
final class p extends q {

    /* renamed from: b  reason: collision with root package name */
    private final int f31069b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31070c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(int i10, int i11, int i12) {
        super(i10);
        if (i11 >= 0 && i11 <= 10 && i12 >= 0 && i12 <= 10) {
            this.f31069b = i11;
            this.f31070c = i12;
            return;
        }
        throw d9.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f31069b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f31070c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        if (this.f31069b == 10) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        if (this.f31070c == 10) {
            return true;
        }
        return false;
    }
}
