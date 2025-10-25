package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
/* loaded from: classes.dex */
public final class k0 extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final k0 DEFAULT_INSTANCE;
    public static final int KEY_VALUE_FIELD_NUMBER = 3;
    private static volatile w0 PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 1;
    private com.google.crypto.tink.shaded.protobuf.h keyValue_ = com.google.crypto.tink.shaded.protobuf.h.f8444b;
    private int version_;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15400a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15400a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15400a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15400a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15400a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15400a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15400a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15400a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
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
            ((k0) this.f8653b).b0(hVar);
            return this;
        }

        public b u(int i10) {
            m();
            ((k0) this.f8653b).c0(i10);
            return this;
        }

        private b() {
            super(k0.DEFAULT_INSTANCE);
        }
    }

    static {
        k0 k0Var = new k0();
        DEFAULT_INSTANCE = k0Var;
        com.google.crypto.tink.shaded.protobuf.x.Q(k0.class, k0Var);
    }

    private k0() {
    }

    public static b Z() {
        return (b) DEFAULT_INSTANCE.p();
    }

    public static k0 a0(com.google.crypto.tink.shaded.protobuf.h hVar, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (k0) com.google.crypto.tink.shaded.protobuf.x.K(DEFAULT_INSTANCE, hVar, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(com.google.crypto.tink.shaded.protobuf.h hVar) {
        hVar.getClass();
        this.keyValue_ = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(int i10) {
        this.version_ = i10;
    }

    public com.google.crypto.tink.shaded.protobuf.h X() {
        return this.keyValue_;
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
        switch (a.f15400a[dVar.ordinal()]) {
            case 1:
                return new k0();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"version_", "keyValue_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (k0.class) {
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
