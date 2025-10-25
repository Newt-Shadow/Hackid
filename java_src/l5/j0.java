package l5;

import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class j0 extends l0 {

    /* renamed from: f  reason: collision with root package name */
    private final Callable f25302f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j0(Callable callable, k0 k0Var) {
        super();
        this.f25302f = callable;
    }

    @Override // l5.l0
    final String a() {
        try {
            return (String) this.f25302f.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
