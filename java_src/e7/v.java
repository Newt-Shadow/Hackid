package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
/* loaded from: classes.dex */
public final class v extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final v DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile w0 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.h keyValue_ = com.google.crypto.tink.shaded.protobuf.h.f8444b;
    private x params_;
    private int version_;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15421a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15421a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15421a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15421a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15421a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15421a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15421a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15421a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends x.a implements p0 {
        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public /* bridge */ /* synthetic */ o0 a() {
            return super.o();
        }

        public /* bridge */ /* synthetic */ Object clone() {
            return super.l();
        }

        @Override // com.google.crypto.tink.shaded.protobuf.o0.a
        public /* bridge */ /* synthetic */ o0 s() {
            return super.k();
        }

        public b t(com.google.crypto.tink.shaded.protobuf.h hVar) {
            m();
            ((v) this.f8653b).e0(hVar);
            return this;
        }

        public b u(x xVar) {
            m();
            ((v) this.f8653b).f0(xVar);
            return this;
        }

        public b v(int i10) {
            m();
            ((v) this.f8653b).g0(i10);
            return this;
        }

        private b() {
            super(v.DEFAULT_INSTANCE);
        }
    }

    static {
        v vVar = new v();
        DEFAULT_INSTANCE = vVar;
        com.google.crypto.tink.shaded.protobuf.x.Q(v.class, vVar);
    }

    private v() {
    }

    public static v Y() {
        return DEFAULT_INSTANCE;
    }

    public static b c0() {
        return (b) DEFAULT_INSTANCE.p();
    }

    public static v d0(com.google.crypto.tink.shaded.protobuf.h hVar, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (v) com.google.crypto.tink.shaded.protobuf.x.K(DEFAULT_INSTANCE, hVar, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(com.google.crypto.tink.shaded.protobuf.h hVar) {
        hVar.getClass();
        this.keyValue_ = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(x xVar) {
        xVar.getClass();
        this.params_ = xVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(int i10) {
        this.version_ = i10;
    }

    public com.google.crypto.tink.shaded.protobuf.h Z() {
        return this.keyValue_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public /* bridge */ /* synthetic */ o0 a() {
        return super.w();
    }

    public x a0() {
        x xVar = this.params_;
        if (xVar == null) {
            return x.X();
        }
        return xVar;
    }

    public int b0() {
        return this.version_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public /* bridge */ /* synthetic */ o0.a c() {
        return super.H();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    protected final Object t(x.d dVar, Object obj, Object obj2) {
        switch (a.f15421a[dVar.ordinal()]) {
            case 1:
                return new v();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"version_", "params_", "keyValue_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (v.class) {
                        w0Var = PARSER;
                        if (w0Var == null) {
                            w0Var = new x.b(DEFAULT_INSTANCE);
                            PARSER = w0Var;
                        }
                    }
                }
                return w0Var;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
