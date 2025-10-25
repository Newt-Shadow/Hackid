package androidx.webkit.internal;

import androidx.webkit.internal.a;
import java.lang.reflect.Array;
import java.util.List;
import java.util.concurrent.Executor;
import o1.d;
import org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface;
/* loaded from: classes.dex */
public class v0 extends o1.e {

    /* renamed from: a  reason: collision with root package name */
    private ProxyControllerBoundaryInterface f3627a;

    private ProxyControllerBoundaryInterface d() {
        if (this.f3627a == null) {
            this.f3627a = m1.d().getProxyController();
        }
        return this.f3627a;
    }

    public static String[][] e(List list) {
        String[][] strArr = (String[][]) Array.newInstance(String.class, list.size(), 2);
        for (int i10 = 0; i10 < list.size(); i10++) {
            strArr[i10][0] = ((d.b) list.get(i10)).a();
            strArr[i10][1] = ((d.b) list.get(i10)).b();
        }
        return strArr;
    }

    @Override // o1.e
    public void a(Executor executor, Runnable runnable) {
        if (l1.Q.d()) {
            d().clearProxyOverride(runnable, executor);
            return;
        }
        throw l1.a();
    }

    @Override // o1.e
    public void c(o1.d dVar, Executor executor, Runnable runnable) {
        a.d dVar2 = l1.Q;
        a.d dVar3 = l1.W;
        String[][] e10 = e(dVar.b());
        String[] strArr = (String[]) dVar.a().toArray(new String[0]);
        if (dVar2.d() && !dVar.c()) {
            d().setProxyOverride(e10, strArr, runnable, executor);
        } else if (dVar2.d() && dVar3.d()) {
            d().setProxyOverride(e10, strArr, runnable, executor, dVar.c());
        } else {
            throw l1.a();
        }
    }
}
