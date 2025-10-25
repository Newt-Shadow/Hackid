package io.sentry;

import java.net.URI;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final String f23544a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23545b;

    /* renamed from: c  reason: collision with root package name */
    private final String f23546c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23547d;

    /* renamed from: e  reason: collision with root package name */
    private final URI f23548e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(String str) {
        String str2;
        try {
            io.sentry.util.q.c(str, "The DSN is required.");
            URI normalize = new URI(str).normalize();
            String scheme = normalize.getScheme();
            if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                throw new IllegalArgumentException("Invalid DSN scheme: " + scheme);
            }
            String userInfo = normalize.getUserInfo();
            if (userInfo != null && !userInfo.isEmpty()) {
                String[] split = userInfo.split(":", -1);
                String str3 = split[0];
                this.f23547d = str3;
                if (str3 != null && !str3.isEmpty()) {
                    if (split.length > 1) {
                        str2 = split[1];
                    } else {
                        str2 = null;
                    }
                    this.f23546c = str2;
                    String path = normalize.getPath();
                    path = path.endsWith("/") ? path.substring(0, path.length() - 1) : path;
                    int lastIndexOf = path.lastIndexOf("/") + 1;
                    String substring = path.substring(0, lastIndexOf);
                    if (!substring.endsWith("/")) {
                        substring = substring + "/";
                    }
                    this.f23545b = substring;
                    String substring2 = path.substring(lastIndexOf);
                    this.f23544a = substring2;
                    if (!substring2.isEmpty()) {
                        this.f23548e = new URI(scheme, null, normalize.getHost(), normalize.getPort(), substring + "api/" + substring2, null, null);
                        return;
                    }
                    throw new IllegalArgumentException("Invalid DSN: A Project Id is required.");
                }
                throw new IllegalArgumentException("Invalid DSN: No public key provided.");
            }
            throw new IllegalArgumentException("Invalid DSN: No public key provided.");
        } catch (Throwable th) {
            throw new IllegalArgumentException(th);
        }
    }

    public String a() {
        return this.f23547d;
    }

    public String b() {
        return this.f23546c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public URI c() {
        return this.f23548e;
    }
}
