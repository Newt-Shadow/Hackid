package tb;
/* loaded from: classes.dex */
public interface n {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f30571a;

        a(i iVar) {
            this.f30571a = iVar;
        }

        @Override // tb.j
        public int a() {
            return this.f30571a.f30549c;
        }

        @Override // tb.j
        public boolean b() {
            return this.f30571a.F();
        }
    }

    static n b(String str, int i10, int i11) {
        if (i10 == 1) {
            return new r(str, i11);
        }
        return new p(str, i10, i11);
    }

    default void a(i iVar, Runnable runnable) {
        a aVar;
        if (iVar == null) {
            aVar = null;
        } else {
            aVar = new a(iVar);
        }
        c(new k(aVar, runnable));
    }

    void c(k kVar);

    void d();

    void start();
}
