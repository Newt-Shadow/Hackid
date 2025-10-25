package t0;

import android.view.ViewGroup;
import androidx.fragment.app.p;
/* loaded from: classes.dex */
public final class d extends m {

    /* renamed from: b  reason: collision with root package name */
    private final ViewGroup f29787b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(p fragment, ViewGroup viewGroup) {
        super(fragment, "Attempting to use <fragment> tag to add fragment " + fragment + " to container " + viewGroup);
        kotlin.jvm.internal.m.e(fragment, "fragment");
        this.f29787b = viewGroup;
    }
}
