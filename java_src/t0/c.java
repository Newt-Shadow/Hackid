package t0;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.app.i0;
import androidx.fragment.app.p;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.h0;
import yc.m0;
import yc.w;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f29771a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static C0310c f29772b = C0310c.f29784d;

    /* loaded from: classes.dex */
    public enum a {
        PENALTY_LOG,
        PENALTY_DEATH,
        DETECT_FRAGMENT_REUSE,
        DETECT_FRAGMENT_TAG_USAGE,
        DETECT_WRONG_NESTED_HIERARCHY,
        DETECT_RETAIN_INSTANCE_USAGE,
        DETECT_SET_USER_VISIBLE_HINT,
        DETECT_TARGET_FRAGMENT_USAGE,
        DETECT_WRONG_FRAGMENT_CONTAINER
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* renamed from: t0.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0310c {

        /* renamed from: c  reason: collision with root package name */
        public static final a f29783c = new a(null);

        /* renamed from: d  reason: collision with root package name */
        public static final C0310c f29784d;

        /* renamed from: a  reason: collision with root package name */
        private final Set f29785a;

        /* renamed from: b  reason: collision with root package name */
        private final Map f29786b;

        /* renamed from: t0.c$c$a */
        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            Set b10;
            Map e10;
            b10 = m0.b();
            e10 = h0.e();
            f29784d = new C0310c(b10, null, e10);
        }

        public C0310c(Set flags, b bVar, Map allowedViolations) {
            kotlin.jvm.internal.m.e(flags, "flags");
            kotlin.jvm.internal.m.e(allowedViolations, "allowedViolations");
            this.f29785a = flags;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : allowedViolations.entrySet()) {
                linkedHashMap.put((String) entry.getKey(), (Set) entry.getValue());
            }
            this.f29786b = linkedHashMap;
        }

        public final Set a() {
            return this.f29785a;
        }

        public final b b() {
            return null;
        }

        public final Map c() {
            return this.f29786b;
        }
    }

    private c() {
    }

    private final C0310c b(p pVar) {
        while (pVar != null) {
            if (pVar.isAdded()) {
                i0 parentFragmentManager = pVar.getParentFragmentManager();
                kotlin.jvm.internal.m.d(parentFragmentManager, "declaringFragment.parentFragmentManager");
                if (parentFragmentManager.C0() != null) {
                    C0310c C0 = parentFragmentManager.C0();
                    kotlin.jvm.internal.m.b(C0);
                    return C0;
                }
            }
            pVar = pVar.getParentFragment();
        }
        return f29772b;
    }

    private final void c(C0310c c0310c, final m mVar) {
        p a10 = mVar.a();
        final String name = a10.getClass().getName();
        if (c0310c.a().contains(a.PENALTY_LOG)) {
            Log.d("FragmentStrictMode", "Policy violation in " + name, mVar);
        }
        c0310c.b();
        if (c0310c.a().contains(a.PENALTY_DEATH)) {
            p(a10, new Runnable() { // from class: t0.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.d(name, mVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(String str, m violation) {
        kotlin.jvm.internal.m.e(violation, "$violation");
        Log.e("FragmentStrictMode", "Policy violation with PENALTY_DEATH in " + str, violation);
        throw violation;
    }

    private final void e(m mVar) {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "StrictMode violation in " + mVar.a().getClass().getName(), mVar);
        }
    }

    public static final void f(p fragment, String previousFragmentId) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(previousFragmentId, "previousFragmentId");
        t0.a aVar = new t0.a(fragment, previousFragmentId);
        c cVar = f29771a;
        cVar.e(aVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_FRAGMENT_REUSE) && cVar.q(b10, fragment.getClass(), aVar.getClass())) {
            cVar.c(b10, aVar);
        }
    }

    public static final void g(p fragment, ViewGroup viewGroup) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        d dVar = new d(fragment, viewGroup);
        c cVar = f29771a;
        cVar.e(dVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_FRAGMENT_TAG_USAGE) && cVar.q(b10, fragment.getClass(), dVar.getClass())) {
            cVar.c(b10, dVar);
        }
    }

    public static final void h(p fragment) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        e eVar = new e(fragment);
        c cVar = f29771a;
        cVar.e(eVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_RETAIN_INSTANCE_USAGE) && cVar.q(b10, fragment.getClass(), eVar.getClass())) {
            cVar.c(b10, eVar);
        }
    }

    public static final void i(p fragment) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        f fVar = new f(fragment);
        c cVar = f29771a;
        cVar.e(fVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.q(b10, fragment.getClass(), fVar.getClass())) {
            cVar.c(b10, fVar);
        }
    }

    public static final void j(p fragment) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        g gVar = new g(fragment);
        c cVar = f29771a;
        cVar.e(gVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.q(b10, fragment.getClass(), gVar.getClass())) {
            cVar.c(b10, gVar);
        }
    }

    public static final void k(p fragment) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        i iVar = new i(fragment);
        c cVar = f29771a;
        cVar.e(iVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_RETAIN_INSTANCE_USAGE) && cVar.q(b10, fragment.getClass(), iVar.getClass())) {
            cVar.c(b10, iVar);
        }
    }

    public static final void l(p violatingFragment, p targetFragment, int i10) {
        kotlin.jvm.internal.m.e(violatingFragment, "violatingFragment");
        kotlin.jvm.internal.m.e(targetFragment, "targetFragment");
        j jVar = new j(violatingFragment, targetFragment, i10);
        c cVar = f29771a;
        cVar.e(jVar);
        C0310c b10 = cVar.b(violatingFragment);
        if (b10.a().contains(a.DETECT_TARGET_FRAGMENT_USAGE) && cVar.q(b10, violatingFragment.getClass(), jVar.getClass())) {
            cVar.c(b10, jVar);
        }
    }

    public static final void m(p fragment, boolean z10) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        k kVar = new k(fragment, z10);
        c cVar = f29771a;
        cVar.e(kVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_SET_USER_VISIBLE_HINT) && cVar.q(b10, fragment.getClass(), kVar.getClass())) {
            cVar.c(b10, kVar);
        }
    }

    public static final void n(p fragment, ViewGroup container) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(container, "container");
        n nVar = new n(fragment, container);
        c cVar = f29771a;
        cVar.e(nVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_WRONG_FRAGMENT_CONTAINER) && cVar.q(b10, fragment.getClass(), nVar.getClass())) {
            cVar.c(b10, nVar);
        }
    }

    public static final void o(p fragment, p expectedParentFragment, int i10) {
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(expectedParentFragment, "expectedParentFragment");
        o oVar = new o(fragment, expectedParentFragment, i10);
        c cVar = f29771a;
        cVar.e(oVar);
        C0310c b10 = cVar.b(fragment);
        if (b10.a().contains(a.DETECT_WRONG_NESTED_HIERARCHY) && cVar.q(b10, fragment.getClass(), oVar.getClass())) {
            cVar.c(b10, oVar);
        }
    }

    private final void p(p pVar, Runnable runnable) {
        if (pVar.isAdded()) {
            Handler h10 = pVar.getParentFragmentManager().w0().h();
            if (kotlin.jvm.internal.m.a(h10.getLooper(), Looper.myLooper())) {
                runnable.run();
                return;
            } else {
                h10.post(runnable);
                return;
            }
        }
        runnable.run();
    }

    private final boolean q(C0310c c0310c, Class cls, Class cls2) {
        boolean I;
        Set set = (Set) c0310c.c().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (!kotlin.jvm.internal.m.a(cls2.getSuperclass(), m.class)) {
            I = w.I(set, cls2.getSuperclass());
            if (I) {
                return false;
            }
        }
        return !set.contains(cls2);
    }
}
