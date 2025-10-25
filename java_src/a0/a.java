package a0;

import a0.i;
import a0.k;
import android.graphics.Typeface;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final k.c f5a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f6b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0001a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k.c f7a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Typeface f8b;

        RunnableC0001a(k.c cVar, Typeface typeface) {
            this.f7a = cVar;
            this.f8b = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7a.b(this.f8b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k.c f10a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f11b;

        b(k.c cVar, int i10) {
            this.f10a = cVar;
            this.f11b = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f10a.a(this.f11b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(k.c cVar, Executor executor) {
        this.f5a = cVar;
        this.f6b = executor;
    }

    private void a(int i10) {
        this.f6b.execute(new b(this.f5a, i10));
    }

    private void c(Typeface typeface) {
        this.f6b.execute(new RunnableC0001a(this.f5a, typeface));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(i.e eVar) {
        if (eVar.a()) {
            c(eVar.f39a);
        } else {
            a(eVar.f40b);
        }
    }
}
