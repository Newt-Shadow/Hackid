package u9;
/* loaded from: classes.dex */
final class o extends q {

    /* renamed from: b  reason: collision with root package name */
    private final String f31066b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31067c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f31068d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i10, String str) {
        super(i10);
        this.f31066b = str;
        this.f31068d = false;
        this.f31067c = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f31066b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f31067c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.f31068d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i10, String str, int i11) {
        super(i10);
        this.f31068d = true;
        this.f31067c = i11;
        this.f31066b = str;
    }
}
