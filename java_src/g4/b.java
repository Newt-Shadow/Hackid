package g4;

import android.os.SystemClock;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import o6.t;
import y4.q0;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map f16256a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f16257b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f16258c;

    /* renamed from: d  reason: collision with root package name */
    private final Random f16259d;

    public b() {
        this(new Random());
    }

    private static void b(Object obj, long j10, Map map) {
        if (map.containsKey(obj)) {
            j10 = Math.max(j10, ((Long) q0.j((Long) map.get(obj))).longValue());
        }
        map.put(obj, Long.valueOf(j10));
    }

    private List c(List list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        h(elapsedRealtime, this.f16256a);
        h(elapsedRealtime, this.f16257b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            h4.b bVar = (h4.b) list.get(i10);
            if (!this.f16256a.containsKey(bVar.f16757b) && !this.f16257b.containsKey(Integer.valueOf(bVar.f16758c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(h4.b bVar, h4.b bVar2) {
        int compare = Integer.compare(bVar.f16758c, bVar2.f16758c);
        if (compare == 0) {
            return bVar.f16757b.compareTo(bVar2.f16757b);
        }
        return compare;
    }

    public static int f(List list) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hashSet.add(Integer.valueOf(((h4.b) list.get(i10)).f16758c));
        }
        return hashSet.size();
    }

    private static void h(long j10, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (((Long) entry.getValue()).longValue() <= j10) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            map.remove(arrayList.get(i10));
        }
    }

    private h4.b k(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            i10 += ((h4.b) list.get(i11)).f16759d;
        }
        int nextInt = this.f16259d.nextInt(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            h4.b bVar = (h4.b) list.get(i13);
            i12 += bVar.f16759d;
            if (nextInt < i12) {
                return bVar;
            }
        }
        return (h4.b) t.c(list);
    }

    public void e(h4.b bVar, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j10;
        b(bVar.f16757b, elapsedRealtime, this.f16256a);
        int i10 = bVar.f16758c;
        if (i10 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i10), elapsedRealtime, this.f16257b);
        }
    }

    public int g(List list) {
        HashSet hashSet = new HashSet();
        List c10 = c(list);
        for (int i10 = 0; i10 < c10.size(); i10++) {
            hashSet.add(Integer.valueOf(((h4.b) c10.get(i10)).f16758c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f16256a.clear();
        this.f16257b.clear();
        this.f16258c.clear();
    }

    public h4.b j(List list) {
        List c10 = c(list);
        if (c10.size() < 2) {
            return (h4.b) t.b(c10, null);
        }
        Collections.sort(c10, new Comparator() { // from class: g4.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int d10;
                d10 = b.d((h4.b) obj, (h4.b) obj2);
                return d10;
            }
        });
        ArrayList arrayList = new ArrayList();
        int i10 = ((h4.b) c10.get(0)).f16758c;
        int i11 = 0;
        while (true) {
            if (i11 >= c10.size()) {
                break;
            }
            h4.b bVar = (h4.b) c10.get(i11);
            if (i10 != bVar.f16758c) {
                if (arrayList.size() == 1) {
                    return (h4.b) c10.get(0);
                }
            } else {
                arrayList.add(new Pair(bVar.f16757b, Integer.valueOf(bVar.f16759d)));
                i11++;
            }
        }
        h4.b bVar2 = (h4.b) this.f16258c.get(arrayList);
        if (bVar2 == null) {
            h4.b k10 = k(c10.subList(0, arrayList.size()));
            this.f16258c.put(arrayList, k10);
            return k10;
        }
        return bVar2;
    }

    b(Random random) {
        this.f16258c = new HashMap();
        this.f16259d = random;
        this.f16256a = new HashMap();
        this.f16257b = new HashMap();
    }
}
