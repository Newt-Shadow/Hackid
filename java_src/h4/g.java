package h4;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f16795a;

    /* renamed from: b  reason: collision with root package name */
    public final long f16796b;

    /* renamed from: c  reason: collision with root package name */
    public final List f16797c;

    /* renamed from: d  reason: collision with root package name */
    public final List f16798d;

    /* renamed from: e  reason: collision with root package name */
    public final e f16799e;

    public g(String str, long j10, List list, List list2) {
        this(str, j10, list, list2, null);
    }

    public int a(int i10) {
        int size = this.f16797c.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((a) this.f16797c.get(i11)).f16751b == i10) {
                return i11;
            }
        }
        return -1;
    }

    public g(String str, long j10, List list, List list2, e eVar) {
        this.f16795a = str;
        this.f16796b = j10;
        this.f16797c = Collections.unmodifiableList(list);
        this.f16798d = Collections.unmodifiableList(list2);
        this.f16799e = eVar;
    }
}
