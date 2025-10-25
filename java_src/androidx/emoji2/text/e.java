package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes.dex */
public class e {

    /* renamed from: n  reason: collision with root package name */
    private static final Object f2409n = new Object();

    /* renamed from: o  reason: collision with root package name */
    private static final Object f2410o = new Object();

    /* renamed from: p  reason: collision with root package name */
    private static volatile e f2411p;

    /* renamed from: b  reason: collision with root package name */
    private final Set f2413b;

    /* renamed from: e  reason: collision with root package name */
    private final b f2416e;

    /* renamed from: f  reason: collision with root package name */
    final g f2417f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f2418g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f2419h;

    /* renamed from: i  reason: collision with root package name */
    final int[] f2420i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f2421j;

    /* renamed from: k  reason: collision with root package name */
    private final int f2422k;

    /* renamed from: l  reason: collision with root package name */
    private final int f2423l;

    /* renamed from: m  reason: collision with root package name */
    private final d f2424m;

    /* renamed from: a  reason: collision with root package name */
    private final ReadWriteLock f2412a = new ReentrantReadWriteLock();

    /* renamed from: c  reason: collision with root package name */
    private volatile int f2414c = 3;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f2415d = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    private static final class a extends b {

        /* renamed from: b  reason: collision with root package name */
        private volatile androidx.emoji2.text.h f2425b;

        /* renamed from: c  reason: collision with root package name */
        private volatile l f2426c;

        /* renamed from: androidx.emoji2.text.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0037a extends h {
            C0037a() {
            }

            @Override // androidx.emoji2.text.e.h
            public void a(Throwable th) {
                a.this.f2428a.m(th);
            }

            @Override // androidx.emoji2.text.e.h
            public void b(l lVar) {
                a.this.d(lVar);
            }
        }

        a(e eVar) {
            super(eVar);
        }

        @Override // androidx.emoji2.text.e.b
        void a() {
            try {
                this.f2428a.f2417f.a(new C0037a());
            } catch (Throwable th) {
                this.f2428a.m(th);
            }
        }

        @Override // androidx.emoji2.text.e.b
        CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
            return this.f2425b.h(charSequence, i10, i11, i12, z10);
        }

        @Override // androidx.emoji2.text.e.b
        void c(EditorInfo editorInfo) {
            editorInfo.extras.putInt("android.support.text.emoji.emojiCompat_metadataVersion", this.f2426c.e());
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", this.f2428a.f2418g);
        }

        void d(l lVar) {
            if (lVar == null) {
                this.f2428a.m(new IllegalArgumentException("metadataRepo cannot be null"));
                return;
            }
            this.f2426c = lVar;
            l lVar2 = this.f2426c;
            i iVar = new i();
            d dVar = this.f2428a.f2424m;
            e eVar = this.f2428a;
            this.f2425b = new androidx.emoji2.text.h(lVar2, iVar, dVar, eVar.f2419h, eVar.f2420i);
            this.f2428a.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final e f2428a;

        b(e eVar) {
            this.f2428a = eVar;
        }

        abstract void a();

        abstract CharSequence b(CharSequence charSequence, int i10, int i11, int i12, boolean z10);

        abstract void c(EditorInfo editorInfo);
    }

    /* loaded from: classes.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final g f2429a;

        /* renamed from: b  reason: collision with root package name */
        boolean f2430b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2431c;

        /* renamed from: d  reason: collision with root package name */
        int[] f2432d;

        /* renamed from: e  reason: collision with root package name */
        Set f2433e;

        /* renamed from: f  reason: collision with root package name */
        boolean f2434f;

        /* renamed from: g  reason: collision with root package name */
        int f2435g = -16711936;

        /* renamed from: h  reason: collision with root package name */
        int f2436h = 0;

        /* renamed from: i  reason: collision with root package name */
        d f2437i = new androidx.emoji2.text.d();

        /* JADX INFO: Access modifiers changed from: protected */
        public c(g gVar) {
            c0.f.h(gVar, "metadataLoader cannot be null.");
            this.f2429a = gVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final g a() {
            return this.f2429a;
        }

        public c b(int i10) {
            this.f2436h = i10;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        boolean a(CharSequence charSequence, int i10, int i11, int i12);
    }

    /* renamed from: androidx.emoji2.text.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0038e {
        public void a(Throwable th) {
        }

        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final List f2438a;

        /* renamed from: b  reason: collision with root package name */
        private final Throwable f2439b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2440c;

        f(AbstractC0038e abstractC0038e, int i10) {
            this(Arrays.asList((AbstractC0038e) c0.f.h(abstractC0038e, "initCallback cannot be null")), i10, null);
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2438a.size();
            int i10 = 0;
            if (this.f2440c != 1) {
                while (i10 < size) {
                    ((AbstractC0038e) this.f2438a.get(i10)).a(this.f2439b);
                    i10++;
                }
                return;
            }
            while (i10 < size) {
                ((AbstractC0038e) this.f2438a.get(i10)).b();
                i10++;
            }
        }

        f(Collection collection, int i10) {
            this(collection, i10, null);
        }

        f(Collection collection, int i10, Throwable th) {
            c0.f.h(collection, "initCallbacks cannot be null");
            this.f2438a = new ArrayList(collection);
            this.f2440c = i10;
            this.f2439b = th;
        }
    }

    /* loaded from: classes.dex */
    public interface g {
        void a(h hVar);
    }

    /* loaded from: classes.dex */
    public static abstract class h {
        public abstract void a(Throwable th);

        public abstract void b(l lVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class i {
        i() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public p0.b a(androidx.emoji2.text.g gVar) {
            return new p0.d(gVar);
        }
    }

    private e(c cVar) {
        this.f2418g = cVar.f2430b;
        this.f2419h = cVar.f2431c;
        this.f2420i = cVar.f2432d;
        this.f2421j = cVar.f2434f;
        this.f2422k = cVar.f2435g;
        this.f2417f = cVar.f2429a;
        this.f2423l = cVar.f2436h;
        this.f2424m = cVar.f2437i;
        r.b bVar = new r.b();
        this.f2413b = bVar;
        Set set = cVar.f2433e;
        if (set != null && !set.isEmpty()) {
            bVar.addAll(cVar.f2433e);
        }
        this.f2416e = new a(this);
        l();
    }

    public static e b() {
        e eVar;
        boolean z10;
        synchronized (f2409n) {
            eVar = f2411p;
            if (eVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            c0.f.i(z10, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return eVar;
    }

    public static boolean e(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        return androidx.emoji2.text.h.c(inputConnection, editable, i10, i11, z10);
    }

    public static boolean f(Editable editable, int i10, KeyEvent keyEvent) {
        return androidx.emoji2.text.h.d(editable, i10, keyEvent);
    }

    public static e g(c cVar) {
        e eVar = f2411p;
        if (eVar == null) {
            synchronized (f2409n) {
                eVar = f2411p;
                if (eVar == null) {
                    eVar = new e(cVar);
                    f2411p = eVar;
                }
            }
        }
        return eVar;
    }

    public static boolean h() {
        if (f2411p != null) {
            return true;
        }
        return false;
    }

    private boolean j() {
        if (d() == 1) {
            return true;
        }
        return false;
    }

    private void l() {
        this.f2412a.writeLock().lock();
        try {
            if (this.f2423l == 0) {
                this.f2414c = 0;
            }
            this.f2412a.writeLock().unlock();
            if (d() == 0) {
                this.f2416e.a();
            }
        } catch (Throwable th) {
            this.f2412a.writeLock().unlock();
            throw th;
        }
    }

    public int c() {
        return this.f2422k;
    }

    public int d() {
        this.f2412a.readLock().lock();
        try {
            return this.f2414c;
        } finally {
            this.f2412a.readLock().unlock();
        }
    }

    public boolean i() {
        return this.f2421j;
    }

    public void k() {
        boolean z10 = true;
        if (this.f2423l != 1) {
            z10 = false;
        }
        c0.f.i(z10, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (j()) {
            return;
        }
        this.f2412a.writeLock().lock();
        try {
            if (this.f2414c == 0) {
                return;
            }
            this.f2414c = 0;
            this.f2412a.writeLock().unlock();
            this.f2416e.a();
        } finally {
            this.f2412a.writeLock().unlock();
        }
    }

    void m(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f2412a.writeLock().lock();
        try {
            this.f2414c = 2;
            arrayList.addAll(this.f2413b);
            this.f2413b.clear();
            this.f2412a.writeLock().unlock();
            this.f2415d.post(new f(arrayList, this.f2414c, th));
        } catch (Throwable th2) {
            this.f2412a.writeLock().unlock();
            throw th2;
        }
    }

    void n() {
        ArrayList arrayList = new ArrayList();
        this.f2412a.writeLock().lock();
        try {
            this.f2414c = 1;
            arrayList.addAll(this.f2413b);
            this.f2413b.clear();
            this.f2412a.writeLock().unlock();
            this.f2415d.post(new f(arrayList, this.f2414c));
        } catch (Throwable th) {
            this.f2412a.writeLock().unlock();
            throw th;
        }
    }

    public CharSequence o(CharSequence charSequence) {
        int length;
        if (charSequence == null) {
            length = 0;
        } else {
            length = charSequence.length();
        }
        return p(charSequence, 0, length);
    }

    public CharSequence p(CharSequence charSequence, int i10, int i11) {
        return q(charSequence, i10, i11, Integer.MAX_VALUE);
    }

    public CharSequence q(CharSequence charSequence, int i10, int i11, int i12) {
        return r(charSequence, i10, i11, i12, 0);
    }

    public CharSequence r(CharSequence charSequence, int i10, int i11, int i12, int i13) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        c0.f.i(j(), "Not initialized yet");
        c0.f.e(i10, "start cannot be negative");
        c0.f.e(i11, "end cannot be negative");
        c0.f.e(i12, "maxEmojiCount cannot be negative");
        boolean z14 = false;
        if (i10 <= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        c0.f.a(z10, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        if (i10 <= charSequence.length()) {
            z11 = true;
        } else {
            z11 = false;
        }
        c0.f.a(z11, "start should be < than charSequence length");
        if (i11 <= charSequence.length()) {
            z12 = true;
        } else {
            z12 = false;
        }
        c0.f.a(z12, "end should be < than charSequence length");
        if (charSequence.length() != 0 && i10 != i11) {
            if (i13 != 1) {
                if (i13 != 2) {
                    z14 = this.f2418g;
                }
                z13 = z14;
            } else {
                z13 = true;
            }
            return this.f2416e.b(charSequence, i10, i11, i12, z13);
        }
        return charSequence;
    }

    public void s(AbstractC0038e abstractC0038e) {
        c0.f.h(abstractC0038e, "initCallback cannot be null");
        this.f2412a.writeLock().lock();
        try {
            if (this.f2414c != 1 && this.f2414c != 2) {
                this.f2413b.add(abstractC0038e);
            }
            this.f2415d.post(new f(abstractC0038e, this.f2414c));
        } finally {
            this.f2412a.writeLock().unlock();
        }
    }

    public void t(AbstractC0038e abstractC0038e) {
        c0.f.h(abstractC0038e, "initCallback cannot be null");
        this.f2412a.writeLock().lock();
        try {
            this.f2413b.remove(abstractC0038e);
        } finally {
            this.f2412a.writeLock().unlock();
        }
    }

    public void u(EditorInfo editorInfo) {
        if (j() && editorInfo != null) {
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            this.f2416e.c(editorInfo);
        }
    }
}
