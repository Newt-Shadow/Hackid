package t0;

import androidx.fragment.app.p;
/* loaded from: classes.dex */
public final class a extends m {

    /* renamed from: b  reason: collision with root package name */
    private final String f29768b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(p fragment, String previousFragmentId) {
        super(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + previousFragmentId);
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(previousFragmentId, "previousFragmentId");
        this.f29768b = previousFragmentId;
    }
}
