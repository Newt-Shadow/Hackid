package c1;

import android.content.Context;
import android.util.Log;
import id.l;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f4795a = new b();

    private b() {
    }

    public final Object a(Context context, String tag, l manager) {
        m.e(context, "context");
        m.e(tag, "tag");
        m.e(manager, "manager");
        try {
            return manager.invoke(context);
        } catch (NoClassDefFoundError unused) {
            Log.d(tag, "Unable to find adservices code, check manifest for uses-library tag, versionS=" + a.f4792a.b());
            return null;
        }
    }
}
