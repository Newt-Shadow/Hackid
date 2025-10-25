package r0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
/* loaded from: classes.dex */
final class e implements KeyListener {

    /* renamed from: a  reason: collision with root package name */
    private final KeyListener f28857a;

    /* renamed from: b  reason: collision with root package name */
    private final a f28858b;

    /* loaded from: classes.dex */
    public static class a {
        public boolean a(Editable editable, int i10, KeyEvent keyEvent) {
            return androidx.emoji2.text.e.f(editable, i10, keyEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(KeyListener keyListener) {
        this(keyListener, new a());
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i10) {
        this.f28857a.clearMetaKeyState(view, editable, i10);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f28857a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i10, KeyEvent keyEvent) {
        if (!this.f28858b.a(editable, i10, keyEvent) && !this.f28857a.onKeyDown(view, editable, i10, keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f28857a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i10, KeyEvent keyEvent) {
        return this.f28857a.onKeyUp(view, editable, i10, keyEvent);
    }

    e(KeyListener keyListener, a aVar) {
        this.f28857a = keyListener;
        this.f28858b = aVar;
    }
}
