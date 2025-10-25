package b3;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import b3.r;
/* loaded from: classes.dex */
public class i3 extends Exception implements r {

    /* renamed from: c  reason: collision with root package name */
    private static final String f4093c = y4.q0.q0(0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f4094d = y4.q0.q0(1);

    /* renamed from: e  reason: collision with root package name */
    private static final String f4095e = y4.q0.q0(2);

    /* renamed from: f  reason: collision with root package name */
    private static final String f4096f = y4.q0.q0(3);

    /* renamed from: g  reason: collision with root package name */
    private static final String f4097g = y4.q0.q0(4);

    /* renamed from: h  reason: collision with root package name */
    public static final r.a f4098h = new r.a() { // from class: b3.h3
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            return new i3(bundle);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f4099a;

    /* renamed from: b  reason: collision with root package name */
    public final long f4100b;

    /* JADX INFO: Access modifiers changed from: protected */
    public i3(Bundle bundle) {
        this(bundle.getString(f4095e), c(bundle), bundle.getInt(f4093c, 1000), bundle.getLong(f4094d, SystemClock.elapsedRealtime()));
    }

    private static RemoteException a(String str) {
        return new RemoteException(str);
    }

    private static Throwable b(Class cls, String str) {
        return (Throwable) cls.getConstructor(String.class).newInstance(str);
    }

    private static Throwable c(Bundle bundle) {
        String string = bundle.getString(f4096f);
        String string2 = bundle.getString(f4097g);
        Throwable th = null;
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(string, true, i3.class.getClassLoader());
            if (Throwable.class.isAssignableFrom(cls)) {
                th = b(cls, string2);
            }
            if (th != null) {
                return th;
            }
        } catch (Throwable unused) {
        }
        return a(string2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i3(String str, Throwable th, int i10, long j10) {
        super(str, th);
        this.f4099a = i10;
        this.f4100b = j10;
    }
}
