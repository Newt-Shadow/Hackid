package y4;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f32882a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f32883b;

    public g() {
        this(d.f32861a);
    }

    public synchronized void a() {
        while (!this.f32883b) {
            wait();
        }
    }

    public synchronized void b() {
        boolean z10 = false;
        while (!this.f32883b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean c() {
        boolean z10;
        z10 = this.f32883b;
        this.f32883b = false;
        return z10;
    }

    public synchronized boolean d() {
        return this.f32883b;
    }

    public synchronized boolean e() {
        if (this.f32883b) {
            return false;
        }
        this.f32883b = true;
        notifyAll();
        return true;
    }

    public g(d dVar) {
        this.f32882a = dVar;
    }
}
