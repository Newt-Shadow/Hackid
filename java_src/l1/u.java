package l1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* loaded from: classes.dex */
class u implements v {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroupOverlay f25168a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(ViewGroup viewGroup) {
        this.f25168a = viewGroup.getOverlay();
    }

    @Override // l1.z
    public void a(Drawable drawable) {
        this.f25168a.add(drawable);
    }

    @Override // l1.z
    public void b(Drawable drawable) {
        this.f25168a.remove(drawable);
    }

    @Override // l1.v
    public void c(View view) {
        this.f25168a.add(view);
    }

    @Override // l1.v
    public void d(View view) {
        this.f25168a.remove(view);
    }
}
