package ve;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class n extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final b f31640a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(b errorCode) {
        super(kotlin.jvm.internal.m.l("stream was reset: ", errorCode));
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        this.f31640a = errorCode;
    }
}
