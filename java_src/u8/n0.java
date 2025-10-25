package u8;

import java.util.Locale;
/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final w0 f30960a;

    /* renamed from: b  reason: collision with root package name */
    private final y0 f30961b;

    public n0(w0 timeProvider, y0 uuidGenerator) {
        kotlin.jvm.internal.m.e(timeProvider, "timeProvider");
        kotlin.jvm.internal.m.e(uuidGenerator, "uuidGenerator");
        this.f30960a = timeProvider;
        this.f30961b = uuidGenerator;
    }

    private final String b() {
        String D;
        String uuid = this.f30961b.next().toString();
        kotlin.jvm.internal.m.d(uuid, "toString(...)");
        D = rd.y.D(uuid, "-", "", false, 4, null);
        String lowerCase = D.toLowerCase(Locale.ROOT);
        kotlin.jvm.internal.m.d(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public final h0 a(h0 h0Var) {
        String str;
        int i10;
        String a10;
        String b10 = b();
        if (h0Var != null && (a10 = h0Var.a()) != null) {
            str = a10;
        } else {
            str = b10;
        }
        if (h0Var != null) {
            i10 = h0Var.c() + 1;
        } else {
            i10 = 0;
        }
        return new h0(b10, str, i10, this.f30960a.a().b());
    }
}
