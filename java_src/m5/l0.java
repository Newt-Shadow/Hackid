package m5;

import android.util.Log;
import com.google.android.gms.common.api.a;
import java.util.Map;
/* loaded from: classes.dex */
final class l0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ l5.b f25827a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m0 f25828b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(m0 m0Var, l5.b bVar) {
        this.f25828b = m0Var;
        this.f25827a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        b bVar;
        a.f fVar;
        a.f fVar2;
        a.f fVar3;
        a.f fVar4;
        m0 m0Var = this.f25828b;
        map = m0Var.f25837f.f25782j;
        bVar = m0Var.f25833b;
        i0 i0Var = (i0) map.get(bVar);
        if (i0Var == null) {
            return;
        }
        if (this.f25827a.n()) {
            this.f25828b.f25836e = true;
            fVar = this.f25828b.f25832a;
            if (fVar.o()) {
                this.f25828b.i();
                return;
            }
            try {
                m0 m0Var2 = this.f25828b;
                fVar3 = m0Var2.f25832a;
                fVar4 = m0Var2.f25832a;
                fVar3.k(null, fVar4.b());
                return;
            } catch (SecurityException e10) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e10);
                fVar2 = this.f25828b.f25832a;
                fVar2.c("Failed to get service from broker.");
                i0Var.H(new l5.b(10), null);
                return;
            }
        }
        i0Var.H(this.f25827a, null);
    }
}
