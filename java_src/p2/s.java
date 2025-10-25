package p2;
/* loaded from: classes.dex */
final class s implements n2.i {

    /* renamed from: a  reason: collision with root package name */
    private final p f27778a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27779b;

    /* renamed from: c  reason: collision with root package name */
    private final n2.c f27780c;

    /* renamed from: d  reason: collision with root package name */
    private final n2.h f27781d;

    /* renamed from: e  reason: collision with root package name */
    private final t f27782e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(p pVar, String str, n2.c cVar, n2.h hVar, t tVar) {
        this.f27778a = pVar;
        this.f27779b = str;
        this.f27780c = cVar;
        this.f27781d = hVar;
        this.f27782e = tVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Exception exc) {
    }

    @Override // n2.i
    public void a(n2.d dVar, n2.k kVar) {
        this.f27782e.a(o.a().e(this.f27778a).c(dVar).f(this.f27779b).d(this.f27781d).b(this.f27780c).a(), kVar);
    }

    @Override // n2.i
    public void b(n2.d dVar) {
        a(dVar, new n2.k() { // from class: p2.r
            @Override // n2.k
            public final void a(Exception exc) {
                s.e(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p d() {
        return this.f27778a;
    }
}
