package u8;

import android.content.Context;
import android.os.Process;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import u8.w;
/* loaded from: classes.dex */
public final class a0 implements w {

    /* renamed from: a  reason: collision with root package name */
    private final Context f30833a;

    /* renamed from: b  reason: collision with root package name */
    private final xc.d f30834b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30835c;

    /* renamed from: d  reason: collision with root package name */
    private final xc.d f30836d;

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f30837e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f30838f;

    public a0(Context appContext, final y0 uuidGenerator) {
        xc.d a10;
        xc.d a11;
        xc.d a12;
        kotlin.jvm.internal.m.e(appContext, "appContext");
        kotlin.jvm.internal.m.e(uuidGenerator, "uuidGenerator");
        this.f30833a = appContext;
        a10 = xc.f.a(new id.a() { // from class: u8.x
            @Override // id.a
            public final Object invoke() {
                String p10;
                p10 = a0.p(a0.this);
                return p10;
            }
        });
        this.f30834b = a10;
        this.f30835c = Process.myPid();
        a11 = xc.f.a(new id.a() { // from class: u8.y
            @Override // id.a
            public final Object invoke() {
                String q10;
                q10 = a0.q(y0.this);
                return q10;
            }
        });
        this.f30836d = a11;
        a12 = xc.f.a(new id.a() { // from class: u8.z
            @Override // id.a
            public final Object invoke() {
                c0 o10;
                o10 = a0.o(a0.this);
                return o10;
            }
        });
        this.f30837e = a12;
    }

    private final List j() {
        return d0.f30896a.a(this.f30833a);
    }

    private final c0 l() {
        return (c0) this.f30837e.getValue();
    }

    private final boolean n(c0 c0Var, v vVar) {
        if (kotlin.jvm.internal.m.a(c(), c0Var.c())) {
            if (c0Var.b() != vVar.a() || !kotlin.jvm.internal.m.a(m(), vVar.b())) {
                return true;
            }
        } else if (c0Var.b() != vVar.a()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c0 o(a0 a0Var) {
        return d0.f30896a.b(a0Var.f30833a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String p(a0 a0Var) {
        return a0Var.l().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String q(y0 y0Var) {
        String uuid = y0Var.next().toString();
        kotlin.jvm.internal.m.d(uuid, "toString(...)");
        return uuid;
    }

    @Override // u8.w
    public void a() {
        this.f30838f = true;
    }

    @Override // u8.w
    public boolean b(Map processDataMap) {
        xc.k kVar;
        kotlin.jvm.internal.m.e(processDataMap, "processDataMap");
        if (this.f30838f) {
            return false;
        }
        ArrayList<xc.k> arrayList = new ArrayList();
        for (c0 c0Var : j()) {
            v vVar = (v) processDataMap.get(c0Var.c());
            if (vVar != null) {
                kVar = new xc.k(c0Var, vVar);
            } else {
                kVar = null;
            }
            if (kVar != null) {
                arrayList.add(kVar);
            }
        }
        if (!arrayList.isEmpty()) {
            for (xc.k kVar2 : arrayList) {
                if (!n((c0) kVar2.a(), (v) kVar2.b())) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // u8.w
    public String c() {
        return (String) this.f30834b.getValue();
    }

    @Override // u8.w
    public boolean d(Map processDataMap) {
        kotlin.jvm.internal.m.e(processDataMap, "processDataMap");
        v vVar = (v) processDataMap.get(c());
        if (vVar == null || vVar.a() != k() || !kotlin.jvm.internal.m.a(vVar.b(), m())) {
            return true;
        }
        return false;
    }

    @Override // u8.w
    public Map e() {
        return w.a.a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0002, code lost:
        r5 = yc.h0.s(r5);
     */
    @Override // u8.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map f(java.util.Map r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L23
            java.util.Map r5 = yc.e0.s(r5)
            if (r5 == 0) goto L23
            java.lang.String r0 = r4.c()
            u8.v r1 = new u8.v
            int r2 = android.os.Process.myPid()
            java.lang.String r3 = r4.m()
            r1.<init>(r2, r3)
            r5.put(r0, r1)
            java.util.Map r5 = yc.e0.q(r5)
            if (r5 == 0) goto L23
            goto L3c
        L23:
            java.lang.String r5 = r4.c()
            u8.v r0 = new u8.v
            int r1 = android.os.Process.myPid()
            java.lang.String r2 = r4.m()
            r0.<init>(r1, r2)
            xc.k r5 = xc.q.a(r5, r0)
            java.util.Map r5 = yc.e0.c(r5)
        L3c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: u8.a0.f(java.util.Map):java.util.Map");
    }

    public int k() {
        return this.f30835c;
    }

    public String m() {
        return (String) this.f30836d.getValue();
    }
}
