package x4;

import b3.e3;
import com.arthenica.ffmpegkit.AbstractSession;
import java.io.FileNotFoundException;
import java.io.IOException;
import x4.d0;
import x4.e0;
/* loaded from: classes.dex */
public class v implements d0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f32474a;

    public v() {
        this(-1);
    }

    @Override // x4.d0
    public long a(d0.c cVar) {
        IOException iOException = cVar.f32295c;
        if (!(iOException instanceof e3) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof x) && !(iOException instanceof e0.h) && !k.a(iOException)) {
            return Math.min((cVar.f32296d - 1) * 1000, (int) AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
        }
        return -9223372036854775807L;
    }

    @Override // x4.d0
    public d0.b b(d0.a aVar, d0.c cVar) {
        if (!e(cVar.f32295c)) {
            return null;
        }
        if (aVar.a(1)) {
            return new d0.b(1, 300000L);
        }
        if (!aVar.a(2)) {
            return null;
        }
        return new d0.b(2, 60000L);
    }

    @Override // x4.d0
    public int d(int i10) {
        int i11 = this.f32474a;
        if (i11 == -1) {
            if (i10 == 7) {
                return 6;
            }
            return 3;
        }
        return i11;
    }

    protected boolean e(IOException iOException) {
        if (!(iOException instanceof a0)) {
            return false;
        }
        int i10 = ((a0) iOException).f32270d;
        if (i10 != 403 && i10 != 404 && i10 != 410 && i10 != 416 && i10 != 500 && i10 != 503) {
            return false;
        }
        return true;
    }

    public v(int i10) {
        this.f32474a = i10;
    }
}
