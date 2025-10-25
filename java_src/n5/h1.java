package n5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import n5.c;
/* loaded from: classes.dex */
public final class h1 extends s0 {

    /* renamed from: g  reason: collision with root package name */
    public final IBinder f26320g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ c f26321h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(c cVar, int i10, IBinder iBinder, Bundle bundle) {
        super(cVar, i10, bundle);
        this.f26321h = cVar;
        this.f26320g = iBinder;
    }

    @Override // n5.s0
    protected final void f(l5.b bVar) {
        if (this.f26321h.f26258v != null) {
            this.f26321h.f26258v.a(bVar);
        }
        this.f26321h.L(bVar);
    }

    @Override // n5.s0
    protected final boolean g() {
        c.a aVar;
        c.a aVar2;
        try {
            IBinder iBinder = this.f26320g;
            q.k(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f26321h.E().equals(interfaceDescriptor)) {
                String E = this.f26321h.E();
                Log.w("GmsClient", "service descriptor mismatch: " + E + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface s10 = this.f26321h.s(this.f26320g);
            if (s10 != null && (c.g0(this.f26321h, 2, 4, s10) || c.g0(this.f26321h, 3, 4, s10))) {
                this.f26321h.f26262z = null;
                c cVar = this.f26321h;
                Bundle x10 = cVar.x();
                aVar = cVar.f26257u;
                if (aVar != null) {
                    aVar2 = this.f26321h.f26257u;
                    aVar2.k(x10);
                    return true;
                }
                return true;
            }
            return false;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
