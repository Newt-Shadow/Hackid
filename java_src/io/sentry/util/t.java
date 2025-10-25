package io.sentry.util;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class t implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicLong f23800b = new AtomicLong(8682522807148012L);

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f23801a;

    public t() {
        this(e() ^ System.nanoTime());
    }

    private static long a(long j10) {
        return (j10 ^ 25214903917L) & 281474976710655L;
    }

    private int b(int i10) {
        long j10;
        long j11;
        AtomicLong atomicLong = this.f23801a;
        do {
            j10 = atomicLong.get();
            j11 = ((25214903917L * j10) + 11) & 281474976710655L;
        } while (!atomicLong.compareAndSet(j10, j11));
        return (int) (j11 >>> (48 - i10));
    }

    private static long e() {
        AtomicLong atomicLong;
        long j10;
        long j11;
        do {
            atomicLong = f23800b;
            j10 = atomicLong.get();
            j11 = 1181783497276652981L * j10;
        } while (!atomicLong.compareAndSet(j10, j11));
        return j11;
    }

    public double c() {
        return ((b(26) << 27) + b(27)) * 1.1102230246251565E-16d;
    }

    public float d() {
        return b(24) / 1.6777216E7f;
    }

    public t(long j10) {
        this.f23801a = new AtomicLong(a(j10));
    }
}
