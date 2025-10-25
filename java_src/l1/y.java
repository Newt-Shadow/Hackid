package l1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* loaded from: classes.dex */
class y implements z {

    /* renamed from: a  reason: collision with root package name */
    private final ViewOverlay f25170a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(View view) {
        this.f25170a = view.getOverlay();
    }

    @Override // l1.z
    public void a(Drawable drawable) {
        this.f25170a.add(drawable);
    }

    @Override // l1.z
    public void b(Drawable drawable) {
        this.f25170a.remove(drawable);
    }
}
