package x4;

import java.io.IOException;
/* loaded from: classes.dex */
public abstract class m {
    public static void a(j jVar) {
        if (jVar != null) {
            try {
                jVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
