package ib;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import lb.e0;
import yc.o;
/* loaded from: classes.dex */
public final class g implements eb.g {

    /* renamed from: e  reason: collision with root package name */
    private static final a f17383e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f17384f;

    /* renamed from: a  reason: collision with root package name */
    private final fb.b f17385a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f17386b;

    /* renamed from: c  reason: collision with root package name */
    private Thread f17387c;

    /* renamed from: d  reason: collision with root package name */
    private eb.h f17388d;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g(fb.b config) {
        m.e(config, "config");
        this.f17385a = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00aa, code lost:
        if (r7 == null) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0062 A[Catch: all -> 0x0106, TryCatch #1 {all -> 0x0106, blocks: (B:12:0x0046, B:16:0x0054, B:23:0x0062, B:25:0x006b, B:28:0x0075, B:31:0x0082, B:34:0x009d, B:37:0x00ad, B:39:0x00b1, B:43:0x00c2, B:45:0x00e3, B:47:0x00e9, B:49:0x00f8, B:48:0x00ee), top: B:67:0x0046 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void d(java.util.List r11, ib.g r12, eb.h r13) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ib.g.d(java.util.List, ib.g, eb.h):void");
    }

    private final boolean e() {
        eb.h hVar = this.f17388d;
        if (hVar != null) {
            return hVar.p();
        }
        return false;
    }

    private final boolean f() {
        return true;
    }

    @Override // eb.g
    public void b() {
        f17384f = false;
        this.f17388d = null;
        this.f17386b = false;
        Thread thread = this.f17387c;
        if (thread != null) {
            e0.d(thread);
        }
    }

    @Override // eb.g
    public void c(final eb.h postHog) {
        final List m10;
        m.e(postHog, "postHog");
        if (!f17384f && this.f17385a.j0().a() && f()) {
            f17384f = true;
            this.f17388d = postHog;
            m10 = o.m("logcat", "-v", "threadtime", "*:E");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.mmm", Locale.ROOT);
            m10.add("-T");
            String format = simpleDateFormat.format(Long.valueOf(this.f17385a.f().currentTimeMillis()));
            m.d(format, "sdf.format(config.datePr…ider.currentTimeMillis())");
            m10.add(format);
            this.f17386b = false;
            Thread thread = this.f17387c;
            if (thread != null) {
                e0.d(thread);
            }
            Thread thread2 = new Thread(new Runnable() { // from class: ib.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.d(m10, this, postHog);
                }
            });
            this.f17387c = thread2;
            thread2.start();
        }
    }
}
