package f0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.view.inputmethod.InputContentInfo;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final c f15591a;

    /* loaded from: classes.dex */
    private static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f15593a;

        /* renamed from: b  reason: collision with root package name */
        private final ClipDescription f15594b;

        /* renamed from: c  reason: collision with root package name */
        private final Uri f15595c;

        b(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f15593a = uri;
            this.f15594b = clipDescription;
            this.f15595c = uri2;
        }

        @Override // f0.f.c
        public Uri a() {
            return this.f15593a;
        }

        @Override // f0.f.c
        public void b() {
        }

        @Override // f0.f.c
        public Uri c() {
            return this.f15595c;
        }

        @Override // f0.f.c
        public Object d() {
            return null;
        }

        @Override // f0.f.c
        public ClipDescription getDescription() {
            return this.f15594b;
        }
    }

    /* loaded from: classes.dex */
    private interface c {
        Uri a();

        void b();

        Uri c();

        Object d();

        ClipDescription getDescription();
    }

    public f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        if (Build.VERSION.SDK_INT >= 25) {
            this.f15591a = new a(uri, clipDescription, uri2);
        } else {
            this.f15591a = new b(uri, clipDescription, uri2);
        }
    }

    public static f f(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 25) {
            return null;
        }
        return new f(new a(obj));
    }

    public Uri a() {
        return this.f15591a.a();
    }

    public ClipDescription b() {
        return this.f15591a.getDescription();
    }

    public Uri c() {
        return this.f15591a.c();
    }

    public void d() {
        this.f15591a.b();
    }

    public Object e() {
        return this.f15591a.d();
    }

    /* loaded from: classes.dex */
    private static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final InputContentInfo f15592a;

        a(Object obj) {
            this.f15592a = (InputContentInfo) obj;
        }

        @Override // f0.f.c
        public Uri a() {
            return this.f15592a.getContentUri();
        }

        @Override // f0.f.c
        public void b() {
            this.f15592a.requestPermission();
        }

        @Override // f0.f.c
        public Uri c() {
            return this.f15592a.getLinkUri();
        }

        @Override // f0.f.c
        public Object d() {
            return this.f15592a;
        }

        @Override // f0.f.c
        public ClipDescription getDescription() {
            return this.f15592a.getDescription();
        }

        a(Uri uri, ClipDescription clipDescription, Uri uri2) {
            this.f15592a = new InputContentInfo(uri, clipDescription, uri2);
        }
    }

    private f(c cVar) {
        this.f15591a = cVar;
    }
}
