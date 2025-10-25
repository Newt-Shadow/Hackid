package dev.fluttercommunity.plus.share;

import android.content.Context;
import android.content.Intent;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a implements PluginRegistry.ActivityResultListener {

    /* renamed from: d  reason: collision with root package name */
    public static final C0152a f15169d = new C0152a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Context f15170a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel.Result f15171b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f15172c;

    /* renamed from: dev.fluttercommunity.plus.share.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0152a {
        private C0152a() {
        }

        public /* synthetic */ C0152a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(Context context) {
        m.e(context, "context");
        this.f15170a = context;
        this.f15172c = new AtomicBoolean(true);
    }

    private final void b(String str) {
        MethodChannel.Result result;
        if (this.f15172c.compareAndSet(false, true) && (result = this.f15171b) != null) {
            m.b(result);
            result.success(str);
            this.f15171b = null;
        }
    }

    public final void a() {
        this.f15172c.set(true);
        this.f15171b = null;
    }

    public final void c(MethodChannel.Result callback) {
        m.e(callback, "callback");
        if (this.f15172c.compareAndSet(true, false)) {
            SharePlusPendingIntent.f15167a.b("");
            this.f15172c.set(false);
            this.f15171b = callback;
            return;
        }
        MethodChannel.Result result = this.f15171b;
        if (result != null) {
            result.success("dev.fluttercommunity.plus/share/unavailable");
        }
        SharePlusPendingIntent.f15167a.b("");
        this.f15172c.set(false);
        this.f15171b = callback;
    }

    public final void d() {
        b("dev.fluttercommunity.plus/share/unavailable");
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 22643) {
            b(SharePlusPendingIntent.f15167a.a());
            return true;
        }
        return false;
    }
}
