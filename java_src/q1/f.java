package q1;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
final class f extends h {

    /* renamed from: b  reason: collision with root package name */
    private final Object f27957b;

    /* renamed from: c  reason: collision with root package name */
    private final String f27958c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27959d;

    /* renamed from: e  reason: collision with root package name */
    private final g f27960e;

    /* renamed from: f  reason: collision with root package name */
    private final j f27961f;

    /* renamed from: g  reason: collision with root package name */
    private final l f27962g;

    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f27963a;

        static {
            int[] iArr = new int[j.values().length];
            try {
                iArr[j.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[j.LOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[j.QUIET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f27963a = iArr;
        }
    }

    public f(Object value, String tag, String message, g logger, j verificationMode) {
        List s10;
        m.e(value, "value");
        m.e(tag, "tag");
        m.e(message, "message");
        m.e(logger, "logger");
        m.e(verificationMode, "verificationMode");
        this.f27957b = value;
        this.f27958c = tag;
        this.f27959d = message;
        this.f27960e = logger;
        this.f27961f = verificationMode;
        l lVar = new l(b(value, message));
        StackTraceElement[] stackTrace = lVar.getStackTrace();
        m.d(stackTrace, "stackTrace");
        s10 = yc.k.s(stackTrace, 2);
        lVar.setStackTrace((StackTraceElement[]) s10.toArray(new StackTraceElement[0]));
        this.f27962g = lVar;
    }

    @Override // q1.h
    public Object a() {
        int i10 = a.f27963a[this.f27961f.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    throw new xc.i();
                }
                return null;
            }
            this.f27960e.a(this.f27958c, b(this.f27957b, this.f27959d));
            return null;
        }
        throw this.f27962g;
    }

    @Override // q1.h
    public h c(String message, id.l condition) {
        m.e(message, "message");
        m.e(condition, "condition");
        return this;
    }
}
