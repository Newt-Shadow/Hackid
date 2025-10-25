package io.sentry.android.replay.capture;

import android.graphics.Bitmap;
import android.view.MotionEvent;
import id.Function2;
import io.sentry.android.replay.capture.h;
import io.sentry.android.replay.u;
import io.sentry.e3;
import io.sentry.o0;
import io.sentry.protocol.r;
import io.sentry.s5;
import io.sentry.t5;
import io.sentry.u0;
import io.sentry.z2;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.c0;
import kotlin.jvm.internal.n;
import xc.t;
import yc.o;
import yc.w;
/* loaded from: classes2.dex */
public interface h {

    /* renamed from: a */
    public static final a f22688a = a.f22689a;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a */
        static final /* synthetic */ a f22689a = new a();

        /* renamed from: io.sentry.android.replay.capture.h$a$a */
        /* loaded from: classes2.dex */
        public static final class C0201a extends n implements id.l {

            /* renamed from: e */
            final /* synthetic */ Date f22690e;

            /* renamed from: f */
            final /* synthetic */ List f22691f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0201a(Date date, List list) {
                super(1);
                this.f22690e = date;
                this.f22691f = list;
            }

            public final void a(io.sentry.rrweb.b event) {
                kotlin.jvm.internal.m.e(event, "event");
                if (event.e() >= this.f22690e.getTime()) {
                    this.f22691f.add(event);
                }
            }

            @Override // id.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a((io.sentry.rrweb.b) obj);
                return t.f32733a;
            }
        }

        /* loaded from: classes2.dex */
        public static final class b implements Comparator {
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = zc.b.a(Long.valueOf(((io.sentry.rrweb.b) obj).e()), Long.valueOf(((io.sentry.rrweb.b) obj2).e()));
                return a10;
            }
        }

        private a() {
        }

        private final c b(s5 s5Var, File file, r rVar, Date date, int i10, int i11, int i12, int i13, int i14, long j10, t5.b bVar, String str, List list, Deque deque) {
            List h02;
            Object Q;
            io.sentry.rrweb.b convert;
            Date d10 = io.sentry.j.d(date.getTime() + j10);
            kotlin.jvm.internal.m.d(d10, "getDateTime(segmentTimestamp.time + videoDuration)");
            t5 t5Var = new t5();
            t5Var.V(rVar);
            t5Var.j0(rVar);
            t5Var.m0(i10);
            t5Var.n0(d10);
            t5Var.k0(date);
            t5Var.l0(bVar);
            t5Var.s0(file);
            ArrayList arrayList = new ArrayList();
            io.sentry.rrweb.g gVar = new io.sentry.rrweb.g();
            gVar.f(date.getTime());
            gVar.l(i11);
            gVar.n(i12);
            arrayList.add(gVar);
            io.sentry.rrweb.j jVar = new io.sentry.rrweb.j();
            jVar.f(date.getTime());
            jVar.C(i10);
            jVar.w(j10);
            jVar.x(i13);
            jVar.D(file.length());
            jVar.y(i14);
            jVar.z(i11);
            jVar.G(i12);
            jVar.A(0);
            jVar.E(0);
            arrayList.add(jVar);
            LinkedList linkedList = new LinkedList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                io.sentry.e eVar = (io.sentry.e) it.next();
                if (eVar.l().getTime() + 100 >= date.getTime() && eVar.l().getTime() < d10.getTime() && (convert = s5Var.getReplayController().h().convert(eVar)) != null) {
                    arrayList.add(convert);
                    Object obj = null;
                    io.sentry.rrweb.a aVar = convert instanceof io.sentry.rrweb.a ? (io.sentry.rrweb.a) convert : null;
                    if (kotlin.jvm.internal.m.a(aVar != null ? aVar.n() : null, "navigation")) {
                        io.sentry.rrweb.a aVar2 = (io.sentry.rrweb.a) convert;
                        Map data = aVar2.o();
                        if (data != null) {
                            kotlin.jvm.internal.m.d(data, "data");
                            Object obj2 = data.get("to");
                            if (obj2 != null) {
                                obj = obj2;
                            }
                        }
                        if (obj instanceof String) {
                            Map o10 = aVar2.o();
                            kotlin.jvm.internal.m.b(o10);
                            Object obj3 = o10.get("to");
                            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.String");
                            linkedList.add((String) obj3);
                        }
                    }
                }
            }
            if (str != null) {
                Q = w.Q(linkedList);
                if (!kotlin.jvm.internal.m.a(Q, str)) {
                    linkedList.addFirst(str);
                }
            }
            e(deque, d10.getTime(), new C0201a(date, arrayList));
            if (i10 == 0) {
                arrayList.add(new io.sentry.rrweb.h(s5Var));
            }
            z2 z2Var = new z2();
            z2Var.c(Integer.valueOf(i10));
            h02 = w.h0(arrayList, new b());
            z2Var.b(h02);
            t5Var.r0(linkedList);
            return new c.a(t5Var, z2Var);
        }

        public static final void d(c0 crumbs, u0 scope) {
            kotlin.jvm.internal.m.e(crumbs, "$crumbs");
            kotlin.jvm.internal.m.e(scope, "scope");
            crumbs.f24971a = new ArrayList(scope.l());
        }

        public static /* synthetic */ void f(a aVar, Deque deque, long j10, id.l lVar, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                lVar = null;
            }
            aVar.e(deque, j10, lVar);
        }

        public final c c(o0 o0Var, s5 options, long j10, Date currentSegmentTimestamp, r replayId, int i10, int i11, int i12, t5.b replayType, io.sentry.android.replay.h hVar, int i13, int i14, String str, List list, Deque events) {
            io.sentry.android.replay.b j11;
            List list2;
            List h10;
            kotlin.jvm.internal.m.e(options, "options");
            kotlin.jvm.internal.m.e(currentSegmentTimestamp, "currentSegmentTimestamp");
            kotlin.jvm.internal.m.e(replayId, "replayId");
            kotlin.jvm.internal.m.e(replayType, "replayType");
            kotlin.jvm.internal.m.e(events, "events");
            if (hVar != null && (j11 = io.sentry.android.replay.h.j(hVar, Math.min(j10, 300000L), currentSegmentTimestamp.getTime(), i10, i11, i12, i13, i14, null, 128, null)) != null) {
                File a10 = j11.a();
                int b10 = j11.b();
                long c10 = j11.c();
                if (list == null) {
                    final c0 c0Var = new c0();
                    h10 = o.h();
                    c0Var.f24971a = h10;
                    if (o0Var != null) {
                        o0Var.y(new e3() { // from class: io.sentry.android.replay.capture.g
                            @Override // io.sentry.e3
                            public final void a(u0 u0Var) {
                                h.a.d(c0.this, u0Var);
                            }
                        });
                    }
                    list2 = (List) c0Var.f24971a;
                } else {
                    list2 = list;
                }
                return b(options, a10, replayId, currentSegmentTimestamp, i10, i11, i12, b10, i13, c10, replayType, str, list2, events);
            }
            return c.b.f22694a;
        }

        public final void e(Deque events, long j10, id.l lVar) {
            kotlin.jvm.internal.m.e(events, "events");
            Iterator it = events.iterator();
            kotlin.jvm.internal.m.d(it, "events.iterator()");
            while (it.hasNext()) {
                io.sentry.rrweb.b event = (io.sentry.rrweb.b) it.next();
                if (event.e() < j10) {
                    if (lVar != null) {
                        kotlin.jvm.internal.m.d(event, "event");
                        lVar.invoke(event);
                    }
                    it.remove();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        public static /* synthetic */ void a(h hVar, Bitmap bitmap, Function2 function2, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    bitmap = null;
                }
                hVar.f(bitmap, function2);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onScreenshotRecorded");
        }

        public static /* synthetic */ void b(h hVar, u uVar, int i10, r rVar, t5.b bVar, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    i10 = 0;
                }
                if ((i11 & 4) != 0) {
                    rVar = new r();
                }
                if ((i11 & 8) != 0) {
                    bVar = null;
                }
                hVar.c(uVar, i10, rVar, bVar);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: start");
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class c {

        /* loaded from: classes2.dex */
        public static final class a extends c {

            /* renamed from: a */
            private final t5 f22692a;

            /* renamed from: b */
            private final z2 f22693b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(t5 replay, z2 recording) {
                super(null);
                kotlin.jvm.internal.m.e(replay, "replay");
                kotlin.jvm.internal.m.e(recording, "recording");
                this.f22692a = replay;
                this.f22693b = recording;
            }

            public static /* synthetic */ void b(a aVar, o0 o0Var, io.sentry.c0 c0Var, int i10, Object obj) {
                if ((i10 & 2) != 0) {
                    c0Var = new io.sentry.c0();
                }
                aVar.a(o0Var, c0Var);
            }

            public final void a(o0 o0Var, io.sentry.c0 hint) {
                kotlin.jvm.internal.m.e(hint, "hint");
                if (o0Var != null) {
                    t5 t5Var = this.f22692a;
                    hint.l(this.f22693b);
                    t tVar = t.f32733a;
                    o0Var.z(t5Var, hint);
                }
            }

            public final t5 c() {
                return this.f22692a;
            }

            public final void d(int i10) {
                this.f22692a.m0(i10);
                List<io.sentry.rrweb.b> a10 = this.f22693b.a();
                if (a10 != null) {
                    for (io.sentry.rrweb.b bVar : a10) {
                        if (bVar instanceof io.sentry.rrweb.j) {
                            ((io.sentry.rrweb.j) bVar).C(i10);
                        }
                    }
                }
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return kotlin.jvm.internal.m.a(this.f22692a, aVar.f22692a) && kotlin.jvm.internal.m.a(this.f22693b, aVar.f22693b);
                }
                return false;
            }

            public int hashCode() {
                return (this.f22692a.hashCode() * 31) + this.f22693b.hashCode();
            }

            public String toString() {
                return "Created(replay=" + this.f22692a + ", recording=" + this.f22693b + ')';
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends c {

            /* renamed from: a */
            public static final b f22694a = new b();

            private b() {
                super(null);
            }
        }

        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    void a(MotionEvent motionEvent);

    void b(u uVar);

    void c(u uVar, int i10, r rVar, t5.b bVar);

    void d(boolean z10, id.l lVar);

    r e();

    void f(Bitmap bitmap, Function2 function2);

    h g();

    void h(Date date);

    void i(int i10);

    File j();

    int k();

    void pause();

    void resume();

    void stop();
}
