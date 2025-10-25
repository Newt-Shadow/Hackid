package cb;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class c implements PluginRegistry.ActivityResultListener {

    /* renamed from: j  reason: collision with root package name */
    public static final a f5124j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private static final int f5125k = (d.class.hashCode() + 43) & 65535;

    /* renamed from: l  reason: collision with root package name */
    private static final int f5126l = (d.class.hashCode() + 83) & 65535;

    /* renamed from: a  reason: collision with root package name */
    private final Activity f5127a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel.Result f5128b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5129c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5130d;

    /* renamed from: e  reason: collision with root package name */
    private String f5131e;

    /* renamed from: f  reason: collision with root package name */
    private int f5132f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList f5133g;

    /* renamed from: h  reason: collision with root package name */
    private EventChannel.EventSink f5134h;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f5135i;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(MethodChannel.Result result) {
            m.e(result, "result");
            result.error("already_active", "File picker is already active", null);
        }

        public final int b() {
            return c.f5125k;
        }

        public final int c() {
            return c.f5126l;
        }
    }

    public c(Activity activity, MethodChannel.Result result) {
        m.e(activity, "activity");
        this.f5127a = activity;
        this.f5128b = result;
    }

    private final void d() {
        this.f5128b = null;
    }

    private final void e(final boolean z10) {
        if (this.f5134h != null && !m.a(this.f5131e, "dir")) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: cb.b
                @Override // java.lang.Runnable
                public final void run() {
                    c.f(c.this, z10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(c cVar, boolean z10) {
        EventChannel.EventSink eventSink = cVar.f5134h;
        if (eventSink != null) {
            eventSink.success(Boolean.valueOf(z10));
        }
    }

    private final boolean l(int i10, Intent intent) {
        if (i10 != -1) {
            if (i10 != 0) {
                return false;
            }
            h(null);
            return true;
        }
        e(true);
        f fVar = f.f5148a;
        Activity activity = this.f5127a;
        int i11 = this.f5132f;
        boolean z10 = this.f5130d;
        String str = this.f5131e;
        if (str == null) {
            str = "";
        }
        fVar.x(this, activity, intent, i11, z10, str);
        return true;
    }

    private final boolean m(int i10, Intent intent) {
        Uri uri = null;
        if (i10 != -1) {
            if (i10 != 0) {
                return false;
            }
            h(null);
            return false;
        }
        if (intent != null) {
            uri = intent.getData();
        }
        return o(uri);
    }

    private final boolean o(Uri uri) {
        if (uri == null) {
            return false;
        }
        e(true);
        try {
            Uri D = f.f5148a.D(this.f5127a, uri, this.f5135i);
            if (D != null) {
                uri = D;
            }
            h(uri.getPath());
            return true;
        } catch (IOException e10) {
            Log.e("FilePickerDelegate", "Error while saving file", e10);
            g("Error while saving file", e10.getMessage());
            return false;
        }
    }

    public final void g(String errorCode, String str) {
        m.e(errorCode, "errorCode");
        e(false);
        MethodChannel.Result result = this.f5128b;
        if (result != null) {
            result.error(errorCode, str, null);
        }
        d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
        if (r2 == 0) goto L14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 0
            r5.e(r0)
            io.flutter.plugin.common.MethodChannel$Result r0 = r5.f5128b
            if (r0 == 0) goto L58
            r1 = 0
            if (r6 == 0) goto L1f
            boolean r2 = r6 instanceof java.lang.String
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L19
            r2 = r6
            goto L1a
        L19:
            r2 = r1
        L1a:
            if (r2 != 0) goto L1d
            goto L1f
        L1d:
            r1 = r2
            goto L52
        L1f:
            boolean r2 = r6 instanceof java.util.ArrayList
            if (r2 == 0) goto L26
            java.util.ArrayList r6 = (java.util.ArrayList) r6
            goto L27
        L26:
            r6 = r1
        L27:
            if (r6 == 0) goto L52
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r6 = r6.iterator()
        L32:
            boolean r3 = r6.hasNext()
            if (r3 == 0) goto L1d
            java.lang.Object r3 = r6.next()
            boolean r4 = r3 instanceof cb.a
            if (r4 == 0) goto L43
            cb.a r3 = (cb.a) r3
            goto L44
        L43:
            r3 = r1
        L44:
            if (r3 == 0) goto L4b
            java.util.HashMap r3 = r3.a()
            goto L4c
        L4b:
            r3 = r1
        L4c:
            if (r3 == 0) goto L32
            r2.add(r3)
            goto L32
        L52:
            r0.success(r1)
            r5.d()
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cb.c.h(java.lang.Object):void");
    }

    public final Activity i() {
        return this.f5127a;
    }

    public final ArrayList j() {
        return this.f5133g;
    }

    public final String k() {
        return this.f5131e;
    }

    public final boolean n() {
        return this.f5129c;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == f5126l) {
            return m(i11, intent);
        }
        if (i10 == f5125k) {
            return l(i11, intent);
        }
        g("unknown_activity", "Unknown activity error, please file an issue.");
        return false;
    }

    public final void p(ArrayList arrayList) {
        this.f5133g = arrayList;
    }

    public final void q(byte[] bArr) {
        this.f5135i = bArr;
    }

    public final void r(int i10) {
        this.f5132f = i10;
    }

    public final void s(EventChannel.EventSink eventSink) {
        this.f5134h = eventSink;
    }

    public final void t(boolean z10) {
        this.f5130d = z10;
    }

    public final void u(boolean z10) {
        this.f5129c = z10;
    }

    public final boolean v(MethodChannel.Result result) {
        m.e(result, "result");
        if (this.f5128b == null) {
            this.f5128b = result;
            return true;
        }
        return false;
    }

    public final void w(String str) {
        this.f5131e = str;
    }

    public /* synthetic */ c(Activity activity, MethodChannel.Result result, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity, (i10 & 2) != 0 ? null : result);
    }
}
