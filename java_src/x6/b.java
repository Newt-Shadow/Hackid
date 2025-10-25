package x6;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f32503a = Logger.getLogger(b.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f32504b = new AtomicBoolean(false);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: x6.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class EnumC0366b {

        /* renamed from: a  reason: collision with root package name */
        public static final EnumC0366b f32505a;

        /* renamed from: b  reason: collision with root package name */
        public static final EnumC0366b f32506b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ EnumC0366b[] f32507c;

        /* renamed from: x6.b$b$a */
        /* loaded from: classes.dex */
        enum a extends EnumC0366b {
            a(String str, int i10) {
                super(str, i10);
            }

            @Override // x6.b.EnumC0366b
            public boolean a() {
                return !b.c();
            }
        }

        /* renamed from: x6.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        enum C0367b extends EnumC0366b {
            C0367b(String str, int i10) {
                super(str, i10);
            }

            @Override // x6.b.EnumC0366b
            public boolean a() {
                if (b.c() && !b.b()) {
                    return false;
                }
                return true;
            }
        }

        static {
            a aVar = new a("ALGORITHM_NOT_FIPS", 0);
            f32505a = aVar;
            C0367b c0367b = new C0367b("ALGORITHM_REQUIRES_BORINGCRYPTO", 1);
            f32506b = c0367b;
            f32507c = new EnumC0366b[]{aVar, c0367b};
        }

        private EnumC0366b(String str, int i10) {
        }

        public static EnumC0366b valueOf(String str) {
            return (EnumC0366b) Enum.valueOf(EnumC0366b.class, str);
        }

        public static EnumC0366b[] values() {
            return (EnumC0366b[]) f32507c.clone();
        }

        public abstract boolean a();
    }

    static Boolean a() {
        try {
            return (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            f32503a.info("Conscrypt is not available or does not support checking for FIPS build.");
            return Boolean.FALSE;
        }
    }

    public static boolean b() {
        return a().booleanValue();
    }

    public static boolean c() {
        if (!x6.a.a() && !f32504b.get()) {
            return false;
        }
        return true;
    }
}
