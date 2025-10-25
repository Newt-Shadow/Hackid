package ae;

import java.util.concurrent.TimeUnit;
import org.apache.tika.pipes.PipesConfigBase;
import yd.g0;
import yd.i0;
/* loaded from: classes2.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final String f337a = g0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* renamed from: b  reason: collision with root package name */
    public static final long f338b;

    /* renamed from: c  reason: collision with root package name */
    public static final int f339c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f340d;

    /* renamed from: e  reason: collision with root package name */
    public static final long f341e;

    /* renamed from: f  reason: collision with root package name */
    public static g f342f;

    static {
        long f10;
        int b10;
        int e10;
        int e11;
        long f11;
        f10 = i0.f("kotlinx.coroutines.scheduler.resolution.ns", PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH, 0L, 0L, 12, null);
        f338b = f10;
        b10 = od.i.b(g0.a(), 2);
        e10 = i0.e("kotlinx.coroutines.scheduler.core.pool.size", b10, 1, 0, 8, null);
        f339c = e10;
        e11 = i0.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);
        f340d = e11;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f11 = i0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null);
        f341e = timeUnit.toNanos(f11);
        f342f = e.f328a;
    }

    public static final h b(Runnable runnable, long j10, boolean z10) {
        return new i(runnable, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String c(boolean z10) {
        return z10 ? "Blocking" : "Non-blocking";
    }
}
