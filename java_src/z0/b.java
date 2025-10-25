package z0;

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private int f33342a;

    /* renamed from: b  reason: collision with root package name */
    private a f33343b;

    /* renamed from: c  reason: collision with root package name */
    private Context f33344c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33345d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f33346e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f33347f = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f33348g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f33349h = false;

    /* loaded from: classes.dex */
    public interface a {
        void a(b bVar, Object obj);
    }

    public b(Context context) {
        this.f33344c = context.getApplicationContext();
    }

    public void a() {
        this.f33346e = true;
        k();
    }

    public boolean b() {
        return l();
    }

    public void c() {
        this.f33349h = false;
    }

    public String d(Object obj) {
        StringBuilder sb2 = new StringBuilder(64);
        if (obj == null) {
            sb2.append("null");
        } else {
            Class<?> cls = obj.getClass();
            sb2.append(cls.getSimpleName());
            sb2.append("{");
            sb2.append(Integer.toHexString(System.identityHashCode(cls)));
            sb2.append("}");
        }
        return sb2.toString();
    }

    public void e() {
    }

    public void f(Object obj) {
        a aVar = this.f33343b;
        if (aVar != null) {
            aVar.a(this, obj);
        }
    }

    public void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f33342a);
        printWriter.print(" mListener=");
        printWriter.println(this.f33343b);
        if (this.f33345d || this.f33348g || this.f33349h) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f33345d);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f33348g);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f33349h);
        }
        if (this.f33346e || this.f33347f) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f33346e);
            printWriter.print(" mReset=");
            printWriter.println(this.f33347f);
        }
    }

    public void h() {
        n();
    }

    public boolean i() {
        return this.f33346e;
    }

    public boolean j() {
        return this.f33345d;
    }

    protected void k() {
    }

    protected abstract boolean l();

    public void m() {
        if (this.f33345d) {
            h();
        } else {
            this.f33348g = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
    }

    protected void o() {
    }

    protected abstract void p();

    protected void q() {
    }

    public void r(int i10, a aVar) {
        if (this.f33343b == null) {
            this.f33343b = aVar;
            this.f33342a = i10;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    public void s() {
        o();
        this.f33347f = true;
        this.f33345d = false;
        this.f33346e = false;
        this.f33348g = false;
        this.f33349h = false;
    }

    public void t() {
        if (this.f33349h) {
            m();
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        Class<?> cls = getClass();
        sb2.append(cls.getSimpleName());
        sb2.append("{");
        sb2.append(Integer.toHexString(System.identityHashCode(cls)));
        sb2.append(" id=");
        sb2.append(this.f33342a);
        sb2.append("}");
        return sb2.toString();
    }

    public final void u() {
        this.f33345d = true;
        this.f33347f = false;
        this.f33346e = false;
        p();
    }

    public void v() {
        this.f33345d = false;
        q();
    }

    public void w(a aVar) {
        a aVar2 = this.f33343b;
        if (aVar2 != null) {
            if (aVar2 == aVar) {
                this.f33343b = null;
                return;
            }
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        throw new IllegalStateException("No listener register");
    }
}
