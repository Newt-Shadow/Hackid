package d4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f14887h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f14888a;

    /* renamed from: b  reason: collision with root package name */
    public final x4.n f14889b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f14890c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f14891d;

    /* renamed from: e  reason: collision with root package name */
    public final long f14892e;

    /* renamed from: f  reason: collision with root package name */
    public final long f14893f;

    /* renamed from: g  reason: collision with root package name */
    public final long f14894g;

    public n(long j10, x4.n nVar, long j11) {
        this(j10, nVar, nVar.f32371a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f14887h.getAndIncrement();
    }

    public n(long j10, x4.n nVar, Uri uri, Map map, long j11, long j12, long j13) {
        this.f14888a = j10;
        this.f14889b = nVar;
        this.f14890c = uri;
        this.f14891d = map;
        this.f14892e = j11;
        this.f14893f = j12;
        this.f14894g = j13;
    }
}
