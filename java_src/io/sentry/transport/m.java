package io.sentry.transport;

import java.net.Authenticator;
/* loaded from: classes2.dex */
final class m {

    /* renamed from: a  reason: collision with root package name */
    private static final m f23717a = new m();

    private m() {
    }

    public static m a() {
        return f23717a;
    }

    public void b(Authenticator authenticator) {
        Authenticator.setDefault(authenticator);
    }
}
