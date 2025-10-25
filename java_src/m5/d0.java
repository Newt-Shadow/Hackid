package m5;

import android.os.Handler;
import m5.c;
/* loaded from: classes.dex */
final class d0 implements c.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ e f25768a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(e eVar) {
        this.f25768a = eVar;
    }

    @Override // m5.c.a
    public final void a(boolean z10) {
        Handler handler;
        Handler handler2;
        e eVar = this.f25768a;
        handler = eVar.f25786n;
        handler2 = eVar.f25786n;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
