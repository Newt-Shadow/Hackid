package a0;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class k {

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f43a;

        /* renamed from: b  reason: collision with root package name */
        private final int f44b;

        /* renamed from: c  reason: collision with root package name */
        private final int f45c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f46d;

        /* renamed from: e  reason: collision with root package name */
        private final int f47e;

        public b(Uri uri, int i10, int i11, boolean z10, int i12) {
            this.f43a = (Uri) c0.f.g(uri);
            this.f44b = i10;
            this.f45c = i11;
            this.f46d = z10;
            this.f47e = i12;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static b a(Uri uri, int i10, int i11, boolean z10, int i12) {
            return new b(uri, i10, i11, z10, i12);
        }

        public int b() {
            return this.f47e;
        }

        public int c() {
            return this.f44b;
        }

        public Uri d() {
            return this.f43a;
        }

        public int e() {
            return this.f45c;
        }

        public boolean f() {
            return this.f46d;
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        public abstract void a(int i10);

        public abstract void b(Typeface typeface);
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b[] bVarArr) {
        return v.g.b(context, cancellationSignal, bVarArr, 0);
    }

    public static a b(Context context, CancellationSignal cancellationSignal, e eVar) {
        List a10;
        a10 = v.f.a(new Object[]{eVar});
        return d.e(context, a10, cancellationSignal);
    }

    public static Typeface c(Context context, List list, int i10, boolean z10, int i11, Handler handler, c cVar) {
        a0.a aVar = new a0.a(cVar, l.b(handler));
        if (z10) {
            if (list.size() <= 1) {
                return i.e(context, (e) list.get(0), aVar, i10, i11);
            }
            throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
        }
        return i.d(context, list, i10, null, aVar);
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f41a;

        /* renamed from: b  reason: collision with root package name */
        private final List f42b;

        public a(int i10, b[] bVarArr) {
            this.f41a = i10;
            this.f42b = Collections.singletonList(bVarArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a a(int i10, List list) {
            return new a(i10, list);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a b(int i10, b[] bVarArr) {
            return new a(i10, bVarArr);
        }

        public b[] c() {
            return (b[]) this.f42b.get(0);
        }

        public List d() {
            return this.f42b;
        }

        public int e() {
            return this.f41a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean f() {
            if (this.f42b.size() > 1) {
                return true;
            }
            return false;
        }

        a(int i10, List list) {
            this.f41a = i10;
            this.f42b = list;
        }
    }
}
