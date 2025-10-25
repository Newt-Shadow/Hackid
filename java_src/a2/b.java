package a2;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import id.l;
import io.flutter.plugin.common.EventChannel;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b extends a2.a {

    /* renamed from: b  reason: collision with root package name */
    private final Context f61b;

    /* renamed from: c  reason: collision with root package name */
    private final l f62c;

    /* renamed from: d  reason: collision with root package name */
    private final l f63d;

    /* renamed from: e  reason: collision with root package name */
    private final ContentObserver f64e;

    /* loaded from: classes.dex */
    public static final class a extends ContentObserver {
        a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            super.onChange(z10);
            EventChannel.EventSink a10 = b.this.a();
            if (a10 == null) {
                return;
            }
            b.this.c().invoke(a10);
        }
    }

    public b(Context context, l lVar, l onChange) {
        m.e(context, "context");
        m.e(onChange, "onChange");
        this.f61b = context;
        this.f62c = lVar;
        this.f63d = onChange;
        this.f64e = new a(new Handler(Looper.getMainLooper()));
    }

    public final void b(double d10) {
        EventChannel.EventSink a10 = a();
        if (a10 == null) {
            return;
        }
        a10.success(Double.valueOf(d10));
    }

    public final l c() {
        return this.f63d;
    }

    @Override // a2.a, io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        super.onCancel(obj);
        this.f61b.getContentResolver().unregisterContentObserver(this.f64e);
    }

    @Override // a2.a, io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        l lVar;
        super.onListen(obj, eventSink);
        this.f61b.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), false, this.f64e);
        EventChannel.EventSink a10 = a();
        if (a10 != null && (lVar = this.f62c) != null) {
            lVar.invoke(a10);
        }
    }
}
