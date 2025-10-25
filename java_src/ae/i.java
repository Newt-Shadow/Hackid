package ae;

import td.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i extends h {

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f336c;

    public i(Runnable runnable, long j10, boolean z10) {
        super(j10, z10);
        this.f336c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f336c.run();
    }

    public String toString() {
        String c10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Task[");
        sb2.append(p0.a(this.f336c));
        sb2.append('@');
        sb2.append(p0.b(this.f336c));
        sb2.append(", ");
        sb2.append(this.f334a);
        sb2.append(", ");
        c10 = j.c(this.f335b);
        sb2.append(c10);
        sb2.append(']');
        return sb2.toString();
    }
}
