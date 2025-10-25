package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
/* loaded from: classes.dex */
public final class a extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final a DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 2;
    public static final int PARAMS_FIELD_NUMBER = 3;
    private static volatile w0 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.h keyValue_ = com.google.crypto.tink.shaded.protobuf.h.f8444b;
    private c params_;
    private int version_;

    /* renamed from: e7.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0157a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15371a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15371a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15371a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15371a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15371a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15371a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15371a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15371a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class b extends x.a implements p0 {
        /* synthetic */ b(C0157a c0157a) {
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
            ((a) this.f8653b).d0(hVar);
            return this;
        }

        public b u(c cVar) {
            m();
            ((a) this.f8653b).e0(cVar);
            return this;
        }

        public b v(int i10) {
            m();
            ((a) this.f8653b).f0(i10);
            return this;
        }

        private b() {
            super(a.DEFAULT_INSTANCE);
        }
    }

    static {
        a aVar = new a();
        DEFAULT_INSTANCE = aVar;
        com.google.crypto.tink.shaded.protobuf.x.Q(a.class, aVar);
    }

    private a() {
    }

    public static b b0() {
        return (b) DEFAULT_INSTANCE.p();
    }

    public static a c0(com.google.crypto.tink.shaded.protobuf.h hVar, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (a) com.google.crypto.tink.shaded.protobuf.x.K(DEFAULT_INSTANCE, hVar, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d0(com.google.crypto.tink.shaded.protobuf.h hVar) {
        hVar.getClass();
        this.keyValue_ = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(c cVar) {
        cVar.getClass();
        this.params_ = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0(int i10) {
        this.version_ = i10;
    }

    public com.google.crypto.tink.shaded.protobuf.h Y() {
        return this.keyValue_;
    }

    public c Z() {
        c cVar = this.params_;
        if (cVar == null) {
            return c.W();
        }
        return cVar;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public /* bridge */ /* synthetic */ o0 a() {
        return super.w();
    }

    public int a0() {
        return this.version_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public /* bridge */ /* synthetic */ o0.a c() {
        return super.H();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    protected final Object t(x.d dVar, Object obj, Object obj2) {
        switch (C0157a.f15371a[dVar.ordinal()]) {
            case 1:
                return new a();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"version_", "keyValue_", "params_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (a.class) {
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
