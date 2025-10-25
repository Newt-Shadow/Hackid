package xd;

import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
public final class a extends CancellationException {

    /* renamed from: a  reason: collision with root package name */
    public final transient Object f32736a;

    public a(Object obj) {
        super("Flow was aborted, no more elements needed");
        this.f32736a = obj;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
