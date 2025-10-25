package n0;

import androidx.datastore.preferences.protobuf.i0;
import androidx.datastore.preferences.protobuf.j0;
import androidx.datastore.preferences.protobuf.q0;
import androidx.datastore.preferences.protobuf.q1;
import androidx.datastore.preferences.protobuf.w;
import androidx.datastore.preferences.protobuf.x0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class f extends w implements q0 {
    private static final f DEFAULT_INSTANCE;
    private static volatile x0 PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private j0 preferences_ = j0.e();

    /* loaded from: classes.dex */
    public static final class a extends w.a implements q0 {
        /* synthetic */ a(e eVar) {
            this();
        }

        public a r(String str, h hVar) {
            str.getClass();
            hVar.getClass();
            m();
            ((f) this.f2375b).Q().put(str, hVar);
            return this;
        }

        private a() {
            super(f.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final i0 f26083a = i0.d(q1.b.f2273k, "", q1.b.f2275m, h.Z());
    }

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        w.L(f.class, fVar);
    }

    private f() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map Q() {
        return S();
    }

    private j0 S() {
        if (!this.preferences_.k()) {
            this.preferences_ = this.preferences_.n();
        }
        return this.preferences_;
    }

    private j0 T() {
        return this.preferences_;
    }

    public static a U() {
        return (a) DEFAULT_INSTANCE.o();
    }

    public static f V(InputStream inputStream) {
        return (f) w.J(DEFAULT_INSTANCE, inputStream);
    }

    public Map R() {
        return Collections.unmodifiableMap(T());
    }

    @Override // androidx.datastore.preferences.protobuf.w
    protected final Object r(w.d dVar, Object obj, Object obj2) {
        switch (e.f26082a[dVar.ordinal()]) {
            case 1:
                return new f();
            case 2:
                return new a(null);
            case 3:
                return w.H(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", b.f26083a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x0 x0Var = PARSER;
                if (x0Var == null) {
                    synchronized (f.class) {
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
