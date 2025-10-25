package b3;

import java.util.HashSet;
/* loaded from: classes.dex */
public abstract class u1 {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet f4455a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private static String f4456b = "goog.exo.core";

    public static synchronized void a(String str) {
        synchronized (u1.class) {
            if (f4455a.add(str)) {
                f4456b += ", " + str;
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (u1.class) {
            str = f4456b;
        }
        return str;
    }
}
