package f3;

import android.net.Uri;
import b3.f2;
import f3.h;
import java.util.Map;
import o6.r0;
import x4.j;
import x4.s;
import y4.q0;
/* loaded from: classes.dex */
public final class l implements x {

    /* renamed from: a  reason: collision with root package name */
    private final Object f15709a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private f2.f f15710b;

    /* renamed from: c  reason: collision with root package name */
    private v f15711c;

    /* renamed from: d  reason: collision with root package name */
    private j.a f15712d;

    /* renamed from: e  reason: collision with root package name */
    private String f15713e;

    private v b(f2.f fVar) {
        String uri;
        j.a aVar = this.f15712d;
        if (aVar == null) {
            aVar = new s.b().e(this.f15713e);
        }
        Uri uri2 = fVar.f3919c;
        if (uri2 == null) {
            uri = null;
        } else {
            uri = uri2.toString();
        }
        k0 k0Var = new k0(uri, fVar.f3924h, aVar);
        r0 A = fVar.f3921e.entrySet().A();
        while (A.hasNext()) {
            Map.Entry entry = (Map.Entry) A.next();
            k0Var.e((String) entry.getKey(), (String) entry.getValue());
        }
        h a10 = new h.b().e(fVar.f3917a, j0.f15700d).b(fVar.f3922f).c(fVar.f3923g).d(q6.e.k(fVar.f3926j)).a(k0Var);
        a10.F(0, fVar.c());
        return a10;
    }

    @Override // f3.x
    public v a(f2 f2Var) {
        v vVar;
        y4.a.e(f2Var.f3880b);
        f2.f fVar = f2Var.f3880b.f3955c;
        if (fVar != null && q0.f32946a >= 18) {
            synchronized (this.f15709a) {
                if (!q0.c(fVar, this.f15710b)) {
                    this.f15710b = fVar;
                    this.f15711c = b(fVar);
                }
                vVar = (v) y4.a.e(this.f15711c);
            }
            return vVar;
        }
        return v.f15748a;
    }
}
