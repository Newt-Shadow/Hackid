package w9;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map f31965a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] a() {
        ArrayList arrayList = new ArrayList();
        int i10 = -1;
        for (Map.Entry entry : this.f31965a.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > i10) {
                i10 = ((Integer) entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add((Integer) entry.getKey());
            } else if (((Integer) entry.getValue()).intValue() == i10) {
                arrayList.add((Integer) entry.getKey());
            }
        }
        return v9.a.b(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i10) {
        Integer num = (Integer) this.f31965a.get(Integer.valueOf(i10));
        if (num == null) {
            num = 0;
        }
        this.f31965a.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() + 1));
    }
}
