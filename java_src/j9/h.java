package j9;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f24538a;

    /* renamed from: b  reason: collision with root package name */
    private StringBuilder f24539b;

    /* renamed from: c  reason: collision with root package name */
    private Charset f24540c;

    public h() {
        this.f24540c = StandardCharsets.ISO_8859_1;
        this.f24538a = new StringBuilder();
    }

    private void g() {
        if (this.f24540c.equals(StandardCharsets.ISO_8859_1)) {
            if (this.f24538a.length() > 0) {
                StringBuilder sb2 = this.f24539b;
                if (sb2 == null) {
                    this.f24539b = this.f24538a;
                    this.f24538a = new StringBuilder();
                    return;
                }
                sb2.append((CharSequence) this.f24538a);
                this.f24538a = new StringBuilder();
            }
        } else if (this.f24538a.length() > 0) {
            byte[] bytes = this.f24538a.toString().getBytes(StandardCharsets.ISO_8859_1);
            this.f24538a = new StringBuilder();
            StringBuilder sb3 = this.f24539b;
            if (sb3 == null) {
                this.f24539b = new StringBuilder(new String(bytes, this.f24540c));
            } else {
                sb3.append(new String(bytes, this.f24540c));
            }
        }
    }

    public void a(byte b10) {
        this.f24538a.append((char) (b10 & ForkServer.ERROR));
    }

    public void b(char c10) {
        this.f24538a.append((char) (c10 & 255));
    }

    public void c(int i10) {
        d(String.valueOf(i10));
    }

    public void d(String str) {
        this.f24538a.append(str);
    }

    public void e(StringBuilder sb2) {
        g();
        this.f24539b.append((CharSequence) sb2);
    }

    public void f(int i10) {
        g();
        d b10 = d.b(i10);
        if (b10 != null) {
            this.f24540c = b10.f();
            return;
        }
        throw d9.f.a();
    }

    public boolean h() {
        StringBuilder sb2;
        if (this.f24538a.length() == 0 && ((sb2 = this.f24539b) == null || sb2.length() == 0)) {
            return true;
        }
        return false;
    }

    public int i() {
        return toString().length();
    }

    public String toString() {
        g();
        StringBuilder sb2 = this.f24539b;
        if (sb2 == null) {
            return "";
        }
        return sb2.toString();
    }

    public h(int i10) {
        this.f24540c = StandardCharsets.ISO_8859_1;
        this.f24538a = new StringBuilder(i10);
    }
}
