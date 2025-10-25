package n0;

import androidx.datastore.preferences.protobuf.q0;
import androidx.datastore.preferences.protobuf.w;
import androidx.datastore.preferences.protobuf.x0;
import androidx.datastore.preferences.protobuf.y;
import java.util.List;
/* loaded from: classes.dex */
public final class g extends w implements q0 {
    private static final g DEFAULT_INSTANCE;
    private static volatile x0 PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private y.b strings_ = w.t();

    /* loaded from: classes.dex */
    public static final class a extends w.a implements q0 {
        /* synthetic */ a(e eVar) {
            this();
        }

        public a r(Iterable iterable) {
            m();
            ((g) this.f2375b).Q(iterable);
            return this;
        }

        private a() {
            super(g.DEFAULT_INSTANCE);
        }
    }

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        w.L(g.class, gVar);
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(Iterable iterable) {
        R();
        androidx.datastore.preferences.protobuf.a.e(iterable, this.strings_);
    }

    private void R() {
        y.b bVar = this.strings_;
        if (!bVar.w()) {
            this.strings_ = w.F(bVar);
        }
    }

    public static g S() {
        return DEFAULT_INSTANCE;
    }

    public static a U() {
        return (a) DEFAULT_INSTANCE.o();
    }

    public List T() {
        return this.strings_;
    }

    @Override // androidx.datastore.preferences.protobuf.w
    protected final Object r(w.d dVar, Object obj, Object obj2) {
        switch (e.f26082a[dVar.ordinal()]) {
            case 1:
                return new g();
            case 2:
                return new a(null);
            case 3:
                return w.H(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x0 x0Var = PARSER;
                if (x0Var == null) {
                    synchronized (g.class) {
                        x0Var = PARSER;
                        if (x0Var == null) {
                            x0Var = new w.b(DEFAULT_INSTANCE);
                            PARSER = x0Var;
                        }
                    }
                }
                return x0Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
