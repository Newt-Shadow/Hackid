package af;

import java.util.ArrayList;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f405a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f406b;

    /* renamed from: c  reason: collision with root package name */
    private final s0 f407c;

    /* renamed from: d  reason: collision with root package name */
    private final Long f408d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f409e;

    /* renamed from: f  reason: collision with root package name */
    private final Long f410f;

    /* renamed from: g  reason: collision with root package name */
    private final Long f411g;

    /* renamed from: h  reason: collision with root package name */
    private final Map f412h;

    public j(boolean z10, boolean z11, s0 s0Var, Long l10, Long l11, Long l12, Long l13, Map extras) {
        Map q10;
        kotlin.jvm.internal.m.e(extras, "extras");
        this.f405a = z10;
        this.f406b = z11;
        this.f407c = s0Var;
        this.f408d = l10;
        this.f409e = l11;
        this.f410f = l12;
        this.f411g = l13;
        q10 = yc.h0.q(extras);
        this.f412h = q10;
    }

    public final Long a() {
        return this.f410f;
    }

    public final Long b() {
        return this.f408d;
    }

    public final boolean c() {
        return this.f406b;
    }

    public final boolean d() {
        return this.f405a;
    }

    public String toString() {
        String X;
        ArrayList arrayList = new ArrayList();
        if (this.f405a) {
            arrayList.add("isRegularFile");
        }
        if (this.f406b) {
            arrayList.add("isDirectory");
        }
        if (this.f408d != null) {
            arrayList.add("byteCount=" + this.f408d);
        }
        if (this.f409e != null) {
            arrayList.add("createdAt=" + this.f409e);
        }
        if (this.f410f != null) {
            arrayList.add("lastModifiedAt=" + this.f410f);
        }
        if (this.f411g != null) {
            arrayList.add("lastAccessedAt=" + this.f411g);
        }
        if (!this.f412h.isEmpty()) {
            arrayList.add("extras=" + this.f412h);
        }
        X = yc.w.X(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
        return X;
    }

    public /* synthetic */ j(boolean z10, boolean z11, s0 s0Var, Long l10, Long l11, Long l12, Long l13, Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) == 0 ? z11 : false, (i10 & 4) != 0 ? null : s0Var, (i10 & 8) != 0 ? null : l10, (i10 & 16) != 0 ? null : l11, (i10 & 32) != 0 ? null : l12, (i10 & 64) == 0 ? l13 : null, (i10 & 128) != 0 ? yc.h0.e() : map);
    }
}
