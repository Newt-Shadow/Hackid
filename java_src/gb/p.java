package gb;

import android.content.Context;
import android.content.pm.PackageInfo;
import eb.h;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import lb.m;
/* loaded from: classes.dex */
public final class p implements eb.g {

    /* renamed from: c  reason: collision with root package name */
    private static final a f16361c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f16362d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f16363a;

    /* renamed from: b  reason: collision with root package name */
    private final fb.b f16364b;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public p(Context context, fb.b config) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        this.f16363a = context;
        this.f16364b = config;
    }

    @Override // eb.g
    public void b() {
        f16362d = false;
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        lb.m d10;
        String str;
        String str2;
        kotlin.jvm.internal.m.e(postHog, "postHog");
        if (f16362d) {
            return;
        }
        f16362d = true;
        PackageInfo i10 = o.i(this.f16363a, this.f16364b);
        if (i10 != null && (d10 = this.f16364b.d()) != null) {
            String versionName = i10.versionName;
            long r10 = o.r(i10);
            Object a10 = m.b.a(d10, "version", null, 2, null);
            if (a10 instanceof String) {
                str = (String) a10;
            } else {
                str = null;
            }
            Object a11 = m.b.a(d10, "build", null, 2, null);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (a11 == null) {
                str2 = "Application Installed";
            } else {
                if (a11 instanceof Integer) {
                    a11 = Long.valueOf(((Number) a11).intValue());
                }
                if (kotlin.jvm.internal.m.a(a11, Long.valueOf(r10))) {
                    return;
                }
                if (str != null) {
                    linkedHashMap.put("previous_version", str);
                }
                linkedHashMap.put("previous_build", a11);
                str2 = "Application Updated";
            }
            kotlin.jvm.internal.m.d(versionName, "versionName");
            linkedHashMap.put("version", versionName);
            linkedHashMap.put("build", Long.valueOf(r10));
            d10.b("version", versionName);
            d10.b("build", Long.valueOf(r10));
            h.a.a(postHog, str2, null, linkedHashMap, null, null, null, 58, null);
        }
    }
}
