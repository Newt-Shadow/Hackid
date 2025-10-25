package te;

import kotlin.jvm.internal.m;
import ne.b0;
import ne.v;
/* loaded from: classes2.dex */
public final class h extends b0 {

    /* renamed from: c  reason: collision with root package name */
    private final String f30739c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30740d;

    /* renamed from: e  reason: collision with root package name */
    private final af.f f30741e;

    public h(String str, long j10, af.f source) {
        m.e(source, "source");
        this.f30739c = str;
        this.f30740d = j10;
        this.f30741e = source;
    }

    @Override // ne.b0
    public long c() {
        return this.f30740d;
    }

    @Override // ne.b0
    public v e() {
        String str = this.f30739c;
        if (str == null) {
            return null;
        }
        return v.f26801e.b(str);
    }

    @Override // ne.b0
    public af.f f() {
        return this.f30741e;
    }
}
