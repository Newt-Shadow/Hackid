package of;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class b implements pf.a {

    /* renamed from: a  reason: collision with root package name */
    private final p f27591a = new p();

    /* renamed from: b  reason: collision with root package name */
    private final InheritableThreadLocal f27592b = new a();

    /* loaded from: classes2.dex */
    class a extends InheritableThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.InheritableThreadLocal
        /* renamed from: a */
        public Map childValue(Map map) {
            if (map == null) {
                return null;
            }
            return new HashMap(map);
        }
    }
}
