package q7;

import java.io.File;
/* loaded from: classes.dex */
final class c extends g0 {

    /* renamed from: a  reason: collision with root package name */
    private final t7.f0 f28399a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28400b;

    /* renamed from: c  reason: collision with root package name */
    private final File f28401c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(t7.f0 f0Var, String str, File file) {
        if (f0Var != null) {
            this.f28399a = f0Var;
            if (str != null) {
                this.f28400b = str;
                if (file != null) {
                    this.f28401c = file;
                    return;
                }
                throw new NullPointerException("Null reportFile");
            }
            throw new NullPointerException("Null sessionId");
        }
        throw new NullPointerException("Null report");
    }

    @Override // q7.g0
    public t7.f0 b() {
        return this.f28399a;
    }

    @Override // q7.g0
    public File c() {
        return this.f28401c;
    }

    @Override // q7.g0
    public String d() {
        return this.f28400b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.f28399a.equals(g0Var.b()) && this.f28400b.equals(g0Var.d()) && this.f28401c.equals(g0Var.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f28399a.hashCode() ^ 1000003) * 1000003) ^ this.f28400b.hashCode()) * 1000003) ^ this.f28401c.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f28399a + ", sessionId=" + this.f28400b + ", reportFile=" + this.f28401c + "}";
    }
}
