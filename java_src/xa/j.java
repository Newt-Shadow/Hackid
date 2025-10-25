package xa;

import java.util.Collection;
import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes.dex */
public class j implements g {

    /* renamed from: a  reason: collision with root package name */
    private Collection f32636a;

    /* renamed from: b  reason: collision with root package name */
    private Map f32637b;

    /* renamed from: c  reason: collision with root package name */
    private String f32638c;

    /* renamed from: d  reason: collision with root package name */
    private int f32639d;

    public j() {
    }

    @Override // xa.g
    public f a(Map map) {
        EnumMap enumMap = new EnumMap(d9.e.class);
        enumMap.putAll(map);
        Map map2 = this.f32637b;
        if (map2 != null) {
            enumMap.putAll(map2);
        }
        Collection collection = this.f32636a;
        if (collection != null) {
            enumMap.put((EnumMap) d9.e.POSSIBLE_FORMATS, (d9.e) collection);
        }
        String str = this.f32638c;
        if (str != null) {
            enumMap.put((EnumMap) d9.e.CHARACTER_SET, (d9.e) str);
        }
        d9.i iVar = new d9.i();
        iVar.f(enumMap);
        int i10 = this.f32639d;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return new f(iVar);
                }
                return new l(iVar);
            }
            return new k(iVar);
        }
        return new f(iVar);
    }

    public j(Collection collection, Map map, String str, int i10) {
        this.f32636a = collection;
        this.f32637b = map;
        this.f32638c = str;
        this.f32639d = i10;
    }
}
