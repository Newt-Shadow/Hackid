package yd;
/* loaded from: classes2.dex */
public final class g extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final transient ad.i f33257a;

    public g(ad.i iVar) {
        this.f33257a = iVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.f33257a.toString();
    }
}
