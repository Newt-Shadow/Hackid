package io.sentry;
/* loaded from: classes2.dex */
public interface l0 {

    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN,
        CONNECTED,
        DISCONNECTED,
        NO_PERMISSION
    }

    /* loaded from: classes2.dex */
    public interface b {
        void c(a aVar);
    }

    String a();

    a b();

    boolean c(b bVar);

    void d(b bVar);
}
