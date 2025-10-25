package t0;

import androidx.fragment.app.p;
/* loaded from: classes.dex */
public final class j extends l {

    /* renamed from: b  reason: collision with root package name */
    private final p f29788b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29789c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(p fragment, p targetFragment, int i10) {
        super(fragment, "Attempting to set target fragment " + targetFragment + " with request code " + i10 + " for fragment " + fragment);
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(targetFragment, "targetFragment");
        this.f29788b = targetFragment;
        this.f29789c = i10;
    }
}
