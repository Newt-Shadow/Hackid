package cb;

import android.net.Uri;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashMap;
import kotlin.jvm.internal.m;
import xc.k;
import yc.h0;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f5112a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5113b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f5114c;

    /* renamed from: d  reason: collision with root package name */
    private final long f5115d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f5116e;

    /* renamed from: cb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0092a {

        /* renamed from: a  reason: collision with root package name */
        private String f5117a;

        /* renamed from: b  reason: collision with root package name */
        private String f5118b;

        /* renamed from: c  reason: collision with root package name */
        private Uri f5119c;

        /* renamed from: d  reason: collision with root package name */
        private long f5120d;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f5121e;

        public final a a() {
            return new a(this.f5117a, this.f5118b, this.f5119c, this.f5120d, this.f5121e);
        }

        public final C0092a b(byte[] bytes) {
            m.e(bytes, "bytes");
            this.f5121e = bytes;
            return this;
        }

        public final C0092a c(String str) {
            this.f5118b = str;
            return this;
        }

        public final C0092a d(String str) {
            this.f5117a = str;
            return this;
        }

        public final C0092a e(long j10) {
            this.f5120d = j10;
            return this;
        }

        public final C0092a f(Uri uri) {
            this.f5119c = uri;
            return this;
        }
    }

    public a(String str, String str2, Uri uri, long j10, byte[] bArr) {
        this.f5112a = str;
        this.f5113b = str2;
        this.f5114c = uri;
        this.f5115d = j10;
        this.f5116e = bArr;
    }

    public final HashMap a() {
        HashMap g10;
        g10 = h0.g(new k("path", this.f5112a), new k(Constants.NAME, this.f5113b), new k("size", Long.valueOf(this.f5115d)), new k("bytes", this.f5116e), new k(io.flutter.plugins.firebase.crashlytics.Constants.IDENTIFIER, String.valueOf(this.f5114c)));
        return g10;
    }
}
