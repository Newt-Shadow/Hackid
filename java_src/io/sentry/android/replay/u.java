package io.sentry.android.replay;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.WindowManager;
import android.view.WindowMetrics;
import io.sentry.u5;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: g  reason: collision with root package name */
    public static final a f22792g = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f22793a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22794b;

    /* renamed from: c  reason: collision with root package name */
    private final float f22795c;

    /* renamed from: d  reason: collision with root package name */
    private final float f22796d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22797e;

    /* renamed from: f  reason: collision with root package name */
    private final int f22798f;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int a(int i10) {
            int i11 = i10 % 16;
            if (i11 <= 8) {
                return i10 - i11;
            }
            return i10 + (16 - i11);
        }

        public final u b(Context context, u5 sessionReplay) {
            Rect rect;
            int c10;
            int c11;
            WindowMetrics currentWindowMetrics;
            kotlin.jvm.internal.m.e(context, "context");
            kotlin.jvm.internal.m.e(sessionReplay, "sessionReplay");
            Object systemService = context.getSystemService("window");
            kotlin.jvm.internal.m.c(systemService, "null cannot be cast to non-null type android.view.WindowManager");
            WindowManager windowManager = (WindowManager) systemService;
            if (Build.VERSION.SDK_INT >= 30) {
                currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                rect = currentWindowMetrics.getBounds();
            } else {
                Point point = new Point();
                windowManager.getDefaultDisplay().getRealSize(point);
                rect = new Rect(0, 0, point.x, point.y);
            }
            kotlin.jvm.internal.m.d(rect, "if (VERSION.SDK_INT >= V…enBounds.y)\n            }");
            c10 = kd.c.c((rect.height() / context.getResources().getDisplayMetrics().density) * sessionReplay.h().sizeScale);
            Integer valueOf = Integer.valueOf(a(c10));
            c11 = kd.c.c((rect.width() / context.getResources().getDisplayMetrics().density) * sessionReplay.h().sizeScale);
            xc.k a10 = xc.q.a(valueOf, Integer.valueOf(a(c11)));
            int intValue = ((Number) a10.a()).intValue();
            int intValue2 = ((Number) a10.b()).intValue();
            return new u(intValue2, intValue, intValue2 / rect.width(), intValue / rect.height(), sessionReplay.d(), sessionReplay.h().bitRate);
        }
    }

    public u(int i10, int i11, float f10, float f11, int i12, int i13) {
        this.f22793a = i10;
        this.f22794b = i11;
        this.f22795c = f10;
        this.f22796d = f11;
        this.f22797e = i12;
        this.f22798f = i13;
    }

    public final int a() {
        return this.f22798f;
    }

    public final int b() {
        return this.f22797e;
    }

    public final int c() {
        return this.f22794b;
    }

    public final int d() {
        return this.f22793a;
    }

    public final float e() {
        return this.f22795c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u) {
            u uVar = (u) obj;
            return this.f22793a == uVar.f22793a && this.f22794b == uVar.f22794b && Float.compare(this.f22795c, uVar.f22795c) == 0 && Float.compare(this.f22796d, uVar.f22796d) == 0 && this.f22797e == uVar.f22797e && this.f22798f == uVar.f22798f;
        }
        return false;
    }

    public final float f() {
        return this.f22796d;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.f22793a) * 31) + Integer.hashCode(this.f22794b)) * 31) + Float.hashCode(this.f22795c)) * 31) + Float.hashCode(this.f22796d)) * 31) + Integer.hashCode(this.f22797e)) * 31) + Integer.hashCode(this.f22798f);
    }

    public String toString() {
        return "ScreenshotRecorderConfig(recordingWidth=" + this.f22793a + ", recordingHeight=" + this.f22794b + ", scaleFactorX=" + this.f22795c + ", scaleFactorY=" + this.f22796d + ", frameRate=" + this.f22797e + ", bitRate=" + this.f22798f + ')';
    }
}
