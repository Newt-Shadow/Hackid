package r;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f28842a = new Object();

    public static final Object c(j jVar, int i10) {
        Object obj;
        m.e(jVar, "<this>");
        int a10 = s.a.a(jVar.f28839b, jVar.f28841d, i10);
        if (a10 < 0 || (obj = jVar.f28840c[a10]) == f28842a) {
            return null;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(j jVar) {
        int i10 = jVar.f28841d;
        int[] iArr = jVar.f28839b;
        Object[] objArr = jVar.f28840c;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f28842a) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        jVar.f28838a = false;
        jVar.f28841d = i11;
    }
}
