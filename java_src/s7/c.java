package s7;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.h0;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f29483a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29484b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f29485c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(String sessionId, long j10) {
        this(sessionId, j10, null, 4, null);
        kotlin.jvm.internal.m.e(sessionId, "sessionId");
    }

    public final Map a() {
        return this.f29485c;
    }

    public final String b() {
        return this.f29483a;
    }

    public final long c() {
        return this.f29484b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return kotlin.jvm.internal.m.a(this.f29483a, cVar.f29483a) && this.f29484b == cVar.f29484b && kotlin.jvm.internal.m.a(this.f29485c, cVar.f29485c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f29483a.hashCode() * 31) + Long.hashCode(this.f29484b)) * 31) + this.f29485c.hashCode();
    }

    public String toString() {
        return "EventMetadata(sessionId=" + this.f29483a + ", timestamp=" + this.f29484b + ", additionalCustomKeys=" + this.f29485c + ')';
    }

    public c(String sessionId, long j10, Map additionalCustomKeys) {
        kotlin.jvm.internal.m.e(sessionId, "sessionId");
        kotlin.jvm.internal.m.e(additionalCustomKeys, "additionalCustomKeys");
        this.f29483a = sessionId;
        this.f29484b = j10;
        this.f29485c = additionalCustomKeys;
    }

    public /* synthetic */ c(String str, long j10, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, (i10 & 4) != 0 ? h0.e() : map);
    }
}
