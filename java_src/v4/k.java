package v4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
final class k implements m4.h {

    /* renamed from: a  reason: collision with root package name */
    private final List f31258a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f31259b;

    /* renamed from: c  reason: collision with root package name */
    private final long[] f31260c;

    public k(List list) {
        this.f31258a = Collections.unmodifiableList(new ArrayList(list));
        this.f31259b = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f31259b;
            jArr[i11] = eVar.f31229b;
            jArr[i11 + 1] = eVar.f31230c;
        }
        long[] jArr2 = this.f31259b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f31260c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int d(e eVar, e eVar2) {
        return Long.compare(eVar.f31229b, eVar2.f31229b);
    }

    @Override // m4.h
    public int a(long j10) {
        int e10 = q0.e(this.f31260c, j10, false, false);
        if (e10 >= this.f31260c.length) {
            return -1;
        }
        return e10;
    }

    @Override // m4.h
    public long b(int i10) {
        boolean z10;
        boolean z11 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        if (i10 >= this.f31260c.length) {
            z11 = false;
        }
        y4.a.a(z11);
        return this.f31260c[i10];
    }

    @Override // m4.h
    public List f(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f31258a.size(); i10++) {
            long[] jArr = this.f31259b;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                e eVar = (e) this.f31258a.get(i10);
                m4.b bVar = eVar.f31228a;
                if (bVar.f25689e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: v4.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int d10;
                d10 = k.d((e) obj, (e) obj2);
                return d10;
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((e) arrayList2.get(i12)).f31228a.b().h((-1) - i12, 1).a());
        }
        return arrayList;
    }

    @Override // m4.h
    public int i() {
        return this.f31260c.length;
    }
}
