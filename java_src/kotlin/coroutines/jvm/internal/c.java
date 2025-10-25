package kotlin.coroutines.jvm.internal;
/* loaded from: classes2.dex */
public final class c implements ad.e {

    /* renamed from: a  reason: collision with root package name */
    public static final c f24953a = new c();

    private c() {
    }

    @Override // ad.e
    public ad.i getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // ad.e
    public void resumeWith(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
