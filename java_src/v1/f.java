package v1;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import androidx.window.extensions.layout.FoldingFeature;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.m;
import t1.c;
import t1.d;
import t1.j;
import t1.k;
import t1.o;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f31167a = new f();

    private f() {
    }

    private final boolean d(k kVar, q1.b bVar) {
        Rect a10 = kVar.a();
        if (bVar.e()) {
            return false;
        }
        if (bVar.d() != a10.width() && bVar.a() != a10.height()) {
            return false;
        }
        if (bVar.d() < a10.width() && bVar.a() < a10.height()) {
            return false;
        }
        if (bVar.d() == a10.width() && bVar.a() == a10.height()) {
            return false;
        }
        return true;
    }

    public final t1.c a(k windowMetrics, FoldingFeature oemFeature) {
        d.b a10;
        c.b bVar;
        m.e(windowMetrics, "windowMetrics");
        m.e(oemFeature, "oemFeature");
        int type = oemFeature.getType();
        if (type != 1) {
            if (type != 2) {
                return null;
            }
            a10 = d.b.f29808b.b();
        } else {
            a10 = d.b.f29808b.a();
        }
        int state = oemFeature.getState();
        if (state != 1) {
            if (state != 2) {
                return null;
            }
            bVar = c.b.f29802d;
        } else {
            bVar = c.b.f29801c;
        }
        Rect bounds = oemFeature.getBounds();
        m.d(bounds, "oemFeature.bounds");
        if (!d(windowMetrics, new q1.b(bounds))) {
            return null;
        }
        Rect bounds2 = oemFeature.getBounds();
        m.d(bounds2, "oemFeature.bounds");
        return new t1.d(new q1.b(bounds2), a10, bVar);
    }

    public final j b(Context context, WindowLayoutInfo info) {
        m.e(context, "context");
        m.e(info, "info");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            return c(o.f29842b.d(context), info);
        }
        if (i10 >= 29 && (context instanceof Activity)) {
            return c(o.f29842b.c((Activity) context), info);
        }
        throw new UnsupportedOperationException("Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q.");
    }

    public final j c(k windowMetrics, WindowLayoutInfo info) {
        t1.c cVar;
        m.e(windowMetrics, "windowMetrics");
        m.e(info, "info");
        List<FoldingFeature> displayFeatures = info.getDisplayFeatures();
        m.d(displayFeatures, "info.displayFeatures");
        ArrayList arrayList = new ArrayList();
        for (FoldingFeature feature : displayFeatures) {
            if (feature instanceof FoldingFeature) {
                f fVar = f31167a;
                m.d(feature, "feature");
                cVar = fVar.a(windowMetrics, feature);
            } else {
                cVar = null;
            }
            if (cVar != null) {
                arrayList.add(cVar);
            }
        }
        return new j(arrayList);
    }
}
