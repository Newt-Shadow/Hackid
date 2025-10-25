package y4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.List;
import y4.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k0 implements n {

    /* renamed from: b  reason: collision with root package name */
    private static final List f32910b = new ArrayList(50);

    /* renamed from: a  reason: collision with root package name */
    private final Handler f32911a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements n.a {

        /* renamed from: a  reason: collision with root package name */
        private Message f32912a;

        /* renamed from: b  reason: collision with root package name */
        private k0 f32913b;

        private b() {
        }

        private void b() {
            this.f32912a = null;
            this.f32913b = null;
            k0.n(this);
        }

        @Override // y4.n.a
        public void a() {
            ((Message) y4.a.e(this.f32912a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) y4.a.e(this.f32912a));
            b();
            return sendMessageAtFrontOfQueue;
        }

        public b d(Message message, k0 k0Var) {
            this.f32912a = message;
            this.f32913b = k0Var;
            return this;
        }
    }

    public k0(Handler handler) {
        this.f32911a = handler;
    }

    private static b m() {
        b bVar;
        List list = f32910b;
        synchronized (list) {
            if (list.isEmpty()) {
                bVar = new b();
            } else {
                bVar = (b) list.remove(list.size() - 1);
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(b bVar) {
        List list = f32910b;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(bVar);
            }
        }
    }

    @Override // y4.n
    public n.a a(int i10, int i11, int i12) {
        return m().d(this.f32911a.obtainMessage(i10, i11, i12), this);
    }

    @Override // y4.n
    public boolean b(Runnable runnable) {
        return this.f32911a.post(runnable);
    }

    @Override // y4.n
    public n.a c(int i10) {
        return m().d(this.f32911a.obtainMessage(i10), this);
    }

    @Override // y4.n
    public boolean d(int i10) {
        return this.f32911a.hasMessages(i10);
    }

    @Override // y4.n
    public boolean e(int i10) {
        return this.f32911a.sendEmptyMessage(i10);
    }

    @Override // y4.n
    public n.a f(int i10, int i11, int i12, Object obj) {
        return m().d(this.f32911a.obtainMessage(i10, i11, i12, obj), this);
    }

    @Override // y4.n
    public boolean g(int i10, long j10) {
        return this.f32911a.sendEmptyMessageAtTime(i10, j10);
    }

    @Override // y4.n
    public Looper getLooper() {
        return this.f32911a.getLooper();
    }

    @Override // y4.n
    public boolean h(n.a aVar) {
        return ((b) aVar).c(this.f32911a);
    }

    @Override // y4.n
    public void i(int i10) {
        this.f32911a.removeMessages(i10);
    }

    @Override // y4.n
    public n.a j(int i10, Object obj) {
        return m().d(this.f32911a.obtainMessage(i10, obj), this);
    }

    @Override // y4.n
    public void k(Object obj) {
        this.f32911a.removeCallbacksAndMessages(obj);
    }
}
