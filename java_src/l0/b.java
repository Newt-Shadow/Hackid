package l0;

import af.k;
import af.s0;
import j0.c0;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class b implements c0 {

    /* renamed from: a  reason: collision with root package name */
    private final k f24990a;

    /* renamed from: b  reason: collision with root package name */
    private final s0 f24991b;

    /* renamed from: c  reason: collision with root package name */
    private final c f24992c;

    /* renamed from: d  reason: collision with root package name */
    private final l0.a f24993d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24994a;

        /* renamed from: b  reason: collision with root package name */
        Object f24995b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f24996c;

        /* renamed from: e  reason: collision with root package name */
        int f24998e;

        a(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24996c = obj;
            this.f24998e |= Integer.MIN_VALUE;
            return b.j(b.this, this);
        }
    }

    public b(k fileSystem, s0 path, c serializer) {
        m.e(fileSystem, "fileSystem");
        m.e(path, "path");
        m.e(serializer, "serializer");
        this.f24990a = fileSystem;
        this.f24991b = path;
        this.f24992c = serializer;
        this.f24993d = new l0.a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0090 A[Catch: FileNotFoundException -> 0x008a, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:39:0x0081), top: B:88:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0094 A[Catch: FileNotFoundException -> 0x008a, TRY_LEAVE, TryCatch #8 {FileNotFoundException -> 0x008a, blocks: (B:46:0x0090, B:47:0x0094, B:39:0x0081), top: B:88:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object j(l0.b r7, ad.e r8) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l0.b.j(l0.b, ad.e):java.lang.Object");
    }

    @Override // j0.c
    public void close() {
        this.f24993d.b(true);
    }

    @Override // j0.c0
    public Object d(ad.e eVar) {
        return j(this, eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f() {
        if (!this.f24993d.a()) {
            return;
        }
        throw new IllegalStateException("This scope has already been closed.".toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final k g() {
        return this.f24990a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s0 h() {
        return this.f24991b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c i() {
        return this.f24992c;
    }
}
