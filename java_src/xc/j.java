package xc;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class j extends Error {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(String message) {
        super(message);
        kotlin.jvm.internal.m.e(message, "message");
    }

    public /* synthetic */ j(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "An operation is not implemented." : str);
    }
}
