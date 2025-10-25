package h4;

import android.net.Uri;
import b3.x1;
import h4.k;
import java.util.Collections;
import java.util.List;
import o6.q;
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public final long f16809a;

    /* renamed from: b  reason: collision with root package name */
    public final x1 f16810b;

    /* renamed from: c  reason: collision with root package name */
    public final q f16811c;

    /* renamed from: d  reason: collision with root package name */
    public final long f16812d;

    /* renamed from: e  reason: collision with root package name */
    public final List f16813e;

    /* renamed from: f  reason: collision with root package name */
    public final List f16814f;

    /* renamed from: g  reason: collision with root package name */
    public final List f16815g;

    /* renamed from: h  reason: collision with root package name */
    private final i f16816h;

    /* loaded from: classes.dex */
    public static class b extends j implements g4.f {

        /* renamed from: i  reason: collision with root package name */
        final k.a f16817i;

        public b(long j10, x1 x1Var, List list, k.a aVar, List list2, List list3, List list4) {
            super(j10, x1Var, list, aVar, list2, list3, list4);
            this.f16817i = aVar;
        }

        @Override // g4.f
        public long a(long j10) {
            return this.f16817i.j(j10);
        }

        @Override // g4.f
        public long b(long j10, long j11) {
            return this.f16817i.h(j10, j11);
        }

        @Override // g4.f
        public long c(long j10, long j11) {
            return this.f16817i.d(j10, j11);
        }

        @Override // g4.f
        public long d(long j10, long j11) {
            return this.f16817i.f(j10, j11);
        }

        @Override // g4.f
        public i e(long j10) {
            return this.f16817i.k(this, j10);
        }

        @Override // g4.f
        public long f(long j10, long j11) {
            return this.f16817i.i(j10, j11);
        }

        @Override // g4.f
        public boolean g() {
            return this.f16817i.l();
        }

        @Override // g4.f
        public long h() {
            return this.f16817i.e();
        }

        @Override // g4.f
        public long i(long j10) {
            return this.f16817i.g(j10);
        }

        @Override // g4.f
        public long j(long j10, long j11) {
            return this.f16817i.c(j10, j11);
        }

        @Override // h4.j
        public String k() {
            return null;
        }

        @Override // h4.j
        public g4.f l() {
            return this;
        }

        @Override // h4.j
        public i m() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends j {

        /* renamed from: i  reason: collision with root package name */
        public final Uri f16818i;

        /* renamed from: j  reason: collision with root package name */
        public final long f16819j;

        /* renamed from: k  reason: collision with root package name */
        private final String f16820k;

        /* renamed from: l  reason: collision with root package name */
        private final i f16821l;

        /* renamed from: m  reason: collision with root package name */
        private final m f16822m;

        public c(long j10, x1 x1Var, List list, k.e eVar, List list2, List list3, List list4, String str, long j11) {
            super(j10, x1Var, list, eVar, list2, list3, list4);
            m mVar;
            this.f16818i = Uri.parse(((h4.b) list.get(0)).f16756a);
            i c10 = eVar.c();
            this.f16821l = c10;
            this.f16820k = str;
            this.f16819j = j11;
            if (c10 != null) {
                mVar = null;
            } else {
                mVar = new m(new i(null, 0L, j11));
            }
            this.f16822m = mVar;
        }

        @Override // h4.j
        public String k() {
            return this.f16820k;
        }

        @Override // h4.j
        public g4.f l() {
            return this.f16822m;
        }

        @Override // h4.j
        public i m() {
            return this.f16821l;
        }
    }

    public static j o(long j10, x1 x1Var, List list, k kVar, List list2, List list3, List list4, String str) {
        if (kVar instanceof k.e) {
            return new c(j10, x1Var, list, (k.e) kVar, list2, list3, list4, str, -1L);
        }
        if (kVar instanceof k.a) {
            return new b(j10, x1Var, list, (k.a) kVar, list2, list3, list4);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    public abstract String k();

    public abstract g4.f l();

    public abstract i m();

    public i n() {
        return this.f16816h;
    }

    private j(long j10, x1 x1Var, List list, k kVar, List list2, List list3, List list4) {
        List unmodifiableList;
        y4.a.a(!list.isEmpty());
        this.f16809a = j10;
        this.f16810b = x1Var;
        this.f16811c = q.t(list);
        if (list2 == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list2);
        }
        this.f16813e = unmodifiableList;
        this.f16814f = list3;
        this.f16815g = list4;
        this.f16816h = kVar.a(this);
        this.f16812d = kVar.b();
    }
}
