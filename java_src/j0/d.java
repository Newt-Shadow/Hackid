package j0;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class d extends IOException {
    public /* synthetic */ d(String str, Throwable th, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String message, Throwable th) {
        super(message, th);
        kotlin.jvm.internal.m.e(message, "message");
    }
}
