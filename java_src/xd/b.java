package xd;

import java.util.Arrays;
import xc.l;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private d[] f32737a;

    /* renamed from: b  reason: collision with root package name */
    private int f32738b;

    /* renamed from: c  reason: collision with root package name */
    private int f32739c;

    /* JADX INFO: Access modifiers changed from: protected */
    public final d c() {
        d dVar;
        synchronized (this) {
            d[] dVarArr = this.f32737a;
            if (dVarArr == null) {
                dVarArr = e(2);
                this.f32737a = dVarArr;
            } else if (this.f32738b >= dVarArr.length) {
                Object[] copyOf = Arrays.copyOf(dVarArr, dVarArr.length * 2);
                kotlin.jvm.internal.m.d(copyOf, "copyOf(...)");
                this.f32737a = (d[]) copyOf;
                dVarArr = (d[]) copyOf;
            }
            int i10 = this.f32739c;
            do {
                dVar = dVarArr[i10];
                if (dVar == null) {
                    dVar = d();
                    dVarArr[i10] = dVar;
                }
                i10++;
                if (i10 >= dVarArr.length) {
                    i10 = 0;
                }
                kotlin.jvm.internal.m.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            } while (!dVar.a(this));
            this.f32739c = i10;
            this.f32738b++;
        }
        return dVar;
    }

    protected abstract d d();

    protected abstract d[] e(int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(d dVar) {
        int i10;
        ad.e[] b10;
        synchronized (this) {
            int i11 = this.f32738b - 1;
            this.f32738b = i11;
            if (i11 == 0) {
                this.f32739c = 0;
            }
            kotlin.jvm.internal.m.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            b10 = dVar.b(this);
        }
        for (ad.e eVar : b10) {
            if (eVar != null) {
                l.a aVar = xc.l.f32718b;
                eVar.resumeWith(xc.l.b(xc.t.f32733a));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final d[] g() {
        return this.f32737a;
    }
}
