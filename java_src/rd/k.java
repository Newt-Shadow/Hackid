package rd;

import java.util.Iterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import rd.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Matcher f29116a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f29117b;

    /* renamed from: c  reason: collision with root package name */
    private final h f29118c;

    /* loaded from: classes2.dex */
    public static final class a extends yc.b implements h {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final g p(a aVar, int i10) {
            return aVar.o(i10);
        }

        @Override // yc.b, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            boolean z10;
            if (obj == null) {
                z10 = true;
            } else {
                z10 = obj instanceof g;
            }
            if (!z10) {
                return false;
            }
            return n((g) obj);
        }

        @Override // yc.b
        public int i() {
            return k.this.c().groupCount() + 1;
        }

        @Override // yc.b, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            od.c i10;
            qd.e H;
            qd.e k10;
            i10 = yc.o.i(this);
            H = yc.w.H(i10);
            k10 = qd.l.k(H, new id.l() { // from class: rd.j
                @Override // id.l
                public final Object invoke(Object obj) {
                    g p10;
                    p10 = k.a.p(k.a.this, ((Integer) obj).intValue());
                    return p10;
                }
            });
            return k10.iterator();
        }

        public /* bridge */ boolean n(g gVar) {
            return super.contains(gVar);
        }

        public g o(int i10) {
            od.c f10;
            f10 = m.f(k.this.c(), i10);
            if (f10.p().intValue() >= 0) {
                String group = k.this.c().group(i10);
                kotlin.jvm.internal.m.d(group, "group(...)");
                return new g(group, f10);
            }
            return null;
        }
    }

    public k(Matcher matcher, CharSequence input) {
        kotlin.jvm.internal.m.e(matcher, "matcher");
        kotlin.jvm.internal.m.e(input, "input");
        this.f29116a = matcher;
        this.f29117b = input;
        this.f29118c = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MatchResult c() {
        return this.f29116a;
    }

    @Override // rd.i
    public od.c a() {
        od.c e10;
        e10 = m.e(c());
        return e10;
    }

    @Override // rd.i
    public String getValue() {
        String group = c().group();
        kotlin.jvm.internal.m.d(group, "group(...)");
        return group;
    }

    @Override // rd.i
    public i next() {
        int i10;
        i d10;
        int end = c().end();
        if (c().end() == c().start()) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i11 = end + i10;
        if (i11 <= this.f29117b.length()) {
            Matcher matcher = this.f29116a.pattern().matcher(this.f29117b);
            kotlin.jvm.internal.m.d(matcher, "matcher(...)");
            d10 = m.d(matcher, i11, this.f29117b);
            return d10;
        }
        return null;
    }
}
