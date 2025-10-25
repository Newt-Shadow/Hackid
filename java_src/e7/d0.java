package e7;

import com.google.crypto.tink.shaded.protobuf.o0;
import com.google.crypto.tink.shaded.protobuf.p0;
import com.google.crypto.tink.shaded.protobuf.w0;
import com.google.crypto.tink.shaded.protobuf.x;
import com.google.crypto.tink.shaded.protobuf.z;
/* loaded from: classes.dex */
public final class d0 extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
    private static final d0 DEFAULT_INSTANCE;
    public static final int KEY_INFO_FIELD_NUMBER = 2;
    private static volatile w0 PARSER = null;
    public static final int PRIMARY_KEY_ID_FIELD_NUMBER = 1;
    private z.d keyInfo_ = com.google.crypto.tink.shaded.protobuf.x.u();
    private int primaryKeyId_;

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15378a;

        static {
            int[] iArr = new int[x.d.values().length];
            f15378a = iArr;
            try {
                iArr[x.d.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15378a[x.d.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15378a[x.d.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15378a[x.d.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15378a[x.d.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15378a[x.d.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15378a[x.d.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
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
            ((d0) this.f8653b).X(cVar);
            return this;
        }

        public b u(int i10) {
            m();
            ((d0) this.f8653b).b0(i10);
            return this;
        }

        private b() {
            super(d0.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends com.google.crypto.tink.shaded.protobuf.x implements p0 {
        private static final c DEFAULT_INSTANCE;
        public static final int KEY_ID_FIELD_NUMBER = 3;
        public static final int OUTPUT_PREFIX_TYPE_FIELD_NUMBER = 4;
        private static volatile w0 PARSER = null;
        public static final int STATUS_FIELD_NUMBER = 2;
        public static final int TYPE_URL_FIELD_NUMBER = 1;
        private int keyId_;
        private int outputPrefixType_;
        private int status_;
        private String typeUrl_ = "";

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

            public a t(int i10) {
                m();
                ((c) this.f8653b).b0(i10);
                return this;
            }

            public a u(i0 i0Var) {
                m();
                ((c) this.f8653b).c0(i0Var);
                return this;
            }

            public a v(z zVar) {
                m();
                ((c) this.f8653b).d0(zVar);
                return this;
            }

            public a w(String str) {
                m();
                ((c) this.f8653b).e0(str);
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

        public static a a0() {
            return (a) DEFAULT_INSTANCE.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b0(int i10) {
            this.keyId_ = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c0(i0 i0Var) {
            this.outputPrefixType_ = i0Var.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d0(z zVar) {
            this.status_ = zVar.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e0(String str) {
            str.getClass();
            this.typeUrl_ = str;
        }

        public int Z() {
            return this.keyId_;
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
            switch (a.f15378a[dVar.ordinal()]) {
                case 1:
                    return new c();
                case 2:
                    return new a(null);
                case 3:
                    return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"typeUrl_", "status_", "keyId_", "outputPrefixType_"});
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
        d0 d0Var = new d0();
        DEFAULT_INSTANCE = d0Var;
        com.google.crypto.tink.shaded.protobuf.x.Q(d0.class, d0Var);
    }

    private d0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(c cVar) {
        cVar.getClass();
        Y();
        this.keyInfo_.add(cVar);
    }

    private void Y() {
        z.d dVar = this.keyInfo_;
        if (!dVar.w()) {
            this.keyInfo_ = com.google.crypto.tink.shaded.protobuf.x.G(dVar);
        }
    }

    public static b a0() {
        return (b) DEFAULT_INSTANCE.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(int i10) {
        this.primaryKeyId_ = i10;
    }

    public c Z(int i10) {
        return (c) this.keyInfo_.get(i10);
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
        switch (a.f15378a[dVar.ordinal()]) {
            case 1:
                return new d0();
            case 2:
                return new b(null);
            case 3:
                return com.google.crypto.tink.shaded.protobuf.x.I(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"primaryKeyId_", "keyInfo_", c.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                w0 w0Var = PARSER;
                if (w0Var == null) {
                    synchronized (d0.class) {
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
