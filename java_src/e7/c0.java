package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.z;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class c0 extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final c0 DEFAULT_INSTANCE;
    public static final int KEY_FIELD_NUMBER = 2;
    private static volatile w0 PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.d key_ = com.google.crypto.tink.shaded.protobuf.x.u();
    private int primaryKeyId_;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15376a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15376a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15376a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15376a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15376a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15376a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15376a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15376a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
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

        public b t(c cVar) {
            m();
            ((c0) this.f8653b).X(cVar);
            return this;
        }

        public c u(int i10) {
            return ((c0) this.f8653b).Z(i10);
        }

        public int v() {
            return ((c0) this.f8653b).a0();
        }

        public List w() {
            return Collections.unmodifiableList(((c0) this.f8653b).b0());
        }

        public b x(int i10) {
            m();
            ((c0) this.f8653b).g0(i10);
            return this;
        }

        private b() {
            super(c0.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
        private static final c DEFAULT_INSTANCE;
        public static final int KEY_DATA_FIELD_NUMBER = 1;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile w0 PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        private y keyData_;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;

        /* loaded from: classes.dex */
        public static final class a extends x.a implements p0 {
            /* synthetic */ a(a aVar) {
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

            public a t(y yVar) {
                m();
                ((c) this.f8653b).f0(yVar);
                return this;
            }

            public a u(int i10) {
                m();
                ((c) this.f8653b).g0(i10);
                return this;
            }

            public a v(i0 i0Var) {
                m();
                ((c) this.f8653b).h0(i0Var);
                return this;
            }

            public a w(z zVar) {
                m();
                ((c) this.f8653b).i0(zVar);
                return this;
            }

            private a() {
                super(c.DEFAULT_INSTANCE);
            }
        }

        static {
            c cVar = new c();
            DEFAULT_INSTANCE = cVar;
            com.google.crypto.tink.shaded.protobuf.x.Q(c.class, cVar);
        }

        private c() {
        }

        public static a e0() {
            return (a) DEFAULT_INSTANCE.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f0(y yVar) {
            yVar.getClass();
            this.keyData_ = yVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g0(int i10) {
            this.keyId_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h0(i0 i0Var) {
            this.outputPrefixType_ = i0Var.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void i0(z zVar) {
            this.status_ = zVar.c();
        }

        public y Z() {
            y yVar = this.keyData_;
            if (yVar == null) {
                return y.Y();
            }
            return yVar;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.p0
        public /* bridge */ /* synthetic */ o0 a() {
            return super.w();
        }

        public int a0() {
            return this.keyId_;
        }

        public i0 b0() {
            i0 a10 = i0.a(this.outputPrefixType_);
            if (a10 == null) {
                return i0.UNRECOGNIZED;
            }
            return a10;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.o0
        public /* bridge */ /* synthetic */ o0.a c() {
            return super.H();
        }

        public z c0() {
            z a10 = z.a(this.status_);
            if (a10 == null) {
                return z.UNRECOGNIZED;
            }
            return a10;
        }

        public boolean d0() {
            if (this.keyData_ != null) {
                return true;
            }
            return false;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.x
        protected final Object t(x.d dVar, Object obj, Object obj2) {
            switch (a.f15376a[dVar.ordinal()]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"keyData_", "status_", "keyId_", "outputPrefixType_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    w0 w0Var = PARSER;
                    if (w0Var == null) {
                        synchronized (c.class) {
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

    static {
        c0 c0Var = new c0();
        DEFAULT_INSTANCE = c0Var;
        com.google.crypto.tink.shaded.protobuf.x.Q(c0.class, c0Var);
    }

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(c cVar) {
        cVar.getClass();
        Y();
        this.key_.add(cVar);
    }

    private void Y() {
        z.d dVar = this.key_;
        if (!dVar.w()) {
            this.key_ = com.google.crypto.tink.shaded.protobuf.x.G(dVar);
        }
    }

    public static b d0() {
        return (b) DEFAULT_INSTANCE.p();
    }

    public static c0 e0(InputStream inputStream, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (c0) com.google.crypto.tink.shaded.protobuf.x.L(DEFAULT_INSTANCE, inputStream, pVar);
    }

    public static c0 f0(byte[] bArr, com.google.crypto.tink.shaded.protobuf.p pVar) {
        return (c0) com.google.crypto.tink.shaded.protobuf.x.M(DEFAULT_INSTANCE, bArr, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(int i10) {
        this.primaryKeyId_ = i10;
    }

    public c Z(int i10) {
        return (c) this.key_.get(i10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.p0
    public /* bridge */ /* synthetic */ o0 a() {
        return super.w();
    }

    public int a0() {
        return this.key_.size();
    }

    public List b0() {
        return this.key_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.o0
    public /* bridge */ /* synthetic */ o0.a c() {
        return super.H();
    }

    public int c0() {
        return this.primaryKeyId_;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.x
    protected final Object t(x.d dVar, Object obj, Object obj2) {
        switch (a.f15376a[dVar.ordinal()]) {
            case 1:
                return new c0();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "key_", c.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (c0.class) {
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
