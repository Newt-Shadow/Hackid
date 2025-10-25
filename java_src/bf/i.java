package bf;

import af.s0;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final s0 f4762a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4763b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4764c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4765d;

    /* renamed from: e  reason: collision with root package name */
    private final long f4766e;

    /* renamed from: f  reason: collision with root package name */
    private final long f4767f;

    /* renamed from: g  reason: collision with root package name */
    private final int f4768g;

    /* renamed from: h  reason: collision with root package name */
    private final Long f4769h;

    /* renamed from: i  reason: collision with root package name */
    private final long f4770i;

    /* renamed from: j  reason: collision with root package name */
    private final List f4771j;

    public i(s0 canonicalPath, boolean z10, String comment, long j10, long j11, long j12, int i10, Long l10, long j13) {
        m.e(canonicalPath, "canonicalPath");
        m.e(comment, "comment");
        this.f4762a = canonicalPath;
        this.f4763b = z10;
        this.f4764c = comment;
        this.f4765d = j10;
        this.f4766e = j11;
        this.f4767f = j12;
        this.f4768g = i10;
        this.f4769h = l10;
        this.f4770i = j13;
        this.f4771j = new ArrayList();
    }

    public final s0 a() {
        return this.f4762a;
    }

    public final List b() {
        return this.f4771j;
    }

    public final long c() {
        return this.f4766e;
    }

    public final int d() {
        return this.f4768g;
    }

    public final Long e() {
        return this.f4769h;
    }

    public final long f() {
        return this.f4770i;
    }

    public final long g() {
        return this.f4767f;
    }

    public final boolean h() {
        return this.f4763b;
    }

    public /* synthetic */ i(s0 s0Var, boolean z10, String str, long j10, long j11, long j12, int i10, Long l10, long j13, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(s0Var, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? "" : str, (i11 & 8) != 0 ? -1L : j10, (i11 & 16) != 0 ? -1L : j11, (i11 & 32) != 0 ? -1L : j12, (i11 & 64) != 0 ? -1 : i10, (i11 & 128) != 0 ? null : l10, (i11 & 256) == 0 ? j13 : -1L);
    }
}
