package h4;

import android.net.Uri;
import y4.o0;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final long f16805a;

    /* renamed from: b  reason: collision with root package name */
    public final long f16806b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16807c;

    /* renamed from: d  reason: collision with root package name */
    private int f16808d;

    public i(String str, long j10, long j11) {
        this.f16807c = str == null ? "" : str;
        this.f16805a = j10;
        this.f16806b = j11;
    }

    public i a(i iVar, String str) {
        String c10 = c(str);
        if (iVar != null && c10.equals(iVar.c(str))) {
            long j10 = this.f16806b;
            long j11 = -1;
            if (j10 != -1) {
                long j12 = this.f16805a;
                if (j12 + j10 == iVar.f16805a) {
                    long j13 = iVar.f16806b;
                    if (j13 != -1) {
                        j11 = j10 + j13;
                    }
                    return new i(c10, j12, j11);
                }
            }
            long j14 = iVar.f16806b;
            if (j14 != -1) {
                long j15 = iVar.f16805a;
                if (j15 + j14 == this.f16805a) {
                    if (j10 != -1) {
                        j11 = j14 + j10;
                    }
                    return new i(c10, j15, j11);
                }
            }
        }
        return null;
    }

    public Uri b(String str) {
        return o0.e(str, this.f16807c);
    }

    public String c(String str) {
        return o0.d(str, this.f16807c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f16805a == iVar.f16805a && this.f16806b == iVar.f16806b && this.f16807c.equals(iVar.f16807c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f16808d == 0) {
            this.f16808d = ((((527 + ((int) this.f16805a)) * 31) + ((int) this.f16806b)) * 31) + this.f16807c.hashCode();
        }
        return this.f16808d;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.f16807c + ", start=" + this.f16805a + ", length=" + this.f16806b + ")";
    }
}
