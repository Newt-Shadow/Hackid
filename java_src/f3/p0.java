package f3;

import android.util.Pair;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class p0 {
    private static long a(Map map, String str) {
        if (map != null) {
            try {
                String str2 = (String) map.get(str);
                if (str2 != null) {
                    return Long.parseLong(str2);
                }
                return -9223372036854775807L;
            } catch (NumberFormatException unused) {
                return -9223372036854775807L;
            }
        }
        return -9223372036854775807L;
    }

    public static Pair b(n nVar) {
        Map e10 = nVar.e();
        if (e10 == null) {
            return null;
        }
        return new Pair(Long.valueOf(a(e10, "LicenseDurationRemaining")), Long.valueOf(a(e10, "PlaybackDurationRemaining")));
    }
}
