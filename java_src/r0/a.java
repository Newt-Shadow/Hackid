package r0;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final b f28843a;

    /* renamed from: b  reason: collision with root package name */
    private int f28844b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private int f28845c = 0;

    /* renamed from: r0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0296a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final EditText f28846a;

        /* renamed from: b  reason: collision with root package name */
        private final g f28847b;

        C0296a(EditText editText, boolean z10) {
            this.f28846a = editText;
            g gVar = new g(editText, z10);
            this.f28847b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(r0.b.getInstance());
        }

        @Override // r0.a.b
        KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            if (keyListener instanceof NumberKeyListener) {
                return keyListener;
            }
            return new e(keyListener);
        }

        @Override // r0.a.b
        InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
            if (inputConnection instanceof c) {
                return inputConnection;
            }
            return new c(this.f28846a, inputConnection, editorInfo);
        }

        @Override // r0.a.b
        void c(boolean z10) {
            this.f28847b.c(z10);
        }
    }

    /* loaded from: classes.dex */
    static class b {
        b() {
        }

        abstract KeyListener a(KeyListener keyListener);

        abstract InputConnection b(InputConnection inputConnection, EditorInfo editorInfo);

        abstract void c(boolean z10);
    }

    public a(EditText editText, boolean z10) {
        c0.f.h(editText, "editText cannot be null");
        this.f28843a = new C0296a(editText, z10);
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f28843a.a(keyListener);
    }

    public InputConnection b(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f28843a.b(inputConnection, editorInfo);
    }

    public void c(boolean z10) {
        this.f28843a.c(z10);
    }
}
