package o6;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes.dex */
public abstract class b0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f27387a;

        a(Comparator comparator) {
            this.f27387a = comparator;
        }

        @Override // o6.b0.d
        Map c() {
            return new TreeMap(this.f27387a);
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements n6.s, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f27388a;

        b(int i10) {
            this.f27388a = h.b(i10, "expectedValuesPerKey");
        }

        @Override // n6.s
        /* renamed from: a */
        public List get() {
            return new ArrayList(this.f27388a);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c extends b0 {
        c() {
            super(null);
        }

        public abstract v c();
    }

    /* loaded from: classes.dex */
    public static abstract class d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends c {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f27389a;

            a(int i10) {
                this.f27389a = i10;
            }

            @Override // o6.b0.c
            public v c() {
                return c0.b(d.this.c(), new b(this.f27389a));
            }
        }

        d() {
        }

        public c a() {
            return b(2);
        }

        public c b(int i10) {
            h.b(i10, "expectedValuesPerKey");
            return new a(i10);
        }

        abstract Map c();
    }

    private b0() {
    }

    /* synthetic */ b0(a0 a0Var) {
        this();
    }

    public static d a() {
        return b(h0.b());
    }

    public static d b(Comparator comparator) {
        n6.m.i(comparator);
        return new a(comparator);
    }
}
