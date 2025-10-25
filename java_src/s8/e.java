package s8;

import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public abstract class e {
    public static String a() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
