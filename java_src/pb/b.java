package pb;

import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class b extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String message) {
        super(message);
        m.e(message, "message");
    }
}
