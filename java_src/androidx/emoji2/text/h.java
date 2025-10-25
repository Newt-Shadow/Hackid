package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.e;
import androidx.emoji2.text.l;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final e.i f2448a;

    /* renamed from: b  reason: collision with root package name */
    private final l f2449b;

    /* renamed from: c  reason: collision with root package name */
    private e.d f2450c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f2451d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f2452e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        static int a(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        if (z10) {
                            return -1;
                        }
                        return 0;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                    } else if (Character.isHighSurrogate(charAt)) {
                        return -1;
                    } else {
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        static int b(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                        i10++;
                    } else if (Character.isLowSurrogate(charAt)) {
                        return -1;
                    } else {
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private int f2453a = 1;

        /* renamed from: b  reason: collision with root package name */
        private final l.a f2454b;

        /* renamed from: c  reason: collision with root package name */
        private l.a f2455c;

        /* renamed from: d  reason: collision with root package name */
        private l.a f2456d;

        /* renamed from: e  reason: collision with root package name */
        private int f2457e;

        /* renamed from: f  reason: collision with root package name */
        private int f2458f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f2459g;

        /* renamed from: h  reason: collision with root package name */
        private final int[] f2460h;

        b(l.a aVar, boolean z10, int[] iArr) {
            this.f2454b = aVar;
            this.f2455c = aVar;
            this.f2459g = z10;
            this.f2460h = iArr;
        }

        private static boolean d(int i10) {
            return i10 == 65039;
        }

        private static boolean f(int i10) {
            return i10 == 65038;
        }

        private int g() {
            this.f2453a = 1;
            this.f2455c = this.f2454b;
            this.f2458f = 0;
            return 1;
        }

        private boolean h() {
            if (this.f2455c.b().j() || d(this.f2457e)) {
                return true;
            }
            if (this.f2459g) {
                if (this.f2460h == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.f2460h, this.f2455c.b().b(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        int a(int i10) {
            l.a a10 = this.f2455c.a(i10);
            int i11 = 2;
            if (this.f2453a != 2) {
                if (a10 == null) {
                    i11 = g();
                } else {
                    this.f2453a = 2;
                    this.f2455c = a10;
                    this.f2458f = 1;
                }
            } else if (a10 != null) {
                this.f2455c = a10;
                this.f2458f++;
            } else if (f(i10)) {
                i11 = g();
            } else if (!d(i10)) {
                if (this.f2455c.b() != null) {
                    i11 = 3;
                    if (this.f2458f == 1) {
                        if (h()) {
                            this.f2456d = this.f2455c;
                            g();
                        } else {
                            i11 = g();
                        }
                    } else {
                        this.f2456d = this.f2455c;
                        g();
                    }
                } else {
                    i11 = g();
                }
            }
            this.f2457e = i10;
            return i11;
        }

        g b() {
            return this.f2455c.b();
        }

        g c() {
            return this.f2456d.b();
        }

        boolean e() {
            if (this.f2453a == 2 && this.f2455c.b() != null && (this.f2458f > 1 || h())) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(l lVar, e.i iVar, e.d dVar, boolean z10, int[] iArr) {
        this.f2448a = iVar;
        this.f2449b = lVar;
        this.f2450c = dVar;
        this.f2451d = z10;
        this.f2452e = iArr;
    }

    private void a(Spannable spannable, g gVar, int i10, int i11) {
        spannable.setSpan(this.f2448a.a(gVar), i10, i11, 33);
    }

    private static boolean b(Editable editable, KeyEvent keyEvent, boolean z10) {
        p0.b[] bVarArr;
        if (g(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!f(selectionStart, selectionEnd) && (bVarArr = (p0.b[]) editable.getSpans(selectionStart, selectionEnd, p0.b.class)) != null && bVarArr.length > 0) {
            for (p0.b bVar : bVarArr) {
                int spanStart = editable.getSpanStart(bVar);
                int spanEnd = editable.getSpanEnd(bVar);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (f(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                max = a.a(editable, selectionStart, Math.max(i10, 0));
                min = a.b(editable, selectionEnd, Math.max(i11, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i10, 0);
                min = Math.min(selectionEnd + i11, editable.length());
            }
            p0.b[] bVarArr = (p0.b[]) editable.getSpans(max, min, p0.b.class);
            if (bVarArr != null && bVarArr.length > 0) {
                for (p0.b bVar : bVarArr) {
                    int spanStart = editable.getSpanStart(bVar);
                    int spanEnd = editable.getSpanEnd(bVar);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Editable editable, int i10, KeyEvent keyEvent) {
        boolean b10;
        if (i10 != 67) {
            if (i10 != 112) {
                b10 = false;
            } else {
                b10 = b(editable, keyEvent, true);
            }
        } else {
            b10 = b(editable, keyEvent, false);
        }
        if (!b10) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean e(CharSequence charSequence, int i10, int i11, g gVar) {
        if (gVar.d() == 0) {
            gVar.k(this.f2450c.a(charSequence, i10, i11, gVar.h()));
        }
        if (gVar.d() == 2) {
            return true;
        }
        return false;
    }

    private static boolean f(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    private static boolean g(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0122, code lost:
        ((p0.c) r11).d();
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0046 A[Catch: all -> 0x0129, TryCatch #0 {all -> 0x0129, blocks: (B:7:0x000e, B:10:0x0013, B:12:0x0017, B:14:0x0024, B:19:0x0037, B:21:0x003f, B:23:0x0042, B:25:0x0046, B:27:0x0052, B:28:0x0055, B:30:0x0062, B:36:0x0071, B:37:0x007d, B:41:0x0098, B:49:0x00a8, B:52:0x00b4, B:53:0x00be, B:54:0x00c8, B:56:0x00cf, B:57:0x00d4, B:59:0x00df, B:61:0x00e6, B:65:0x00f0, B:68:0x00fc, B:69:0x0102, B:71:0x010b, B:16:0x002c), top: B:85:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00fc A[Catch: all -> 0x0129, TryCatch #0 {all -> 0x0129, blocks: (B:7:0x000e, B:10:0x0013, B:12:0x0017, B:14:0x0024, B:19:0x0037, B:21:0x003f, B:23:0x0042, B:25:0x0046, B:27:0x0052, B:28:0x0055, B:30:0x0062, B:36:0x0071, B:37:0x007d, B:41:0x0098, B:49:0x00a8, B:52:0x00b4, B:53:0x00be, B:54:0x00c8, B:56:0x00cf, B:57:0x00d4, B:59:0x00df, B:61:0x00e6, B:65:0x00f0, B:68:0x00fc, B:69:0x0102, B:71:0x010b, B:16:0x002c), top: B:85:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x010b A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #0 {all -> 0x0129, blocks: (B:7:0x000e, B:10:0x0013, B:12:0x0017, B:14:0x0024, B:19:0x0037, B:21:0x003f, B:23:0x0042, B:25:0x0046, B:27:0x0052, B:28:0x0055, B:30:0x0062, B:36:0x0071, B:37:0x007d, B:41:0x0098, B:49:0x00a8, B:52:0x00b4, B:53:0x00be, B:54:0x00c8, B:56:0x00cf, B:57:0x00d4, B:59:0x00df, B:61:0x00e6, B:65:0x00f0, B:68:0x00fc, B:69:0x0102, B:71:0x010b, B:16:0x002c), top: B:85:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00d4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.CharSequence h(java.lang.CharSequence r11, int r12, int r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.h.h(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
    }
}
