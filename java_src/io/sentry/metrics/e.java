package io.sentry.metrics;

import io.sentry.util.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f23269a = Pattern.compile("\\W+");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f23270b = Pattern.compile("[^\\w\\-.]+");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f23271c = Pattern.compile("[^\\w\\-./]+");

    /* renamed from: d  reason: collision with root package name */
    private static long f23272d = new t().d() * 10000.0f;

    public static void a(long j10, Collection collection, StringBuilder sb2) {
        Iterator it = collection.iterator();
        if (!it.hasNext()) {
            return;
        }
        android.support.v4.media.session.b.a(it.next());
        throw null;
    }

    public static long b(long j10) {
        return (j10 - 10000) - f23272d;
    }

    public static long c(long j10) {
        long j11 = ((j10 / 1000) / 10) * 10;
        if (j10 >= 0) {
            return j11;
        }
        return j11 - 1;
    }
}
