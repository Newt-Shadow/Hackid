package fb;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import gb.c;
import gb.d;
import gb.j;
import gb.o;
import gb.p;
import gb.s;
import gb.u;
import ib.g;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import lb.f;
import lb.h;
import lb.i;
import lb.k;
import lb.l;
import lb.m;
import xc.t;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0168a f16063a = new C0168a(null);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f16064b = new Object();

    /* renamed from: fb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0168a {
        private C0168a() {
        }

        public /* synthetic */ C0168a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(Context context, b bVar) {
            i o10;
            if (bVar.o() instanceof l) {
                o10 = new gb.i(bVar);
            } else {
                o10 = bVar.o();
            }
            bVar.S(o10);
            f e10 = bVar.e();
            if (e10 == null) {
                e10 = new d(context, bVar);
            }
            bVar.M(e10);
            File dir = context.getDir("app_posthog-disk-queue", 0);
            File file = new File(context.getCacheDir(), "posthog-disk-queue");
            File file2 = new File(context.getCacheDir(), "posthog-disk-replay-queue");
            String n10 = bVar.n();
            if (n10 == null) {
                n10 = dir.getAbsolutePath();
            }
            bVar.R(n10);
            String H = bVar.H();
            if (H == null) {
                H = file.getAbsolutePath();
            }
            bVar.f0(H);
            String z10 = bVar.z();
            if (z10 == null) {
                z10 = file2.getAbsolutePath();
            }
            bVar.Z(z10);
            m d10 = bVar.d();
            if (d10 == null) {
                d10 = new u(context, bVar, null, 4, null);
            }
            bVar.L(d10);
            if (Build.VERSION.SDK_INT >= 33 && (bVar.f() instanceof h)) {
                bVar.N(new gb.h());
            }
            k r10 = bVar.r();
            if (r10 == null) {
                r10 = new j(context);
            }
            bVar.V(r10);
            if (!kotlin.jvm.internal.m.a(bVar.B(), "posthog-flutter")) {
                bVar.a0("posthog-android");
                bVar.b0("3.21.3");
            }
            gb.b bVar2 = new gb.b(null, 1, null);
            bVar.a(new hb.l(context, bVar, bVar2));
            bVar.a(new g(bVar));
            if ((context instanceof Application) && (bVar.h0() || bVar.i0() || bVar.F())) {
                bVar.a(new c((Application) context, bVar));
            }
            if (bVar.g0()) {
                bVar.a(new p(context, bVar));
            }
            bVar.a(new s(context, bVar, bVar2, null, 8, null));
            if (bVar.I()) {
                bVar.a(new jb.a(context));
            }
        }

        public final void b(Context context, b config) {
            kotlin.jvm.internal.m.e(context, "context");
            kotlin.jvm.internal.m.e(config, "config");
            synchronized (a.f16064b) {
                a.f16063a.a(o.b(context), config);
                eb.c.A.j(config);
                t tVar = t.f32733a;
            }
        }
    }
}
