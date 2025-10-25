package lb;

import com.posthog.PostHogEvent;
import java.io.File;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class x implements eb.g {

    /* renamed from: e  reason: collision with root package name */
    private static final a f25514e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f25515f;

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25516a;

    /* renamed from: b  reason: collision with root package name */
    private final lb.c f25517b;

    /* renamed from: c  reason: collision with root package name */
    private final Date f25518c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f25519d;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f25520a;

        static {
            int[] iArr = new int[lb.d.values().length];
            try {
                iArr[lb.d.BATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[lb.d.SNAPSHOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f25520a = iArr;
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int a10;
            a10 = zc.b.a(Long.valueOf(((File) obj).lastModified()), Long.valueOf(((File) obj2).lastModified()));
            return a10;
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends com.google.gson.reflect.a<PostHogEvent> {
    }

    /* loaded from: classes.dex */
    public static final class e extends com.google.gson.reflect.a<PostHogEvent> {
    }

    public x(eb.d config, lb.c api, Date startDate, ExecutorService executor) {
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(api, "api");
        kotlin.jvm.internal.m.e(startDate, "startDate");
        kotlin.jvm.internal.m.e(executor, "executor");
        this.f25516a = config;
        this.f25517b = api;
        this.f25518c = startDate;
        this.f25519d = executor;
    }

    private final void e(File file, Iterator it, Throwable th) {
        i o10 = this.f25516a.o();
        o10.a("File: " + file.getName() + " failed to parse: " + th + '.');
        it.remove();
        e0.a(file, this.f25516a);
    }

    static /* synthetic */ void f(x xVar, File file, Iterator it, Throwable th, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            th = null;
        }
        xVar.e(file, it, th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01cd A[Catch: all -> 0x01d5, LOOP:3: B:132:0x018f->B:110:0x01cd, LOOP_END, TryCatch #8 {all -> 0x01d5, blocks: (B:7:0x0020, B:9:0x0032, B:10:0x0034, B:12:0x003f, B:13:0x0047, B:15:0x0051, B:16:0x005c, B:18:0x0062, B:50:0x00f4, B:55:0x0107, B:75:0x0140, B:77:0x0150, B:79:0x0156, B:110:0x01cd, B:104:0x01a0, B:106:0x01b0, B:108:0x01b6, B:111:0x01d0, B:49:0x00ec), top: B:124:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0100 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0170 A[EDGE_INSN: B:147:0x0170->B:82:0x0170 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01d0 A[EDGE_INSN: B:148:0x01d0->B:111:0x01d0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0101 A[LOOP:1: B:16:0x005c->B:53:0x0101, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d A[LOOP:2: B:134:0x012f->B:81:0x016d, LOOP_END] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void g(java.lang.String r20, lb.d r21) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: lb.x.g(java.lang.String, lb.d):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(long j10, File file) {
        if (file.lastModified() <= j10) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0155 A[EDGE_INSN: B:128:0x0155->B:77:0x0155 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0127 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x014d A[Catch: all -> 0x015a, LOOP:3: B:113:0x012b->B:75:0x014d, LOOP_END, TryCatch #14 {all -> 0x015a, blocks: (B:9:0x0045, B:11:0x004b, B:12:0x005b, B:14:0x0061, B:33:0x00c2, B:35:0x00ce, B:45:0x00e4, B:48:0x0104, B:47:0x0101, B:73:0x0130, B:76:0x0150, B:75:0x014d, B:77:0x0155, B:15:0x0067, B:24:0x00b3, B:29:0x00ba, B:30:0x00bd, B:42:0x00df, B:70:0x012b), top: B:109:0x0045, inners: #17, #16 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void i() {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: lb.x.i():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(x this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        k r10 = this$0.f25516a.r();
        boolean z10 = false;
        if (r10 != null && !r10.a()) {
            z10 = true;
        }
        if (z10) {
            this$0.f25516a.o().a("Network isn't connected.");
            return;
        }
        this$0.i();
        this$0.g(this$0.f25516a.H(), lb.d.BATCH);
        this$0.g(this$0.f25516a.z(), lb.d.SNAPSHOT);
    }

    private final void k(Iterator it, Throwable th) {
        i o10 = this.f25516a.o();
        o10.a("Event failed to parse: " + th + '.');
        it.remove();
    }

    static /* synthetic */ void l(x xVar, Iterator it, Throwable th, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th = null;
        }
        xVar.k(it, th);
    }

    @Override // eb.g
    public void b() {
        f25515f = false;
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        kotlin.jvm.internal.m.e(postHog, "postHog");
        if (f25515f) {
            return;
        }
        f25515f = true;
        e0.b(this.f25519d, new Runnable() { // from class: lb.v
            @Override // java.lang.Runnable
            public final void run() {
                x.j(x.this);
            }
        });
        this.f25519d.shutdown();
    }
}
