package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import java.nio.ByteBuffer;
import z.n;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final q0.b f2476a;

    /* renamed from: b  reason: collision with root package name */
    private final char[] f2477b;

    /* renamed from: c  reason: collision with root package name */
    private final a f2478c = new a(1024);

    /* renamed from: d  reason: collision with root package name */
    private final Typeface f2479d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final SparseArray f2480a;

        /* renamed from: b  reason: collision with root package name */
        private g f2481b;

        private a() {
            this(1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(int i10) {
            SparseArray sparseArray = this.f2480a;
            if (sparseArray == null) {
                return null;
            }
            return (a) sparseArray.get(i10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final g b() {
            return this.f2481b;
        }

        void c(g gVar, int i10, int i11) {
            a a10 = a(gVar.b(i10));
            if (a10 == null) {
                a10 = new a();
                this.f2480a.put(gVar.b(i10), a10);
            }
            if (i11 > i10) {
                a10.c(gVar, i10 + 1, i11);
            } else {
                a10.f2481b = gVar;
            }
        }

        a(int i10) {
            this.f2480a = new SparseArray(i10);
        }
    }

    private l(Typeface typeface, q0.b bVar) {
        this.f2479d = typeface;
        this.f2476a = bVar;
        this.f2477b = new char[bVar.k() * 2];
        a(bVar);
    }

    private void a(q0.b bVar) {
        int k10 = bVar.k();
        for (int i10 = 0; i10 < k10; i10++) {
            g gVar = new g(this, i10);
            Character.toChars(gVar.f(), this.f2477b, i10 * 2);
            h(gVar);
        }
    }

    public static l b(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            n.a("EmojiCompat.MetadataRepo.create");
            return new l(typeface, k.b(byteBuffer));
        } finally {
            n.b();
        }
    }

    public char[] c() {
        return this.f2477b;
    }

    public q0.b d() {
        return this.f2476a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f2476a.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a f() {
        return this.f2478c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Typeface g() {
        return this.f2479d;
    }

    void h(g gVar) {
        boolean z10;
        c0.f.h(gVar, "emoji metadata cannot be null");
        if (gVar.c() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        c0.f.a(z10, "invalid metadata codepoint length");
        this.f2478c.c(gVar, 0, gVar.c() - 1);
    }
}
