package k5;

import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends b6.f {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ c f24743b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(c cVar, Looper looper) {
        super(looper);
        this.f24743b = cVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        c.g(this.f24743b, message);
    }
}
