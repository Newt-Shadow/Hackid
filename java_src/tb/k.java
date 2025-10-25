package tb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final j f30561a;

    /* renamed from: b  reason: collision with root package name */
    final Runnable f30562b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar, Runnable runnable) {
        this.f30561a = jVar;
        this.f30562b = runnable;
    }

    public Integer a() {
        j jVar = this.f30561a;
        if (jVar != null) {
            return Integer.valueOf(jVar.a());
        }
        return null;
    }

    public boolean b() {
        j jVar = this.f30561a;
        if (jVar != null && jVar.b()) {
            return true;
        }
        return false;
    }
}
