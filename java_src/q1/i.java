package q1;

import kotlin.jvm.internal.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends h {

    /* renamed from: b  reason: collision with root package name */
    private final Object f27965b;

    /* renamed from: c  reason: collision with root package name */
    private final String f27966c;

    /* renamed from: d  reason: collision with root package name */
    private final j f27967d;

    /* renamed from: e  reason: collision with root package name */
    private final g f27968e;

    public i(Object value, String tag, j verificationMode, g logger) {
        m.e(value, "value");
        m.e(tag, "tag");
        m.e(verificationMode, "verificationMode");
        m.e(logger, "logger");
        this.f27965b = value;
        this.f27966c = tag;
        this.f27967d = verificationMode;
        this.f27968e = logger;
    }

    @Override // q1.h
    public Object a() {
        return this.f27965b;
    }

    @Override // q1.h
    public h c(String message, id.l condition) {
        m.e(message, "message");
        m.e(condition, "condition");
        if (((Boolean) condition.invoke(this.f27965b)).booleanValue()) {
            return this;
        }
        return new f(this.f27965b, this.f27966c, message, this.f27968e, this.f27967d);
    }
}
