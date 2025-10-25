package n5;

import m6.Task;
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    private static final n0 f26369a = new k0();

    /* loaded from: classes.dex */
    public interface a {
        Object a(com.google.android.gms.common.api.k kVar);
    }

    public static Task a(com.google.android.gms.common.api.h hVar, a aVar) {
        n0 n0Var = f26369a;
        m6.l lVar = new m6.l();
        hVar.a(new l0(hVar, lVar, aVar, n0Var));
        return lVar.a();
    }

    public static Task b(com.google.android.gms.common.api.h hVar) {
        return a(hVar, new m0());
    }
}
