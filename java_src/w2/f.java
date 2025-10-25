package w2;

import android.app.job.JobInfo;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import w2.c;
/* loaded from: classes.dex */
public abstract class f {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private z2.a f31666a;

        /* renamed from: b  reason: collision with root package name */
        private Map f31667b = new HashMap();

        public a a(n2.f fVar, b bVar) {
            this.f31667b.put(fVar, bVar);
            return this;
        }

        public f b() {
            if (this.f31666a != null) {
                if (this.f31667b.keySet().size() >= n2.f.values().length) {
                    Map map = this.f31667b;
                    this.f31667b = new HashMap();
                    return f.d(this.f31666a, map);
                }
                throw new IllegalStateException("Not all priorities have been configured");
            }
            throw new NullPointerException("missing required property: clock");
        }

        public a c(z2.a aVar) {
            this.f31666a = aVar;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new c.b().c(Collections.emptySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long d();
    }

    /* loaded from: classes.dex */
    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    private long a(int i10, long j10) {
        long j11;
        int i11 = i10 - 1;
        if (j10 > 1) {
            j11 = j10;
        } else {
            j11 = 2;
        }
        return (long) (Math.pow(3.0d, i11) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log(j11 * i11)));
    }

    public static a b() {
        return new a();
    }

    static f d(z2.a aVar, Map map) {
        return new w2.b(aVar, map);
    }

    public static f f(z2.a aVar) {
        return b().a(n2.f.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(n2.f.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(n2.f.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static Set i(Object... objArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(objArr)));
    }

    private void j(JobInfo.Builder builder, Set set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public JobInfo.Builder c(JobInfo.Builder builder, n2.f fVar, long j10, int i10) {
        builder.setMinimumLatency(g(fVar, j10, i10));
        j(builder, ((b) h().get(fVar)).c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract z2.a e();

    public long g(n2.f fVar, long j10, int i10) {
        long a10 = j10 - e().a();
        b bVar = (b) h().get(fVar);
        return Math.min(Math.max(a(i10, bVar.b()), a10), bVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map h();
}
