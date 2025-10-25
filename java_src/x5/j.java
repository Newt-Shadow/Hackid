package x5;
/* loaded from: classes.dex */
final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ l f32487a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j(l lVar, i iVar) {
        this.f32487a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long b10 = this.f32487a.b();
        if (b10 != -1 && com.google.android.gms.common.util.g.b().currentTimeMillis() > b10) {
            l.f(l.c(this.f32487a));
        }
    }
}
