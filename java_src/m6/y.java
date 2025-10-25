package m6;
/* loaded from: classes.dex */
final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ z f25970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(z zVar) {
        this.f25970a = zVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        e eVar;
        e eVar2;
        obj = this.f25970a.f25972b;
        synchronized (obj) {
            z zVar = this.f25970a;
            eVar = zVar.f25973c;
            if (eVar != null) {
                eVar2 = zVar.f25973c;
                eVar2.a();
            }
        }
    }
}
