package zb;
/* loaded from: classes.dex */
public abstract class f implements Runnable {
    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
        } catch (Throwable unused) {
        }
    }
}
