package s7;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    private final Map f29486a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f29487b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29488c;

    public e(int i10, int i11) {
        this.f29487b = i10;
        this.f29488c = i11;
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.f29488c);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i10) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > i10) {
                return trim.substring(0, i10);
            }
            return trim;
        }
        return str;
    }

    public synchronized Map a() {
        return Collections.unmodifiableMap(new HashMap(this.f29486a));
    }

    public synchronized boolean d(String str, String str2) {
        String b10 = b(str);
        if (this.f29486a.size() >= this.f29487b && !this.f29486a.containsKey(b10)) {
            n7.g f10 = n7.g.f();
            f10.k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.f29487b);
            return false;
        }
        String c10 = c(str2, this.f29488c);
        if (q7.j.z((String) this.f29486a.get(b10), c10)) {
            return false;
        }
        Map map = this.f29486a;
        if (str2 == null) {
            c10 = "";
        }
        map.put(b10, c10);
        return true;
    }

    public synchronized void e(Map map) {
        String c10;
        int i10 = 0;
        for (Map.Entry entry : map.entrySet()) {
            String b10 = b((String) entry.getKey());
            if (this.f29486a.size() >= this.f29487b && !this.f29486a.containsKey(b10)) {
                i10++;
            }
            String str = (String) entry.getValue();
            Map map2 = this.f29486a;
            if (str == null) {
                c10 = "";
            } else {
                c10 = c(str, this.f29488c);
            }
            map2.put(b10, c10);
        }
        if (i10 > 0) {
            n7.g f10 = n7.g.f();
            f10.k("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.f29487b);
        }
    }
}
