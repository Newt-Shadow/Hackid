package zc;

import java.util.Comparator;
import kotlin.jvm.internal.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    public static final e f33629a = new e();

    private e() {
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(Comparable a10, Comparable b10) {
        m.e(a10, "a");
        m.e(b10, "b");
        return a10.compareTo(b10);
    }

    @Override // java.util.Comparator
    public final Comparator reversed() {
        return f.f33630a;
    }
}
