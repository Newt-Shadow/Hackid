package n5;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import n5.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d1 extends c6.f {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c f26271b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d1(c cVar, Looper looper) {
        super(looper);
        this.f26271b = cVar;
    }

    private static final void a(Message message) {
        e1 e1Var = (e1) message.obj;
        e1Var.b();
        e1Var.e();
    }

    private static final boolean b(Message message) {
        int i10 = message.what;
        if (i10 == 2 || i10 == 1 || i10 == 7) {
            return true;
        }
        return false;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        c.a aVar;
        c.a aVar2;
        l5.b bVar;
        l5.b bVar2;
        l5.b bVar3;
        l5.b bVar4;
        boolean z10;
        if (this.f26271b.C.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i10 = message.what;
        if ((i10 != 1 && i10 != 7 && ((i10 != 4 || this.f26271b.t()) && message.what != 5)) || this.f26271b.e()) {
            int i11 = message.what;
            PendingIntent pendingIntent = null;
            if (i11 == 4) {
                this.f26271b.f26262z = new l5.b(message.arg2);
                if (c.h0(this.f26271b)) {
                    c cVar = this.f26271b;
                    z10 = cVar.A;
                    if (!z10) {
                        cVar.i0(3, null);
                        return;
                    }
                }
                c cVar2 = this.f26271b;
                bVar3 = cVar2.f26262z;
                if (bVar3 != null) {
                    bVar4 = cVar2.f26262z;
                } else {
                    bVar4 = new l5.b(8);
                }
                this.f26271b.f26252p.d(bVar4);
                this.f26271b.L(bVar4);
                return;
            } else if (i11 == 5) {
                c cVar3 = this.f26271b;
                bVar = cVar3.f26262z;
                if (bVar != null) {
                    bVar2 = cVar3.f26262z;
                } else {
                    bVar2 = new l5.b(8);
                }
                this.f26271b.f26252p.d(bVar2);
                this.f26271b.L(bVar2);
                return;
            } else if (i11 == 3) {
                Object obj = message.obj;
                if (obj instanceof PendingIntent) {
                    pendingIntent = (PendingIntent) obj;
                }
                l5.b bVar5 = new l5.b(message.arg2, pendingIntent);
                this.f26271b.f26252p.d(bVar5);
                this.f26271b.L(bVar5);
                return;
            } else if (i11 == 6) {
                this.f26271b.i0(5, null);
                c cVar4 = this.f26271b;
                aVar = cVar4.f26257u;
                if (aVar != null) {
                    aVar2 = cVar4.f26257u;
                    aVar2.d(message.arg2);
                }
                this.f26271b.M(message.arg2);
                c.g0(this.f26271b, 5, 1, null);
                return;
            } else if (i11 == 2 && !this.f26271b.a()) {
                a(message);
                return;
            } else if (b(message)) {
                ((e1) message.obj).c();
                return;
            } else {
                int i12 = message.what;
                Log.wtf("GmsClient", "Don't know how to handle message: " + i12, new Exception());
                return;
            }
        }
        a(message);
    }
}
