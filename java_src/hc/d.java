package hc;

import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Window;
import gc.b;
import id.l;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.WeakHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import xc.h;
/* loaded from: classes2.dex */
public final class d extends hc.b {

    /* renamed from: d  reason: collision with root package name */
    private static final xc.d f17034d;

    /* renamed from: e  reason: collision with root package name */
    private static final xc.d f17035e;

    /* renamed from: f  reason: collision with root package name */
    private static final WeakHashMap f17036f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f17037g;

    /* renamed from: h  reason: collision with root package name */
    public static final c f17038h = new c(null);

    /* renamed from: b  reason: collision with root package name */
    private final hc.e f17039b;

    /* renamed from: c  reason: collision with root package name */
    private final Window.Callback f17040c;

    /* loaded from: classes2.dex */
    static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f17041e = new a();

        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Field invoke() {
            Class b10 = d.f17038h.b();
            if (b10 == null) {
                return null;
            }
            try {
                Field declaredField = b10.getDeclaredField("mWrapped");
                declaredField.setAccessible(true);
                return declaredField;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f17042e = new b();

        b() {
            super(0);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:89)
            	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:59)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:318)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @Override // id.a
        /* renamed from: b */
        public final java.lang.Class invoke() {
            /*
                r1 = this;
                java.lang.Class<androidx.appcompat.view.WindowCallbackWrapper> r0 = androidx.appcompat.view.WindowCallbackWrapper.class
                goto Lb
            L3:
                java.lang.String r0 = "android.support.v7.view.WindowCallbackWrapper"
                java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: java.lang.Throwable -> La
                goto Lb
            La:
                r0 = 0
            Lb:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: hc.d.b.invoke():java.lang.Class");
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Class b() {
            return (Class) d.f17034d.getValue();
        }

        public final hc.e c(Window listeners) {
            d dVar;
            hc.e eVar;
            m.e(listeners, "$this$listeners");
            synchronized (d.f17037g) {
                WeakReference weakReference = (WeakReference) d.f17036f.get(listeners);
                if (weakReference != null) {
                    dVar = (d) weakReference.get();
                } else {
                    dVar = null;
                }
                if (dVar != null) {
                    return dVar.f17039b;
                }
                Window.Callback callback = listeners.getCallback();
                if (callback == null) {
                    eVar = new hc.e();
                } else {
                    d dVar2 = new d(callback);
                    listeners.setCallback(dVar2);
                    d.f17036f.put(listeners, new WeakReference(dVar2));
                    eVar = dVar2.f17039b;
                }
                return eVar;
            }
        }
    }

    /* renamed from: hc.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0186d implements l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f17044b;

        C0186d(Iterator it) {
            this.f17044b = it;
        }

        @Override // id.l
        /* renamed from: a */
        public gc.b invoke(KeyEvent interceptedEvent) {
            m.e(interceptedEvent, "interceptedEvent");
            if (!this.f17044b.hasNext()) {
                return gc.b.f16394b.a(d.this.f17040c.dispatchKeyEvent(interceptedEvent));
            }
            android.support.v4.media.session.b.a(this.f17044b.next());
            throw null;
        }
    }

    /* loaded from: classes2.dex */
    public static final class e implements l {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f17046b;

        e(Iterator it) {
            this.f17046b = it;
        }

        @Override // id.l
        /* renamed from: a */
        public gc.b invoke(MotionEvent interceptedEvent) {
            m.e(interceptedEvent, "interceptedEvent");
            if (this.f17046b.hasNext()) {
                return ((gc.e) this.f17046b.next()).a(interceptedEvent, this);
            }
            return gc.b.f16394b.a(d.this.f17040c.dispatchTouchEvent(interceptedEvent));
        }
    }

    static {
        xc.d b10;
        xc.d b11;
        h hVar = h.f32713c;
        b10 = xc.f.b(hVar, b.f17042e);
        f17034d = b10;
        b11 = xc.f.b(hVar, a.f17041e);
        f17035e = b11;
        f17036f = new WeakHashMap();
        f17037g = new Object();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Window.Callback delegate) {
        super(delegate);
        m.e(delegate, "delegate");
        this.f17040c = delegate;
        this.f17039b = new hc.e();
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent != null) {
            Iterator it = this.f17039b.a().iterator();
            m.d(it, "listeners.keyEventInterceptors.iterator()");
            new C0186d(it);
            if (!it.hasNext()) {
                return gc.b.f16394b.a(this.f17040c.dispatchKeyEvent(keyEvent)) instanceof b.C0178b;
            }
            android.support.v4.media.session.b.a(it.next());
            throw null;
        }
        return this.f17040c.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        gc.b a10;
        if (motionEvent != null) {
            Iterator it = this.f17039b.d().iterator();
            m.d(it, "listeners.touchEventInterceptors.iterator()");
            e eVar = new e(it);
            if (it.hasNext()) {
                a10 = ((gc.e) it.next()).a(motionEvent, eVar);
            } else {
                a10 = gc.b.f16394b.a(this.f17040c.dispatchTouchEvent(motionEvent));
            }
            return a10 instanceof b.C0178b;
        }
        return this.f17040c.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        for (gc.c cVar : this.f17039b.b()) {
            cVar.onContentChanged();
        }
        this.f17040c.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        Iterator it = this.f17039b.c().iterator();
        if (!it.hasNext()) {
            this.f17040c.onWindowFocusChanged(z10);
        } else {
            android.support.v4.media.session.b.a(it.next());
            throw null;
        }
    }
}
