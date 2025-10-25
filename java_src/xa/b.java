package xa;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    protected d9.n f32614a;

    /* renamed from: b  reason: collision with root package name */
    protected q f32615b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32616c = 2;

    public b(d9.n nVar, q qVar) {
        this.f32614a = nVar;
        this.f32615b = qVar;
    }

    public static List f(List list, q qVar) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(qVar.f((d9.p) it.next()));
        }
        return arrayList;
    }

    public d9.a a() {
        return this.f32614a.b();
    }

    public Bitmap b() {
        return this.f32615b.b(null, 2);
    }

    public byte[] c() {
        return this.f32614a.c();
    }

    public Map d() {
        return this.f32614a.d();
    }

    public String e() {
        return this.f32614a.f();
    }

    public String toString() {
        return this.f32614a.f();
    }
}
