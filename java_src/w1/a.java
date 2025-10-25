package w1;

import android.graphics.Rect;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import id.l;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import q1.h;
import q1.j;
import t1.c;
import t1.d;
import yc.o;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final C0355a f31642b = new C0355a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f31643c = a.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final j f31644a;

    /* renamed from: w1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0355a {
        private C0355a() {
        }

        public /* synthetic */ C0355a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(SidecarDeviceState sidecarDeviceState) {
            m.e(sidecarDeviceState, "sidecarDeviceState");
            try {
                return sidecarDeviceState.posture;
            } catch (NoSuchFieldError unused) {
                try {
                    Object invoke = SidecarDeviceState.class.getMethod("getPosture", new Class[0]).invoke(sidecarDeviceState, new Object[0]);
                    m.c(invoke, "null cannot be cast to non-null type kotlin.Int");
                    return ((Integer) invoke).intValue();
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                    return 0;
                }
            }
        }

        public final int b(SidecarDeviceState sidecarDeviceState) {
            m.e(sidecarDeviceState, "sidecarDeviceState");
            int a10 = a(sidecarDeviceState);
            if (a10 < 0 || a10 > 4) {
                return 0;
            }
            return a10;
        }

        public final List c(SidecarWindowLayoutInfo info) {
            List h10;
            List h11;
            m.e(info, "info");
            try {
                try {
                    List list = info.displayFeatures;
                    if (list == null) {
                        h11 = o.h();
                        return h11;
                    }
                    return list;
                } catch (NoSuchFieldError unused) {
                    Object invoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", new Class[0]).invoke(info, new Object[0]);
                    m.c(invoke, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                    return (List) invoke;
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
                h10 = o.h();
                return h10;
            }
        }

        public final void d(SidecarDeviceState sidecarDeviceState, int i10) {
            m.e(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = i10;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i10));
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final b f31645e = new b();

        b() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(SidecarDisplayFeature require) {
            m.e(require, "$this$require");
            boolean z10 = true;
            if (require.getType() != 1 && require.getType() != 2) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final c f31646e = new c();

        c() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(SidecarDisplayFeature require) {
            boolean z10;
            m.e(require, "$this$require");
            if (require.getRect().width() == 0 && require.getRect().height() == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final d f31647e = new d();

        d() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(SidecarDisplayFeature require) {
            m.e(require, "$this$require");
            boolean z10 = true;
            if (require.getType() == 1 && require.getRect().width() != 0 && require.getRect().height() != 0) {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        public static final e f31648e = new e();

        e() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(SidecarDisplayFeature require) {
            boolean z10;
            m.e(require, "$this$require");
            if (require.getRect().left != 0 && require.getRect().top != 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            return Boolean.valueOf(z10);
        }
    }

    public a(j verificationMode) {
        m.e(verificationMode, "verificationMode");
        this.f31644a = verificationMode;
    }

    private final boolean b(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (m.a(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return m.a(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    private final boolean c(List list, List list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!b((SidecarDisplayFeature) list.get(i10), (SidecarDisplayFeature) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(SidecarDeviceState sidecarDeviceState, SidecarDeviceState sidecarDeviceState2) {
        if (m.a(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        C0355a c0355a = f31642b;
        if (c0355a.b(sidecarDeviceState) == c0355a.b(sidecarDeviceState2)) {
            return true;
        }
        return false;
    }

    public final boolean d(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (m.a(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        C0355a c0355a = f31642b;
        return c(c0355a.c(sidecarWindowLayoutInfo), c0355a.c(sidecarWindowLayoutInfo2));
    }

    public final List e(List sidecarDisplayFeatures, SidecarDeviceState deviceState) {
        m.e(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        m.e(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            t1.a g10 = g((SidecarDisplayFeature) it.next(), deviceState);
            if (g10 != null) {
                arrayList.add(g10);
            }
        }
        return arrayList;
    }

    public final t1.j f(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState state) {
        List h10;
        m.e(state, "state");
        if (sidecarWindowLayoutInfo == null) {
            h10 = o.h();
            return new t1.j(h10);
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        C0355a c0355a = f31642b;
        c0355a.d(sidecarDeviceState, c0355a.b(state));
        return new t1.j(e(c0355a.c(sidecarWindowLayoutInfo), sidecarDeviceState));
    }

    public final t1.a g(SidecarDisplayFeature feature, SidecarDeviceState deviceState) {
        d.b a10;
        c.b bVar;
        m.e(feature, "feature");
        m.e(deviceState, "deviceState");
        h.a aVar = h.f27964a;
        String TAG = f31643c;
        m.d(TAG, "TAG");
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) h.a.b(aVar, feature, TAG, this.f31644a, null, 4, null).c("Type must be either TYPE_FOLD or TYPE_HINGE", b.f31645e).c("Feature bounds must not be 0", c.f31646e).c("TYPE_FOLD must have 0 area", d.f31647e).c("Feature be pinned to either left or top", e.f31648e).a();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type != 1) {
            if (type != 2) {
                return null;
            }
            a10 = d.b.f29808b.b();
        } else {
            a10 = d.b.f29808b.a();
        }
        int b10 = f31642b.b(deviceState);
        if (b10 == 0 || b10 == 1) {
            return null;
        }
        if (b10 != 2) {
            if (b10 != 3) {
                if (b10 == 4) {
                    return null;
                }
                bVar = c.b.f29801c;
            } else {
                bVar = c.b.f29801c;
            }
        } else {
            bVar = c.b.f29802d;
        }
        Rect rect = feature.getRect();
        m.d(rect, "feature.rect");
        return new t1.d(new q1.b(rect), a10, bVar);
    }

    public /* synthetic */ a(j jVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? j.QUIET : jVar);
    }
}
