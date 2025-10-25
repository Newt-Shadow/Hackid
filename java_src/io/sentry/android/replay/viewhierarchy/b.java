package io.sentry.android.replay.viewhierarchy;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.view.View;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import id.l;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.sentry.android.replay.e;
import io.sentry.android.replay.util.n;
import io.sentry.s5;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import rd.b0;
import xc.k;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: m  reason: collision with root package name */
    public static final a f22844m = new a(null);

    /* renamed from: n  reason: collision with root package name */
    public static final int f22845n = 8;

    /* renamed from: a  reason: collision with root package name */
    private final float f22846a;

    /* renamed from: b  reason: collision with root package name */
    private final float f22847b;

    /* renamed from: c  reason: collision with root package name */
    private final int f22848c;

    /* renamed from: d  reason: collision with root package name */
    private final int f22849d;

    /* renamed from: e  reason: collision with root package name */
    private final float f22850e;

    /* renamed from: f  reason: collision with root package name */
    private final int f22851f;

    /* renamed from: g  reason: collision with root package name */
    private final b f22852g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f22853h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f22854i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f22855j;

    /* renamed from: k  reason: collision with root package name */
    private final Rect f22856k;

    /* renamed from: l  reason: collision with root package name */
    private List f22857l;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean b(Class cls, Set set) {
            while (cls != null) {
                if (set.contains(cls.getName())) {
                    return true;
                }
                cls = cls.getSuperclass();
            }
            return false;
        }

        private final boolean c(View view, s5 s5Var) {
            String f10 = s5Var.getSessionReplay().f();
            if (f10 == null) {
                return false;
            }
            return m.a(view.getClass().getName(), f10);
        }

        private final boolean d(ViewParent viewParent, s5 s5Var) {
            String n10 = s5Var.getSessionReplay().n();
            if (n10 == null) {
                return false;
            }
            return m.a(viewParent.getClass().getName(), n10);
        }

        private final boolean e(View view, s5 s5Var) {
            String str;
            boolean z10;
            String str2;
            boolean z11;
            boolean N;
            boolean N2;
            Object tag = view.getTag();
            if (tag instanceof String) {
                str = (String) tag;
            } else {
                str = null;
            }
            if (str != null) {
                String lowerCase = str.toLowerCase(Locale.ROOT);
                m.d(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                if (lowerCase != null) {
                    N2 = b0.N(lowerCase, "sentry-unmask", false, 2, null);
                    if (N2) {
                        z10 = true;
                        if (!z10 || m.a(view.getTag(e.f22717a), "unmask")) {
                            return false;
                        }
                        Object tag2 = view.getTag();
                        if (tag2 instanceof String) {
                            str2 = (String) tag2;
                        } else {
                            str2 = null;
                        }
                        if (str2 != null) {
                            String lowerCase2 = str2.toLowerCase(Locale.ROOT);
                            m.d(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                            if (lowerCase2 != null) {
                                N = b0.N(lowerCase2, "sentry-mask", false, 2, null);
                                if (N) {
                                    z11 = true;
                                    if (!z11 || m.a(view.getTag(e.f22717a), MimeTypesReaderMetKeys.MATCH_MASK_ATTR)) {
                                        return true;
                                    }
                                    if (!c(view, s5Var) && view.getParent() != null) {
                                        ViewParent parent = view.getParent();
                                        m.d(parent, "this.parent");
                                        if (d(parent, s5Var)) {
                                            return false;
                                        }
                                    }
                                    Class<?> cls = view.getClass();
                                    Set m10 = s5Var.getSessionReplay().m();
                                    m.d(m10, "options.sessionReplay.unmaskViewClasses");
                                    if (b(cls, m10)) {
                                        return false;
                                    }
                                    Class<?> cls2 = view.getClass();
                                    Set e10 = s5Var.getSessionReplay().e();
                                    m.d(e10, "options.sessionReplay.maskViewClasses");
                                    return b(cls2, e10);
                                }
                            }
                        }
                        z11 = false;
                        if (!z11) {
                        }
                        return true;
                    }
                }
            }
            z10 = false;
            if (!z10) {
            }
            return false;
        }

        public final b a(View view, b bVar, int i10, s5 options) {
            boolean z10;
            boolean z11;
            boolean z12;
            io.sentry.android.replay.util.a aVar;
            m.e(view, "view");
            m.e(options, "options");
            k e10 = n.e(view);
            boolean booleanValue = ((Boolean) e10.a()).booleanValue();
            Rect rect = (Rect) e10.b();
            if (booleanValue && e(view, options)) {
                z10 = true;
            } else {
                z10 = false;
            }
            float f10 = 0.0f;
            if (view instanceof TextView) {
                if (bVar != null) {
                    bVar.g(true);
                }
                TextView textView = (TextView) view;
                Layout layout = textView.getLayout();
                if (layout != null) {
                    aVar = new io.sentry.android.replay.util.a(layout);
                } else {
                    aVar = null;
                }
                int g10 = n.g(textView.getCurrentTextColor());
                int totalPaddingLeft = textView.getTotalPaddingLeft();
                int b10 = n.b(textView);
                float x10 = textView.getX();
                float y10 = textView.getY();
                int width = textView.getWidth();
                int height = textView.getHeight();
                if (bVar != null) {
                    f10 = bVar.a();
                }
                return new d(aVar, Integer.valueOf(g10), totalPaddingLeft, b10, x10, y10, width, height, f10 + textView.getElevation(), i10, bVar, z10, true, booleanValue, rect);
            } else if (view instanceof ImageView) {
                if (bVar != null) {
                    bVar.g(true);
                }
                ImageView imageView = (ImageView) view;
                float x11 = imageView.getX();
                float y11 = imageView.getY();
                int width2 = imageView.getWidth();
                int height2 = imageView.getHeight();
                if (bVar != null) {
                    f10 = bVar.a();
                }
                float elevation = imageView.getElevation() + f10;
                if (z10) {
                    Drawable drawable = imageView.getDrawable();
                    if (drawable != null && n.d(drawable)) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (z12) {
                        z11 = true;
                        return new c(x11, y11, width2, height2, elevation, i10, bVar, z11, true, booleanValue, rect);
                    }
                }
                z11 = false;
                return new c(x11, y11, width2, height2, elevation, i10, bVar, z11, true, booleanValue, rect);
            } else {
                float x12 = view.getX();
                float y12 = view.getY();
                int width3 = view.getWidth();
                int height3 = view.getHeight();
                if (bVar != null) {
                    f10 = bVar.a();
                }
                return new C0205b(x12, y12, width3, height3, f10 + view.getElevation(), i10, bVar, z10, false, booleanValue, rect);
            }
        }
    }

    /* renamed from: io.sentry.android.replay.viewhierarchy.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0205b extends b {
        public C0205b(float f10, float f11, int i10, int i11, float f12, int i12, b bVar, boolean z10, boolean z11, boolean z12, Rect rect) {
            super(f10, f11, i10, i11, f12, i12, bVar, z10, z11, z12, rect, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends b {
        public c(float f10, float f11, int i10, int i11, float f12, int i12, b bVar, boolean z10, boolean z11, boolean z12, Rect rect) {
            super(f10, f11, i10, i11, f12, i12, bVar, z10, z11, z12, rect, null);
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends b {

        /* renamed from: o  reason: collision with root package name */
        private final io.sentry.android.replay.util.m f22858o;

        /* renamed from: p  reason: collision with root package name */
        private final Integer f22859p;

        /* renamed from: q  reason: collision with root package name */
        private final int f22860q;

        /* renamed from: r  reason: collision with root package name */
        private final int f22861r;

        public /* synthetic */ d(io.sentry.android.replay.util.m mVar, Integer num, int i10, int i11, float f10, float f11, int i12, int i13, float f12, int i14, b bVar, boolean z10, boolean z11, boolean z12, Rect rect, int i15, DefaultConstructorMarker defaultConstructorMarker) {
            this((i15 & 1) != 0 ? null : mVar, (i15 & 2) != 0 ? null : num, (i15 & 4) != 0 ? 0 : i10, (i15 & 8) != 0 ? 0 : i11, f10, f11, i12, i13, f12, i14, (i15 & 1024) != 0 ? null : bVar, (i15 & 2048) != 0 ? false : z10, (i15 & Base64Utils.IO_BUFFER_SIZE) != 0 ? false : z11, (i15 & 8192) != 0 ? false : z12, (i15 & 16384) != 0 ? null : rect);
        }

        public final Integer i() {
            return this.f22859p;
        }

        public final io.sentry.android.replay.util.m j() {
            return this.f22858o;
        }

        public final int k() {
            return this.f22860q;
        }

        public final int l() {
            return this.f22861r;
        }

        public d(io.sentry.android.replay.util.m mVar, Integer num, int i10, int i11, float f10, float f11, int i12, int i13, float f12, int i14, b bVar, boolean z10, boolean z11, boolean z12, Rect rect) {
            super(f10, f11, i12, i13, f12, i14, bVar, z10, z11, z12, rect, null);
            this.f22858o = mVar;
            this.f22859p = num;
            this.f22860q = i10;
            this.f22861r = i11;
        }
    }

    public /* synthetic */ b(float f10, float f11, int i10, int i11, float f12, int i12, b bVar, boolean z10, boolean z11, boolean z12, Rect rect, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, i10, i11, f12, i12, bVar, z10, z11, z12, rect);
    }

    public final float a() {
        return this.f22850e;
    }

    public final int b() {
        return this.f22849d;
    }

    public final boolean c() {
        return this.f22853h;
    }

    public final Rect d() {
        return this.f22856k;
    }

    public final int e() {
        return this.f22848c;
    }

    public final void f(List list) {
        this.f22857l = list;
    }

    public final void g(boolean z10) {
        for (b bVar = this.f22852g; bVar != null; bVar = bVar.f22852g) {
            bVar.f22854i = z10;
        }
    }

    public final void h(l callback) {
        List<b> list;
        m.e(callback, "callback");
        if (((Boolean) callback.invoke(this)).booleanValue() && (list = this.f22857l) != null) {
            m.b(list);
            for (b bVar : list) {
                bVar.h(callback);
            }
        }
    }

    private b(float f10, float f11, int i10, int i11, float f12, int i12, b bVar, boolean z10, boolean z11, boolean z12, Rect rect) {
        this.f22846a = f10;
        this.f22847b = f11;
        this.f22848c = i10;
        this.f22849d = i11;
        this.f22850e = f12;
        this.f22851f = i12;
        this.f22852g = bVar;
        this.f22853h = z10;
        this.f22854i = z11;
        this.f22855j = z12;
        this.f22856k = rect;
    }
}
