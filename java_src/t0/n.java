package t0;

import android.view.ViewGroup;
import androidx.fragment.app.p;
/* loaded from: classes.dex */
public final class n extends m {

    /* renamed from: b  reason: collision with root package name */
    private final ViewGroup f29792b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(p fragment, ViewGroup container) {
        super(fragment, "Attempting to add fragment " + fragment + " to container " + container + " which is not a FragmentContainerView");
        kotlin.jvm.internal.m.e(fragment, "fragment");
        kotlin.jvm.internal.m.e(container, "container");
        this.f29792b = container;
    }
}
