package n5;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public final class g1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final int f26317a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c f26318b;

    public g1(c cVar, int i10) {
        this.f26318b = cVar;
        this.f26317a = i10;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        m v0Var;
        c cVar = this.f26318b;
        if (iBinder != null) {
            obj = cVar.f26250n;
            synchronized (obj) {
                c cVar2 = this.f26318b;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                if (queryLocalInterface != null && (queryLocalInterface instanceof m)) {
                    v0Var = (m) queryLocalInterface;
                } else {
                    v0Var = new v0(iBinder);
                }
                cVar2.f26251o = v0Var;
            }
            this.f26318b.e0(0, null, this.f26317a);
            return;
        }
        c.d0(cVar, 16);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f26318b.f26250n;
        synchronized (obj) {
            this.f26318b.f26251o = null;
        }
        c cVar = this.f26318b;
        int i10 = this.f26317a;
        Handler handler = cVar.f26248l;
        handler.sendMessage(handler.obtainMessage(6, i10, 1));
    }
}
