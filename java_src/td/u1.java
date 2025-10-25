package td;

import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
public final class u1 extends CancellationException {

    /* renamed from: a  reason: collision with root package name */
    public final transient t1 f30698a;

    public u1(String str, Throwable th, t1 t1Var) {
        super(str);
        this.f30698a = t1Var;
        if (th != null) {
            initCause(th);
        }
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof u1) {
                u1 u1Var = (u1) obj;
                if (!kotlin.jvm.internal.m.a(u1Var.getMessage(), getMessage()) || !kotlin.jvm.internal.m.a(u1Var.f30698a, this.f30698a) || !kotlin.jvm.internal.m.a(u1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        int i10;
        String message = getMessage();
        kotlin.jvm.internal.m.b(message);
        int hashCode = ((message.hashCode() * 31) + this.f30698a.hashCode()) * 31;
        Throwable cause = getCause();
        if (cause != null) {
            i10 = cause.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.f30698a;
    }
}
