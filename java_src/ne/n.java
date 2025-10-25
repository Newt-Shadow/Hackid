package ne;

import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f26757a = new n();

    private n() {
    }

    public static final String a(String username, String password, Charset charset) {
        kotlin.jvm.internal.m.e(username, "username");
        kotlin.jvm.internal.m.e(password, "password");
        kotlin.jvm.internal.m.e(charset, "charset");
        return kotlin.jvm.internal.m.l("Basic ", af.g.f387d.b(username + ':' + password, charset).a());
    }
}
