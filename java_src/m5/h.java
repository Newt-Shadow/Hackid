package m5;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    protected final i f25802a;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(i iVar) {
        this.f25802a = iVar;
    }

    public static i c(Activity activity) {
        return d(new g(activity));
    }

    protected static i d(g gVar) {
        if (gVar.d()) {
            return v1.m(gVar.b());
        }
        if (gVar.c()) {
            return s1.d(gVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity b() {
        Activity b10 = this.f25802a.b();
        n5.q.k(b10);
        return b10;
    }

    public abstract void e(int i10, int i11, Intent intent);

    public void f(Bundle bundle) {
    }

    public void g() {
    }

    public void h() {
    }

    public void i(Bundle bundle) {
    }

    public void j() {
    }

    public void k() {
    }
}
