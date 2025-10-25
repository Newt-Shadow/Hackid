package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
/* loaded from: classes.dex */
public final class e0 extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final e0 DEFAULT_INSTANCE;
    public static final int PARAMS_FIELD_NUMBER = 2;
    private static volatile w0 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private f0 params_;
    private int version_;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15380a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15380a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15380a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15380a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15380a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15380a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15380a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15380a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
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

        public b t(f0 f0Var) {
            m();
            ((e0) this.f8653b).b0(f0Var);
            return this;
        }

        public b u(int i10) {
            m();
            ((e0) this.f8653b).c0(i10);
            return this;
        }

        private b() {
            super(e0.DEFAULT_INSTANCE);
        }
    }

    static {
        e0 e0Var = new e0();
        DEFAULT_INSTANCE = e0Var;
        com.google.crypto.tink.shaded.protobuf.x.Q(e0.class, e0Var);
    }

    private e0() {
    }

    public static b Z() {
        return (b) DEFAULT_INSTANCE.p();
    }

    public static e0 a0(com.google.crypto.tink.shaded.protobuf.h hVar, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (e0) com.google.crypto.tink.shaded.protobuf.x.K(DEFAULT_INSTANCE, hVar, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(f0 f0Var) {
        f0Var.getClass();
        this.params_ = f0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(int i10) {
        this.version_ = i10;
    }

    public f0 X() {
        f0 f0Var = this.params_;
        if (f0Var == null) {
            return f0.V();
        }
        return f0Var;
    }

    public int Y() {
        return this.version_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public /* bridge */ /* synthetic */ o0 a() {
        return super.w();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public /* bridge */ /* synthetic */ o0.a c() {
        return super.H();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    protected final Object t(x.d dVar, Object obj, Object obj2) {
        switch (a.f15380a[dVar.ordinal()]) {
            case 1:
                return new e0();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"version_", "params_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (e0.class) {
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
