package rf;

import android.media.AudioManager;
import android.os.Build;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0302a f29150a = new C0302a(null);

    /* renamed from: rf.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0302a {
        private C0302a() {
        }

        public /* synthetic */ C0302a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(s player, id.a onGranted, id.l onLoss) {
            kotlin.jvm.internal.m.e(player, "player");
            kotlin.jvm.internal.m.e(onGranted, "onGranted");
            kotlin.jvm.internal.m.e(onLoss, "onLoss");
            if (Build.VERSION.SDK_INT >= 26) {
                return new k(player, onGranted, onLoss);
            }
            return new c(player, onGranted, onLoss);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final AudioManager a() {
        return e().i();
    }

    public abstract qf.a b();

    public abstract id.a c();

    public abstract id.l d();

    public abstract s e();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(int i10) {
        if (i10 != -2) {
            if (i10 != -1) {
                if (i10 == 1) {
                    c().invoke();
                    return;
                }
                return;
            }
            d().invoke(Boolean.FALSE);
            return;
        }
        d().invoke(Boolean.TRUE);
    }

    public abstract void g();

    protected abstract boolean h();

    public final void i() {
        if (!kotlin.jvm.internal.m.a(b(), e().j())) {
            k(e().j());
            l();
        }
        if (h()) {
            j();
        } else {
            c().invoke();
        }
    }

    protected abstract void j();

    public abstract void k(qf.a aVar);

    protected abstract void l();
}
