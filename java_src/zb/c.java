package zb;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f33602c = Pattern.compile("P(\\d+)(\\S+)");

    /* renamed from: a  reason: collision with root package name */
    public final int f33603a;

    /* renamed from: b  reason: collision with root package name */
    public final a f33604b;

    /* loaded from: classes.dex */
    public enum a {
        TIME_UNIT_UNKNOWN,
        DAY,
        WEEK,
        MONTH,
        YEAR
    }

    public c(int i10, a aVar) {
        this.f33603a = i10;
        this.f33604b = aVar;
    }

    public static c a(String str) {
        a aVar;
        Matcher matcher = f33602c.matcher(str);
        if (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null && group2 != null) {
                try {
                    int parseInt = Integer.parseInt(group);
                    char charAt = group2.charAt(0);
                    if (charAt != 'D') {
                        if (charAt != 'M') {
                            if (charAt != 'W') {
                                if (charAt != 'Y') {
                                    aVar = a.TIME_UNIT_UNKNOWN;
                                } else {
                                    aVar = a.YEAR;
                                }
                            } else {
                                aVar = a.WEEK;
                            }
                        } else {
                            aVar = a.MONTH;
                        }
                    } else {
                        aVar = a.DAY;
                    }
                    return new c(parseInt, aVar);
                } catch (Throwable unused) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f33603a == cVar.f33603a && this.f33604b == cVar.f33604b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f33603a + 0) * 31) + this.f33604b.hashCode();
    }

    public String toString() {
        return "Period{number=" + this.f33603a + "timeUnit=" + this.f33604b + "}";
    }
}
