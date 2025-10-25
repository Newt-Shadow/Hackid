package io.sentry.android.replay.capture;

import android.view.MotionEvent;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.sentry.android.replay.capture.h;
import io.sentry.android.replay.u;
import io.sentry.j5;
import io.sentry.o0;
import io.sentry.protocol.r;
import io.sentry.s5;
import io.sentry.t5;
import io.sentry.transport.p;
import java.io.File;
import java.util.Date;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.d0;
import kotlin.jvm.internal.n;
import xc.t;
/* loaded from: classes2.dex */
public abstract class a implements io.sentry.android.replay.capture.h {

    /* renamed from: b */
    private final s5 f22580b;

    /* renamed from: c */
    private final o0 f22581c;

    /* renamed from: d */
    private final p f22582d;

    /* renamed from: e */
    private final ScheduledExecutorService f22583e;

    /* renamed from: f */
    private final id.l f22584f;

    /* renamed from: g */
    private final xc.d f22585g;

    /* renamed from: h */
    private final io.sentry.android.replay.gestures.b f22586h;

    /* renamed from: i */
    private final AtomicBoolean f22587i;

    /* renamed from: j */
    private io.sentry.android.replay.h f22588j;

    /* renamed from: k */
    private final ld.d f22589k;

    /* renamed from: l */
    private final ld.d f22590l;

    /* renamed from: m */
    private final AtomicLong f22591m;

    /* renamed from: n */
    private final ld.d f22592n;

    /* renamed from: o */
    private final ld.d f22593o;

    /* renamed from: p */
    private final ld.d f22594p;

    /* renamed from: q */
    private final ld.d f22595q;

    /* renamed from: r */
    private final Deque f22596r;

    /* renamed from: t */
    static final /* synthetic */ pd.k[] f22579t = {d0.d(new kotlin.jvm.internal.p(a.class, "recorderConfig", "getRecorderConfig()Lio/sentry/android/replay/ScreenshotRecorderConfig;", 0)), d0.d(new kotlin.jvm.internal.p(a.class, "segmentTimestamp", "getSegmentTimestamp()Ljava/util/Date;", 0)), d0.d(new kotlin.jvm.internal.p(a.class, "screenAtStart", "getScreenAtStart()Ljava/lang/String;", 0)), d0.d(new kotlin.jvm.internal.p(a.class, "currentReplayId", "getCurrentReplayId()Lio/sentry/protocol/SentryId;", 0)), d0.d(new kotlin.jvm.internal.p(a.class, "currentSegment", "getCurrentSegment()I", 0)), d0.d(new kotlin.jvm.internal.p(a.class, "replayType", "getReplayType()Lio/sentry/SentryReplayEvent$ReplayType;", 0))};

    /* renamed from: s */
    public static final C0194a f22578s = new C0194a(null);

    /* renamed from: io.sentry.android.replay.capture.a$a */
    /* loaded from: classes2.dex */
    public static final class C0194a {
        private C0194a() {
        }

        public /* synthetic */ C0194a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a */
        private int f22597a;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r10) {
            kotlin.jvm.internal.m.e(r10, "r");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryReplayPersister-");
            int i10 = this.f22597a;
            this.f22597a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(r10, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends n implements id.a {

        /* renamed from: e */
        public static final c f22598e = new c();

        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final ScheduledExecutorService invoke() {
            return Executors.newSingleThreadScheduledExecutor(new b());
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22599a;

        /* renamed from: b */
        final /* synthetic */ a f22600b;

        /* renamed from: c */
        final /* synthetic */ String f22601c;

        /* renamed from: d */
        final /* synthetic */ a f22602d;

        /* renamed from: io.sentry.android.replay.capture.a$d$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0195a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22603a;

            public RunnableC0195a(id.a aVar) {
                this.f22603a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22603a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22604e;

            /* renamed from: f */
            final /* synthetic */ Object f22605f;

            /* renamed from: g */
            final /* synthetic */ Object f22606g;

            /* renamed from: h */
            final /* synthetic */ a f22607h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar) {
                super(0);
                this.f22604e = str;
                this.f22605f = obj;
                this.f22606g = obj2;
                this.f22607h = aVar;
            }

            public final void b() {
                Object obj = this.f22605f;
                u uVar = (u) this.f22606g;
                u uVar2 = (u) obj;
                if (uVar != null) {
                    io.sentry.android.replay.h p10 = this.f22607h.p();
                    if (p10 != null) {
                        p10.w("config.height", String.valueOf(uVar.c()));
                    }
                    io.sentry.android.replay.h p11 = this.f22607h.p();
                    if (p11 != null) {
                        p11.w("config.width", String.valueOf(uVar.d()));
                    }
                    io.sentry.android.replay.h p12 = this.f22607h.p();
                    if (p12 != null) {
                        p12.w("config.frame-rate", String.valueOf(uVar.b()));
                    }
                    io.sentry.android.replay.h p13 = this.f22607h.p();
                    if (p13 != null) {
                        p13.w("config.bit-rate", String.valueOf(uVar.a()));
                    }
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public d(Object obj, a aVar, String str, a aVar2) {
            this.f22600b = aVar;
            this.f22601c = str;
            this.f22602d = aVar2;
            this.f22599a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22600b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22600b.r(), this.f22600b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0195a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22600b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22599a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22599a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22601c, andSet, obj2, this.f22602d));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class e implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22608a;

        /* renamed from: b */
        final /* synthetic */ a f22609b;

        /* renamed from: c */
        final /* synthetic */ String f22610c;

        /* renamed from: d */
        final /* synthetic */ a f22611d;

        /* renamed from: e */
        final /* synthetic */ String f22612e;

        /* renamed from: io.sentry.android.replay.capture.a$e$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0196a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22613a;

            public RunnableC0196a(id.a aVar) {
                this.f22613a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22613a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22614e;

            /* renamed from: f */
            final /* synthetic */ Object f22615f;

            /* renamed from: g */
            final /* synthetic */ Object f22616g;

            /* renamed from: h */
            final /* synthetic */ a f22617h;

            /* renamed from: i */
            final /* synthetic */ String f22618i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar, String str2) {
                super(0);
                this.f22614e = str;
                this.f22615f = obj;
                this.f22616g = obj2;
                this.f22617h = aVar;
                this.f22618i = str2;
            }

            public final void b() {
                Object obj = this.f22616g;
                io.sentry.android.replay.h p10 = this.f22617h.p();
                if (p10 != null) {
                    p10.w(this.f22618i, String.valueOf(obj));
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public e(Object obj, a aVar, String str, a aVar2, String str2) {
            this.f22609b = aVar;
            this.f22610c = str;
            this.f22611d = aVar2;
            this.f22612e = str2;
            this.f22608a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22609b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22609b.r(), this.f22609b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0196a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22609b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22608a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22608a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22610c, andSet, obj2, this.f22611d, this.f22612e));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class f implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22619a;

        /* renamed from: b */
        final /* synthetic */ a f22620b;

        /* renamed from: c */
        final /* synthetic */ String f22621c;

        /* renamed from: d */
        final /* synthetic */ a f22622d;

        /* renamed from: e */
        final /* synthetic */ String f22623e;

        /* renamed from: io.sentry.android.replay.capture.a$f$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0197a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22624a;

            public RunnableC0197a(id.a aVar) {
                this.f22624a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22624a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22625e;

            /* renamed from: f */
            final /* synthetic */ Object f22626f;

            /* renamed from: g */
            final /* synthetic */ Object f22627g;

            /* renamed from: h */
            final /* synthetic */ a f22628h;

            /* renamed from: i */
            final /* synthetic */ String f22629i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar, String str2) {
                super(0);
                this.f22625e = str;
                this.f22626f = obj;
                this.f22627g = obj2;
                this.f22628h = aVar;
                this.f22629i = str2;
            }

            public final void b() {
                Object obj = this.f22627g;
                io.sentry.android.replay.h p10 = this.f22628h.p();
                if (p10 != null) {
                    p10.w(this.f22629i, String.valueOf(obj));
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public f(Object obj, a aVar, String str, a aVar2, String str2) {
            this.f22620b = aVar;
            this.f22621c = str;
            this.f22622d = aVar2;
            this.f22623e = str2;
            this.f22619a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22620b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22620b.r(), this.f22620b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0197a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22620b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22619a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22619a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22621c, andSet, obj2, this.f22622d, this.f22623e));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class g implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22630a;

        /* renamed from: b */
        final /* synthetic */ a f22631b;

        /* renamed from: c */
        final /* synthetic */ String f22632c;

        /* renamed from: d */
        final /* synthetic */ a f22633d;

        /* renamed from: e */
        final /* synthetic */ String f22634e;

        /* renamed from: io.sentry.android.replay.capture.a$g$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0198a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22635a;

            public RunnableC0198a(id.a aVar) {
                this.f22635a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22635a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22636e;

            /* renamed from: f */
            final /* synthetic */ Object f22637f;

            /* renamed from: g */
            final /* synthetic */ Object f22638g;

            /* renamed from: h */
            final /* synthetic */ a f22639h;

            /* renamed from: i */
            final /* synthetic */ String f22640i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar, String str2) {
                super(0);
                this.f22636e = str;
                this.f22637f = obj;
                this.f22638g = obj2;
                this.f22639h = aVar;
                this.f22640i = str2;
            }

            public final void b() {
                Object obj = this.f22638g;
                io.sentry.android.replay.h p10 = this.f22639h.p();
                if (p10 != null) {
                    p10.w(this.f22640i, String.valueOf(obj));
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public g(Object obj, a aVar, String str, a aVar2, String str2) {
            this.f22631b = aVar;
            this.f22632c = str;
            this.f22633d = aVar2;
            this.f22634e = str2;
            this.f22630a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22631b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22631b.r(), this.f22631b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0198a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22631b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22630a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22630a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22632c, andSet, obj2, this.f22633d, this.f22634e));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class h implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22641a;

        /* renamed from: b */
        final /* synthetic */ a f22642b;

        /* renamed from: c */
        final /* synthetic */ String f22643c;

        /* renamed from: d */
        final /* synthetic */ a f22644d;

        /* renamed from: io.sentry.android.replay.capture.a$h$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0199a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22645a;

            public RunnableC0199a(id.a aVar) {
                this.f22645a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22645a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22646e;

            /* renamed from: f */
            final /* synthetic */ Object f22647f;

            /* renamed from: g */
            final /* synthetic */ Object f22648g;

            /* renamed from: h */
            final /* synthetic */ a f22649h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar) {
                super(0);
                this.f22646e = str;
                this.f22647f = obj;
                this.f22648g = obj2;
                this.f22649h = aVar;
            }

            public final void b() {
                String g10;
                Object obj = this.f22647f;
                Date date = (Date) this.f22648g;
                Date date2 = (Date) obj;
                io.sentry.android.replay.h p10 = this.f22649h.p();
                if (p10 != null) {
                    if (date == null) {
                        g10 = null;
                    } else {
                        g10 = io.sentry.j.g(date);
                    }
                    p10.w("segment.timestamp", g10);
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public h(Object obj, a aVar, String str, a aVar2) {
            this.f22642b = aVar;
            this.f22643c = str;
            this.f22644d = aVar2;
            this.f22641a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22642b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22642b.r(), this.f22642b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0199a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22642b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22641a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22641a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22643c, andSet, obj2, this.f22644d));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class i implements ld.d {

        /* renamed from: a */
        private final AtomicReference f22650a;

        /* renamed from: b */
        final /* synthetic */ a f22651b;

        /* renamed from: c */
        final /* synthetic */ String f22652c;

        /* renamed from: d */
        final /* synthetic */ a f22653d;

        /* renamed from: e */
        final /* synthetic */ String f22654e;

        /* renamed from: io.sentry.android.replay.capture.a$i$a */
        /* loaded from: classes2.dex */
        public static final class RunnableC0200a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ id.a f22655a;

            public RunnableC0200a(id.a aVar) {
                this.f22655a = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f22655a.invoke();
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends n implements id.a {

            /* renamed from: e */
            final /* synthetic */ String f22656e;

            /* renamed from: f */
            final /* synthetic */ Object f22657f;

            /* renamed from: g */
            final /* synthetic */ Object f22658g;

            /* renamed from: h */
            final /* synthetic */ a f22659h;

            /* renamed from: i */
            final /* synthetic */ String f22660i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, Object obj, Object obj2, a aVar, String str2) {
                super(0);
                this.f22656e = str;
                this.f22657f = obj;
                this.f22658g = obj2;
                this.f22659h = aVar;
                this.f22660i = str2;
            }

            public final void b() {
                Object obj = this.f22658g;
                io.sentry.android.replay.h p10 = this.f22659h.p();
                if (p10 != null) {
                    p10.w(this.f22660i, String.valueOf(obj));
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        public i(Object obj, a aVar, String str, a aVar2, String str2) {
            this.f22651b = aVar;
            this.f22652c = str;
            this.f22653d = aVar2;
            this.f22654e = str2;
            this.f22650a = new AtomicReference(obj);
        }

        private final void c(id.a aVar) {
            if (this.f22651b.f22580b.getMainThreadChecker().a()) {
                io.sentry.android.replay.util.g.h(this.f22651b.r(), this.f22651b.f22580b, "CaptureStrategy.runInBackground", new RunnableC0200a(aVar));
                return;
            }
            try {
                aVar.invoke();
            } catch (Throwable th) {
                this.f22651b.f22580b.getLogger().b(j5.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
            }
        }

        @Override // ld.d, ld.c
        public Object a(Object obj, pd.k property) {
            kotlin.jvm.internal.m.e(property, "property");
            return this.f22650a.get();
        }

        @Override // ld.d
        public void b(Object obj, pd.k property, Object obj2) {
            kotlin.jvm.internal.m.e(property, "property");
            Object andSet = this.f22650a.getAndSet(obj2);
            if (!kotlin.jvm.internal.m.a(andSet, obj2)) {
                c(new b(this.f22652c, andSet, obj2, this.f22653d, this.f22654e));
            }
        }
    }

    public a(s5 options, o0 o0Var, p dateProvider, ScheduledExecutorService replayExecutor, id.l lVar) {
        xc.d a10;
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(dateProvider, "dateProvider");
        kotlin.jvm.internal.m.e(replayExecutor, "replayExecutor");
        this.f22580b = options;
        this.f22581c = o0Var;
        this.f22582d = dateProvider;
        this.f22583e = replayExecutor;
        this.f22584f = lVar;
        a10 = xc.f.a(c.f22598e);
        this.f22585g = a10;
        this.f22586h = new io.sentry.android.replay.gestures.b(dateProvider);
        this.f22587i = new AtomicBoolean(false);
        this.f22589k = new d(null, this, "", this);
        this.f22590l = new h(null, this, "segment.timestamp", this);
        this.f22591m = new AtomicLong();
        this.f22592n = new i(null, this, "replay.screen-at-start", this, "replay.screen-at-start");
        this.f22593o = new e(r.f23462b, this, "replay.id", this, "replay.id");
        this.f22594p = new f(-1, this, "segment.id", this, "segment.id");
        this.f22595q = new g(null, this, "replay.type", this, "replay.type");
        this.f22596r = new ConcurrentLinkedDeque();
    }

    public static /* synthetic */ h.c o(a aVar, long j10, Date date, r rVar, int i10, int i11, int i12, t5.b bVar, io.sentry.android.replay.h hVar, int i13, int i14, String str, List list, Deque deque, int i15, Object obj) {
        t5.b bVar2;
        io.sentry.android.replay.h hVar2;
        int i16;
        int i17;
        String str2;
        List list2;
        Deque deque2;
        if (obj == null) {
            if ((i15 & 64) != 0) {
                bVar2 = aVar.v();
            } else {
                bVar2 = bVar;
            }
            if ((i15 & 128) != 0) {
                hVar2 = aVar.f22588j;
            } else {
                hVar2 = hVar;
            }
            if ((i15 & 256) != 0) {
                i16 = aVar.s().b();
            } else {
                i16 = i13;
            }
            if ((i15 & 512) != 0) {
                i17 = aVar.s().a();
            } else {
                i17 = i14;
            }
            if ((i15 & 1024) != 0) {
                str2 = aVar.w();
            } else {
                str2 = str;
            }
            if ((i15 & 2048) != 0) {
                list2 = null;
            } else {
                list2 = list;
            }
            if ((i15 & Base64Utils.IO_BUFFER_SIZE) != 0) {
                deque2 = aVar.f22596r;
            } else {
                deque2 = deque;
            }
            return aVar.n(j10, date, rVar, i10, i11, i12, bVar2, hVar2, i16, i17, str2, list2, deque2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createSegmentInternal");
    }

    public final ScheduledExecutorService r() {
        Object value = this.f22585g.getValue();
        kotlin.jvm.internal.m.d(value, "<get-persistingExecutor>(...)");
        return (ScheduledExecutorService) value;
    }

    protected final void A(u uVar) {
        kotlin.jvm.internal.m.e(uVar, "<set-?>");
        this.f22589k.b(this, f22579t[0], uVar);
    }

    public void B(t5.b bVar) {
        kotlin.jvm.internal.m.e(bVar, "<set-?>");
        this.f22595q.b(this, f22579t[5], bVar);
    }

    public final void C(String str) {
        this.f22592n.b(this, f22579t[2], str);
    }

    @Override // io.sentry.android.replay.capture.h
    public void a(MotionEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        List a10 = this.f22586h.a(event, s());
        if (a10 != null) {
            yc.t.v(this.f22596r, a10);
        }
    }

    @Override // io.sentry.android.replay.capture.h
    public void b(u recorderConfig) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        A(recorderConfig);
    }

    @Override // io.sentry.android.replay.capture.h
    public void c(u recorderConfig, int i10, r replayId, t5.b bVar) {
        io.sentry.android.replay.h hVar;
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        kotlin.jvm.internal.m.e(replayId, "replayId");
        id.l lVar = this.f22584f;
        if (lVar == null || (hVar = (io.sentry.android.replay.h) lVar.invoke(replayId)) == null) {
            hVar = new io.sentry.android.replay.h(this.f22580b, replayId);
        }
        this.f22588j = hVar;
        z(replayId);
        i(i10);
        if (bVar == null) {
            if (this instanceof m) {
                bVar = t5.b.SESSION;
            } else {
                bVar = t5.b.BUFFER;
            }
        }
        B(bVar);
        A(recorderConfig);
        h(io.sentry.j.c());
        this.f22591m.set(this.f22582d.a());
    }

    @Override // io.sentry.android.replay.capture.h
    public r e() {
        return (r) this.f22593o.a(this, f22579t[3]);
    }

    @Override // io.sentry.android.replay.capture.h
    public void h(Date date) {
        this.f22590l.b(this, f22579t[1], date);
    }

    @Override // io.sentry.android.replay.capture.h
    public void i(int i10) {
        this.f22594p.b(this, f22579t[4], Integer.valueOf(i10));
    }

    @Override // io.sentry.android.replay.capture.h
    public File j() {
        io.sentry.android.replay.h hVar = this.f22588j;
        if (hVar != null) {
            return hVar.v();
        }
        return null;
    }

    @Override // io.sentry.android.replay.capture.h
    public int k() {
        return ((Number) this.f22594p.a(this, f22579t[4])).intValue();
    }

    protected final h.c n(long j10, Date currentSegmentTimestamp, r replayId, int i10, int i11, int i12, t5.b replayType, io.sentry.android.replay.h hVar, int i13, int i14, String str, List list, Deque events) {
        kotlin.jvm.internal.m.e(currentSegmentTimestamp, "currentSegmentTimestamp");
        kotlin.jvm.internal.m.e(replayId, "replayId");
        kotlin.jvm.internal.m.e(replayType, "replayType");
        kotlin.jvm.internal.m.e(events, "events");
        return io.sentry.android.replay.capture.h.f22688a.c(this.f22581c, this.f22580b, j10, currentSegmentTimestamp, replayId, i10, i11, i12, replayType, hVar, i13, i14, str, list, events);
    }

    public final io.sentry.android.replay.h p() {
        return this.f22588j;
    }

    @Override // io.sentry.android.replay.capture.h
    public void pause() {
    }

    public final Deque q() {
        return this.f22596r;
    }

    @Override // io.sentry.android.replay.capture.h
    public void resume() {
        h(io.sentry.j.c());
    }

    public final u s() {
        return (u) this.f22589k.a(this, f22579t[0]);
    }

    @Override // io.sentry.android.replay.capture.h
    public void stop() {
        io.sentry.android.replay.h hVar = this.f22588j;
        if (hVar != null) {
            hVar.close();
        }
        i(-1);
        this.f22591m.set(0L);
        h(null);
        r EMPTY_ID = r.f23462b;
        kotlin.jvm.internal.m.d(EMPTY_ID, "EMPTY_ID");
        z(EMPTY_ID);
    }

    public final ScheduledExecutorService t() {
        return this.f22583e;
    }

    public final AtomicLong u() {
        return this.f22591m;
    }

    public t5.b v() {
        return (t5.b) this.f22595q.a(this, f22579t[5]);
    }

    protected final String w() {
        return (String) this.f22592n.a(this, f22579t[2]);
    }

    public Date x() {
        return (Date) this.f22590l.a(this, f22579t[1]);
    }

    public final AtomicBoolean y() {
        return this.f22587i;
    }

    public void z(r rVar) {
        kotlin.jvm.internal.m.e(rVar, "<set-?>");
        this.f22593o.b(this, f22579t[3], rVar);
    }
}
