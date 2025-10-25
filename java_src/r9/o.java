package r9;
/* loaded from: classes.dex */
final class o {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f29029c = {1, 1, 2};

    /* renamed from: a  reason: collision with root package name */
    private final m f29030a = new m();

    /* renamed from: b  reason: collision with root package name */
    private final n f29031b = new n();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d9.n a(int i10, j9.a aVar, int i11) {
        int[] o10 = p.o(aVar, i11, false, f29029c);
        try {
            return this.f29031b.b(i10, aVar, o10);
        } catch (d9.m unused) {
            return this.f29030a.b(i10, aVar, o10);
        }
    }
}
