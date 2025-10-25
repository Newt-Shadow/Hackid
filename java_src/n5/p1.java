package n5;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p1 implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r1 f26370a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ p1(r1 r1Var, q1 q1Var) {
        this.f26370a = r1Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i10 = message.what;
        if (i10 == 0) {
            hashMap = this.f26370a.f26379g;
            synchronized (hashMap) {
                n1 n1Var = (n1) message.obj;
                hashMap2 = this.f26370a.f26379g;
                o1 o1Var = (o1) hashMap2.get(n1Var);
                if (o1Var != null && o1Var.i()) {
                    if (o1Var.j()) {
                        o1Var.g("GmsClientSupervisor");
                    }
                    hashMap3 = this.f26370a.f26379g;
                    hashMap3.remove(n1Var);
                }
            }
            return true;
        } else if (i10 == 1) {
            hashMap4 = this.f26370a.f26379g;
            synchronized (hashMap4) {
                n1 n1Var2 = (n1) message.obj;
                hashMap5 = this.f26370a.f26379g;
                o1 o1Var2 = (o1) hashMap5.get(n1Var2);
                if (o1Var2 != null && o1Var2.a() == 3) {
                    String valueOf = String.valueOf(n1Var2);
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + valueOf, new Exception());
                    ComponentName b10 = o1Var2.b();
                    if (b10 == null) {
                        b10 = n1Var2.a();
                    }
                    if (b10 == null) {
                        String c10 = n1Var2.c();
                        q.k(c10);
                        b10 = new ComponentName(c10, CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE);
                    }
                    o1Var2.onServiceDisconnected(b10);
                }
            }
            return true;
        } else {
            return false;
        }
    }
}
