package t0;

import androidx.fragment.app.p;
/* loaded from: classes.dex */
public abstract class m extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final p f29791a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(p fragment, String str) {
        super(str);
        kotlin.jvm.internal.m.e(fragment, "fragment");
        this.f29791a = fragment;
    }

    public final p a() {
        return this.f29791a;
    }
}
