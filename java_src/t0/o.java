package t0;

import androidx.fragment.app.p;
/* loaded from: classes.dex */
public final class o extends m {

    /* renamed from: b  reason: collision with root package name */
    private final p f29793b;

    /* renamed from: c  reason: collision with root package name */
    private final int f29794c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(p fragment, p expectedParentFragment, int i10) {
        super(fragment, "Attempting to nest fragment " + fragment + " within the view of parent fragment " + expectedParentFragment + " via container with ID " + i10 + " without using parent's childFragmentManager");
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(expectedParentFragment, "expectedParentFragment");
        this.f29793b = expectedParentFragment;
        this.f29794c = i10;
    }
}
