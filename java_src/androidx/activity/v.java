package androidx.activity;

import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public abstract class v {
    private final CopyOnWriteArrayList<c> cancellables = new CopyOnWriteArrayList<>();
    private id.a enabledChangedCallback;
    private boolean isEnabled;

    public v(boolean z10) {
        this.isEnabled = z10;
    }

    public final void addCancellable(c cancellable) {
        kotlin.jvm.internal.m.e(cancellable, "cancellable");
        this.cancellables.add(cancellable);
    }

    public final id.a getEnabledChangedCallback$activity_release() {
        return this.enabledChangedCallback;
    }

    public void handleOnBackCancelled() {
    }

    public abstract void handleOnBackPressed();

    public void handleOnBackProgressed(b backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
    }

    public void handleOnBackStarted(b backEvent) {
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void remove() {
        for (c cVar : this.cancellables) {
            cVar.cancel();
        }
    }

    public final void removeCancellable(c cancellable) {
        kotlin.jvm.internal.m.e(cancellable, "cancellable");
        this.cancellables.remove(cancellable);
    }

    public final void setEnabled(boolean z10) {
        this.isEnabled = z10;
        id.a aVar = this.enabledChangedCallback;
        if (aVar != null) {
            aVar.invoke();
        }
    }

    public final void setEnabledChangedCallback$activity_release(id.a aVar) {
        this.enabledChangedCallback = aVar;
    }
}
