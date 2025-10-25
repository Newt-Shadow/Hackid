package zc;

import java.util.Comparator;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
final class f implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final f f33630a = new f();

    private f() {
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(Comparable a10, Comparable b10) {
        m.e(a10, "a");
        m.e(b10, "b");
        return b10.compareTo(a10);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return e.f33629a;
    }
}
