package se;

import java.io.IOException;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class i extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final IOException f29682a;

    /* renamed from: b  reason: collision with root package name */
    private IOException f29683b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(IOException firstConnectException) {
        super(firstConnectException);
        m.e(firstConnectException, "firstConnectException");
        this.f29682a = firstConnectException;
        this.f29683b = firstConnectException;
    }

    public final void a(IOException e10) {
        m.e(e10, "e");
        xc.b.a(this.f29682a, e10);
        this.f29683b = e10;
    }

    public final IOException b() {
        return this.f29682a;
    }

    public final IOException c() {
        return this.f29683b;
    }
}
