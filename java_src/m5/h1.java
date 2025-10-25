package m5;

import com.google.android.gms.common.api.Status;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h1 implements m6.c {
    @Override // m6.c
    public final /* bridge */ /* synthetic */ Object a(Task task) {
        if (((Boolean) task.l()).booleanValue()) {
            return null;
        }
        throw new com.google.android.gms.common.api.b(new Status(13, "listener already unregistered"));
    }
}
