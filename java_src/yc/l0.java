package yc;

import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class l0 {
    public static Set a(Object obj) {
        Set singleton = Collections.singleton(obj);
        kotlin.jvm.internal.m.d(singleton, "singleton(...)");
        return singleton;
    }
}
