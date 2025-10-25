package io.sentry;

import java.net.URI;
import java.util.HashMap;
/* loaded from: classes2.dex */
final class b3 {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22899a;

    public b3(s5 s5Var) {
        this.f22899a = (s5) io.sentry.util.q.c(s5Var, "options is required");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a3 a() {
        URI c10;
        String str;
        r retrieveParsedDsn = this.f22899a.retrieveParsedDsn();
        String uri = retrieveParsedDsn.c().resolve(c10.getPath() + "/envelope/").toString();
        String a10 = retrieveParsedDsn.a();
        String b10 = retrieveParsedDsn.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Sentry sentry_version=7,sentry_client=");
        sb2.append(this.f22899a.getSentryClientName());
        sb2.append(",sentry_key=");
        sb2.append(a10);
        if (b10 != null && b10.length() > 0) {
            str = ",sentry_secret=" + b10;
        } else {
            str = "";
        }
        sb2.append(str);
        String sb3 = sb2.toString();
        String sentryClientName = this.f22899a.getSentryClientName();
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", sentryClientName);
        hashMap.put("X-Sentry-Auth", sb3);
        return new a3(uri, hashMap);
    }
}
