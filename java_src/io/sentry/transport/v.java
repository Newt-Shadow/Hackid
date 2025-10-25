package io.sentry.transport;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
/* loaded from: classes2.dex */
final class v extends Authenticator {

    /* renamed from: a  reason: collision with root package name */
    private final String f23727a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23728b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(String str, String str2) {
        this.f23727a = (String) io.sentry.util.q.c(str, "user is required");
        this.f23728b = (String) io.sentry.util.q.c(str2, "password is required");
    }

    @Override // java.net.Authenticator
    protected PasswordAuthentication getPasswordAuthentication() {
        if (getRequestorType() == Authenticator.RequestorType.PROXY) {
            return new PasswordAuthentication(this.f23727a, this.f23728b.toCharArray());
        }
        return null;
    }
}
