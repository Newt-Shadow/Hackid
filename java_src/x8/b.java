package x8;

import android.content.Context;
import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import x8.o;
/* loaded from: classes.dex */
public final class b implements o {

    /* renamed from: b  reason: collision with root package name */
    private static final a f32534b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f32535a;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(Context appContext) {
        kotlin.jvm.internal.m.e(appContext, "appContext");
        Bundle bundle = appContext.getPackageManager().getApplicationInfo(appContext.getPackageName(), 128).metaData;
        this.f32535a = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // x8.o
    public Boolean a() {
        if (this.f32535a.containsKey("firebase_sessions_enabled")) {
            return Boolean.valueOf(this.f32535a.getBoolean("firebase_sessions_enabled"));
        }
        return null;
    }

    @Override // x8.o
    public Object b(ad.e eVar) {
        return o.a.a(this, eVar);
    }

    @Override // x8.o
    public sd.a c() {
        if (this.f32535a.containsKey("firebase_sessions_sessions_restart_timeout")) {
            return sd.a.b(sd.c.h(this.f32535a.getInt("firebase_sessions_sessions_restart_timeout"), sd.d.f29591e));
        }
        return null;
    }

    @Override // x8.o
    public Double d() {
        if (this.f32535a.containsKey("firebase_sessions_sampling_rate")) {
            return Double.valueOf(this.f32535a.getDouble("firebase_sessions_sampling_rate"));
        }
        return null;
    }
}
